package com.admin.domain.notice;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QNotice is a Querydsl query type for Notice
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QNotice extends EntityPathBase<Notice> {

    private static final long serialVersionUID = -1596243728L;

    public static final QNotice notice = new QNotice("notice");

    public final com.admin.domain.QBaseTime _super = new com.admin.domain.QBaseTime(this);

    public final StringPath contents = createString("contents");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Long> modifyId = createNumber("modifyId", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> modifyTime = _super.modifyTime;

    public final NumberPath<Long> readCnt = createNumber("readCnt", Long.class);

    public final NumberPath<Long> registerId = createNumber("registerId", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> registerTime = _super.registerTime;

    public final StringPath title = createString("title");

    public final StringPath topYn = createString("topYn");

    public final StringPath type = createString("type");

    public final StringPath useYn = createString("useYn");

    public QNotice(String variable) {
        super(Notice.class, forVariable(variable));
    }

    public QNotice(Path<? extends Notice> path) {
        super(path.getType(), path.getMetadata());
    }

    public QNotice(PathMetadata metadata) {
        super(Notice.class, metadata);
    }

}

