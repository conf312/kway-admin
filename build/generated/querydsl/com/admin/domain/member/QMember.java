package com.admin.domain.member;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QMember is a Querydsl query type for Member
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QMember extends EntityPathBase<Member> {

    private static final long serialVersionUID = 299360944L;

    public static final QMember member = new QMember("member1");

    public final com.admin.domain.QBaseTime _super = new com.admin.domain.QBaseTime(this);

    public final StringPath email = createString("email");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath ip = createString("ip");

    public final StringPath isAccountNonLocked = createString("isAccountNonLocked");

    public final StringPath isCredentialsNonExpired = createString("isCredentialsNonExpired");

    public final StringPath isEnabled = createString("isEnabled");

    public final DateTimePath<java.time.LocalDateTime> lastLoginTime = createDateTime("lastLoginTime", java.time.LocalDateTime.class);

    public final NumberPath<Integer> loginFailCount = createNumber("loginFailCount", Integer.class);

    public final NumberPath<Long> modifyId = createNumber("modifyId", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> modifyTime = _super.modifyTime;

    public final StringPath name = createString("name");

    public final StringPath password = createString("password");

    public final StringPath phoneNumber = createString("phoneNumber");

    //inherited
    public final DateTimePath<java.time.LocalDateTime> registerTime = _super.registerTime;

    public final StringPath role = createString("role");

    public final StringPath statusMessage = createString("statusMessage");

    public QMember(String variable) {
        super(Member.class, forVariable(variable));
    }

    public QMember(Path<? extends Member> path) {
        super(path.getType(), path.getMetadata());
    }

    public QMember(PathMetadata metadata) {
        super(Member.class, metadata);
    }

}

