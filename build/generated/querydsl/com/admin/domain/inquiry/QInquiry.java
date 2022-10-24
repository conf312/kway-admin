package com.admin.domain.inquiry;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QInquiry is a Querydsl query type for Inquiry
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QInquiry extends EntityPathBase<Inquiry> {

    private static final long serialVersionUID = 968857122L;

    public static final QInquiry inquiry = new QInquiry("inquiry");

    public final com.admin.domain.QBaseTime _super = new com.admin.domain.QBaseTime(this);

    public final StringPath answer = createString("answer");

    public final NumberPath<Long> answerId = createNumber("answerId", Long.class);

    public final StringPath answerStatus = createString("answerStatus");

    public final DateTimePath<java.time.LocalDateTime> answerTime = createDateTime("answerTime", java.time.LocalDateTime.class);

    public final StringPath contents = createString("contents");

    public final StringPath deviceType = createString("deviceType");

    public final StringPath email = createString("email");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> modifyTime = _super.modifyTime;

    public final NumberPath<Long> registerId = createNumber("registerId", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> registerTime = _super.registerTime;

    public final StringPath title = createString("title");

    public final StringPath type = createString("type");

    public QInquiry(String variable) {
        super(Inquiry.class, forVariable(variable));
    }

    public QInquiry(Path<? extends Inquiry> path) {
        super(path.getType(), path.getMetadata());
    }

    public QInquiry(PathMetadata metadata) {
        super(Inquiry.class, metadata);
    }

}

