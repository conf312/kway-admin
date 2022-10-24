package com.admin.aspect;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Slf4j
@Aspect
@Component
public class LogAspect {
    @Around("execution(* com..service.*Service.save*(..))")
    public Object saveLogging(ProceedingJoinPoint pjp) throws Throwable {
        Object result = pjp.proceed();
        log.info("==> LogAspect saveLogging Root : {}", pjp.getSignature().getDeclaringTypeName());
        log.info("==> LogAspect saveLogging Method : {}", pjp.getSignature().getName());
        return result;
    }

    @Around("execution(* com..service.*Service.update*(..))")
    public Object updateLogging(ProceedingJoinPoint pjp) throws Throwable {
        Object result = pjp.proceed();
        log.info("==> LogAspect updateLogging Root : {}", pjp.getSignature().getDeclaringTypeName());
        log.info("==> LogAspect updateLogging Method : {}", pjp.getSignature().getName());
        return result;
    }
}
