CREATE TABLE "user"
(
    id                     VARCHAR(200) NOT NULL,
    created_by             VARCHAR(255) NOT NULL,
    created_date           TIMESTAMP WITHOUT TIME ZONE,
    last_modified_by       VARCHAR(255),
    last_modified_date     TIMESTAMP WITHOUT TIME ZONE,
    email                  VARCHAR(255) NOT NULL,
    phone_number           VARCHAR(255),
    username               VARCHAR(255),
    password_hash          VARCHAR(255),
    first_name             VARCHAR(255) NOT NULL,
    last_name              VARCHAR(255) NOT NULL,
    display_name           VARCHAR(255),
    date_of_birth          TIMESTAMP WITHOUT TIME ZONE,
    gender                 VARCHAR(255),
    avatar_url             VARCHAR(255),
    status                 VARCHAR(255) NOT NULL,
    user_type              VARCHAR(255) NOT NULL,
    email_verified         BOOLEAN      NOT NULL,
    phone_verified         BOOLEAN,
    email_verified_at      TIMESTAMP WITHOUT TIME ZONE,
    phone_verified_at      TIMESTAMP WITHOUT TIME ZONE,
    auth_provider          VARCHAR(255),
    provider_user_id       VARCHAR(255),
    last_login_at          TIMESTAMP WITHOUT TIME ZONE,
    last_password_reset_at TIMESTAMP WITHOUT TIME ZONE,
    deleted_at             TIMESTAMP WITHOUT TIME ZONE,
    CONSTRAINT pk_user PRIMARY KEY (id)
);

ALTER TABLE "user"
    ADD CONSTRAINT uc_user_email UNIQUE (email);

ALTER TABLE "user"
    ADD CONSTRAINT uc_user_phonenumber UNIQUE (phone_number);

ALTER TABLE "user"
    ADD CONSTRAINT uc_user_username UNIQUE (username);