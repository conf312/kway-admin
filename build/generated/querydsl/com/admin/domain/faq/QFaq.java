package com.admin.domain.faq;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QFaq is a Querydsl query type for Faq
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QFaq extends EntityPathBase<Faq> {

    private static final long serialVersionUID = -946380864L;

    public static final QFaq faq = new QFaq("faq");

    public final com.admin.domain.QBaseTime _super = new com.admin.domain.QBaseTime(this);

    public final StringPath contents = createString("contents");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Long> modifyId = createNumber("modifyId", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> modifyTime = _super.modifyTime;

    public final NumberPath<Long> registerId = createNumber("registerId", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> registerTime = _super.registerTime;

    public final StringPath title = createString("title");

    public final StringPath type = createString("type");

    public final StringPath useYn = createString("useYn");

    public QFaq(String variable) {
        super(Faq.class, forVariable(variable));
    }

    public QFaq(Path<? extends Faq> path) {
        super(path.getType(), path.getMetadata());
    }

    public QFaq(PathMetadata metadata) {
        super(Faq.class, metadata);
    }

}

