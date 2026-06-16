package com.portfolio.novastore.common.domain.vm;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;

import java.io.Serial;

@Getter
@Setter
@MappedSuperclass
public class UuidIdentifierVM extends AbstractAuditingVM {

    @Serial
    private static final long serialVersionUID = 1L;

    private String id;

}
