package com.admin.domain.attch.file;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QAttachFile is a Querydsl query type for AttachFile
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QAttachFile extends EntityPathBase<AttachFile> {

    private static final long serialVersionUID = 180679213L;

    public static final QAttachFile attachFile = new QAttachFile("attachFile");

    public final com.admin.domain.QBaseTime _super = new com.admin.domain.QBaseTime(this);

    public final StringPath fileExt = createString("fileExt");

    public final StringPath filePath = createString("filePath");

    public final NumberPath<Integer> fileSize = createNumber("fileSize", Integer.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    //inherited
    public final DateTimePath<java.time.LocalDateTime> modifyTime = _super.modifyTime;

    public final StringPath realFileName = createString("realFileName");

    //inherited
    public final DateTimePath<java.time.LocalDateTime> registerTime = _super.registerTime;

    public final StringPath saveFileName = createString("saveFileName");

    public final NumberPath<Long> targetId = createNumber("targetId", Long.class);

    public final StringPath targetTable = createString("targetTable");

    public final StringPath useYn = createString("useYn");

    public final StringPath webPath = createString("webPath");

    public QAttachFile(String variable) {
        super(AttachFile.class, forVariable(variable));
    }

    public QAttachFile(Path<? extends AttachFile> path) {
        super(path.getType(), path.getMetadata());
    }

    public QAttachFile(PathMetadata metadata) {
        super(AttachFile.class, metadata);
    }

}

