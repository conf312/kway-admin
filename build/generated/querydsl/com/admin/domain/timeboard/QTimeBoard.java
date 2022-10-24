package com.admin.domain.timeboard;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QTimeBoard is a Querydsl query type for TimeBoard
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QTimeBoard extends EntityPathBase<TimeBoard> {

    private static final long serialVersionUID = 1877993766L;

    public static final QTimeBoard timeBoard = new QTimeBoard("timeBoard");

    public final com.admin.domain.QBaseTime _super = new com.admin.domain.QBaseTime(this);

    public final StringPath alwaysYn = createString("alwaysYn");

    public final StringPath contents = createString("contents");

    public final StringPath endDate = createString("endDate");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Long> modifyId = createNumber("modifyId", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> modifyTime = _super.modifyTime;

    public final NumberPath<Long> registerId = createNumber("registerId", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> registerTime = _super.registerTime;

    public final StringPath startDate = createString("startDate");

    public final StringPath title = createString("title");

    public final StringPath useYn = createString("useYn");

    public QTimeBoard(String variable) {
        super(TimeBoard.class, forVariable(variable));
    }

    public QTimeBoard(Path<? extends TimeBoard> path) {
        super(path.getType(), path.getMetadata());
    }

    public QTimeBoard(PathMetadata metadata) {
        super(TimeBoard.class, metadata);
    }

}

