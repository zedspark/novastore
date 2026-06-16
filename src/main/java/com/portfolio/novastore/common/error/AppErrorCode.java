package com.portfolio.novastore.common.error;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum AppErrorCode {
    SECURITY_USER_NOT_FOUND("SECURITY_USER_NOT_FOUND", ConstantsMessage.SECURITY_USER_NOT_FOUND),
    // ...
    ;

    private final String code;
    private final String message;
}
