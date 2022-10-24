package com.admin.domain.message;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QMessageReply is a Querydsl query type for MessageReply
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QMessageReply extends EntityPathBase<MessageReply> {

    private static final long serialVersionUID = -200854168L;

    public static final QMessageReply messageReply = new QMessageReply("messageReply");

    public final com.admin.domain.QBaseTime _super = new com.admin.domain.QBaseTime(this);

    public final StringPath contents = createString("contents");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Long> messageId = createNumber("messageId", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> modifyTime = _super.modifyTime;

    public final NumberPath<Long> registerId = createNumber("registerId", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> registerTime = _super.registerTime;

    public final StringPath useYn = createString("useYn");

    public QMessageReply(String variable) {
        super(MessageReply.class, forVariable(variable));
    }

    public QMessageReply(Path<? extends MessageReply> path) {
        super(path.getType(), path.getMetadata());
    }

    public QMessageReply(PathMetadata metadata) {
        super(MessageReply.class, metadata);
    }

}

