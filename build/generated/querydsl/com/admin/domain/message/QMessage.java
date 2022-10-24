package com.admin.domain.message;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QMessage is a Querydsl query type for Message
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QMessage extends EntityPathBase<Message> {

    private static final long serialVersionUID = -2034875742L;

    public static final QMessage message = new QMessage("message");

    public final com.admin.domain.QBaseTime _super = new com.admin.domain.QBaseTime(this);

    public final StringPath contents = createString("contents");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> modifyTime = _super.modifyTime;

    public final StringPath readYn = createString("readYn");

    public final NumberPath<Long> registerId = createNumber("registerId", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> registerTime = _super.registerTime;

    public final NumberPath<Long> toMemberId = createNumber("toMemberId", Long.class);

    public final StringPath useYn = createString("useYn");

    public QMessage(String variable) {
        super(Message.class, forVariable(variable));
    }

    public QMessage(Path<? extends Message> path) {
        super(path.getType(), path.getMetadata());
    }

    public QMessage(PathMetadata metadata) {
        super(Message.class, metadata);
    }

}

