CREATE TABLE user_roles
(
    id      INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    user_id VARCHAR(36) NOT NULL,
    role_id VARCHAR(36) NOT NULL,

    CONSTRAINT user_roles_user_id_fk FOREIGN KEY (user_id) REFERENCES users (id),
    CONSTRAINT user_roles_role_id_fk FOREIGN KEY (role_id) REFERENCES roles (id),
    CONSTRAINT user_roles_constraint_unique_key UNIQUE (id, role_id, user_id)
);