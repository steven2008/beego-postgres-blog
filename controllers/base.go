package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/validation"
	"github.com/astaxie/beego/context"
	validation2 "beego-postgres-blog/validation"
	"fmt"
)

type BaseController struct {
	beego.Controller
}


func (c *BaseController) RequestValidate(valid validation.Validation) (int,string) {
	code,message := 4000000000,"系统内部错误"
	for _, err := range valid.Errors {
		code,message = validation2.CustomErrCodeAndMessage("Cate",err.Field, err.Name)
		fmt.Println(code,message)
		return code,message
	}
	return code,message
}

func (c *BaseController) MyReminder(t string,msg string) {
	flash := beego.NewFlash()
	if msg == "" {
		msg = "系统内部错误,请检查后再试"
	}
	if t == "error" {
		flash.Error(msg)
	} else if t == "success" {
		flash.Success(msg)
	} else if t == "notice" {
		flash.Notice(msg)
	} else {
		flash.Warning(msg)
	}
	flash.Store(&c.Controller)
}

func (c *BaseController) Context() *context.Context {
	return c.Ctx
}