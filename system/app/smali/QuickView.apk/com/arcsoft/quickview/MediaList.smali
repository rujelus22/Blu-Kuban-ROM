.class public Lcom/arcsoft/quickview/MediaList;
.super Ljava/lang/Object;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/quickview/MediaList$MediaItem;,
        Lcom/arcsoft/quickview/MediaList$NotifyCode;,
        Lcom/arcsoft/quickview/MediaList$OnMediaListListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_IMAGE_SORT_ORDER:Ljava/lang/String; = "date_modified DESC"

.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "coalesce(date_modified , datetaken) DESC"

.field private static final MEDIA_DATA_TAKEN:I = 0x4

.field private static final MEDIA_ID_INDEX:I = 0x0

.field private static final MEDIA_MIME_TYPE_INDEX:I = 0x3

.field private static final MEDIA_PATH_INDEX:I = 0x1

.field private static final MEDIA_TITLE_INDEX:I = 0x2

.field private static final PROJECTION_IMAGES:[Ljava/lang/String;

.field private static final PROJECTION_VIDEOS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrent:I

.field private mIsSNS:Z

.field private mIsVideo:Z

.field private mLastCurrent:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/arcsoft/quickview/MediaList$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/arcsoft/quickview/MediaList$OnMediaListListener;

.field private mNeedRecreate:Z

.field private mbDataReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    const-string v0, "MediaList:"

    sput-object v0, Lcom/arcsoft/quickview/MediaList;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    sput-object v0, Lcom/arcsoft/quickview/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    sput-object v0, Lcom/arcsoft/quickview/MediaList;->PROJECTION_VIDEOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/arcsoft/quickview/MediaList$OnMediaListListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    .line 79
    iput v1, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    .line 80
    iput v1, p0, Lcom/arcsoft/quickview/MediaList;->mLastCurrent:I

    .line 81
    iput-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mIsVideo:Z

    .line 82
    iput-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mIsSNS:Z

    .line 83
    iput-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mNeedRecreate:Z

    .line 85
    iput-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mbDataReady:Z

    .line 60
    iput-object p1, p0, Lcom/arcsoft/quickview/MediaList;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/arcsoft/quickview/MediaList;->mListener:Lcom/arcsoft/quickview/MediaList$OnMediaListListener;

    .line 63
    iput-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mIsSNS:Z

    .line 65
    invoke-direct {p0}, Lcom/arcsoft/quickview/MediaList;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/arcsoft/quickview/MediaList$OnMediaListListener;)V
    .registers 6
    .parameter "context"
    .parameter "bIsSNS"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    .line 79
    iput v1, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    .line 80
    iput v1, p0, Lcom/arcsoft/quickview/MediaList;->mLastCurrent:I

    .line 81
    iput-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mIsVideo:Z

    .line 82
    iput-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mIsSNS:Z

    .line 83
    iput-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mNeedRecreate:Z

    .line 85
    iput-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mbDataReady:Z

    .line 69
    iput-object p1, p0, Lcom/arcsoft/quickview/MediaList;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/arcsoft/quickview/MediaList;->mListener:Lcom/arcsoft/quickview/MediaList$OnMediaListListener;

    .line 72
    iput-boolean p2, p0, Lcom/arcsoft/quickview/MediaList;->mIsSNS:Z

    .line 74
    invoke-direct {p0}, Lcom/arcsoft/quickview/MediaList;->init()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/arcsoft/quickview/MediaList;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/arcsoft/quickview/MediaList;->buildList()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/arcsoft/quickview/MediaList;)Lcom/arcsoft/quickview/MediaList$OnMediaListListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mListener:Lcom/arcsoft/quickview/MediaList$OnMediaListListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/arcsoft/quickview/MediaList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildList()Ljava/lang/Boolean;
    .registers 16

    .prologue
    .line 310
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mbDataReady:Z

    .line 312
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 314
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 316
    .local v3, where:Ljava/lang/String;
    const/4 v11, 0x0

    .line 318
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .local v14, listAdded:I
    :goto_c
    const/4 v1, 0x2

    if-ge v14, v1, :cond_f8

    .line 320
    iget-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mIsSNS:Z

    if-eqz v1, :cond_42

    if-nez v11, :cond_42

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%ShareShot/%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/arcsoft/quickview/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "coalesce(date_modified , datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 345
    :cond_3d
    :goto_3d
    if-nez v11, :cond_ce

    .line 318
    :cond_3f
    :goto_3f
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 326
    :cond_42
    if-nez v14, :cond_8c

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%DCIM/Camera/%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND (mime_type in (?, ?))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video/mp4"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "video/3gpp"

    aput-object v2, v4, v1

    .line 333
    .local v4, acceptableVidFormat:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/arcsoft/quickview/MediaList;->PROJECTION_VIDEOS:[Ljava/lang/String;

    const-string v5, "coalesce(date_modified , datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 336
    goto :goto_3d

    .line 337
    .end local v4           #acceptableVidFormat:[Ljava/lang/String;
    :cond_8c
    const/4 v1, 0x1

    if-ne v14, v1, :cond_3d

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%DCIM/Camera/%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND mime_type=\'image/jpeg\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/arcsoft/quickview/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "coalesce(date_modified , datetaken) DESC"

    move-object v5, v0

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto/16 :goto_3d

    .line 347
    :cond_ce
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_d9

    .line 348
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3f

    .line 352
    :cond_d9
    const/4 v1, -0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->move(I)Z

    .line 354
    const/4 v12, 0x0

    .local v12, i:I
    :goto_de
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 355
    new-instance v13, Lcom/arcsoft/quickview/MediaList$MediaItem;

    invoke-direct {v13, p0, v11}, Lcom/arcsoft/quickview/MediaList$MediaItem;-><init>(Lcom/arcsoft/quickview/MediaList;Landroid/database/Cursor;)V

    .line 356
    .local v13, item:Lcom/arcsoft/quickview/MediaList$MediaItem;
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v12, v12, 0x1

    goto :goto_de

    .line 359
    .end local v13           #item:Lcom/arcsoft/quickview/MediaList$MediaItem;
    :cond_f1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 360
    iget-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mIsSNS:Z

    if-eqz v1, :cond_3f

    .line 364
    .end local v12           #i:I
    :cond_f8
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_106

    .line 365
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 388
    :goto_105
    return-object v1

    .line 367
    :cond_106
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/arcsoft/quickview/MediaList$2;

    invoke-direct {v2, p0}, Lcom/arcsoft/quickview/MediaList$2;-><init>(Lcom/arcsoft/quickview/MediaList;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 382
    iget v1, p0, Lcom/arcsoft/quickview/MediaList;->mLastCurrent:I

    if-lez v1, :cond_125

    .line 383
    iget v1, p0, Lcom/arcsoft/quickview/MediaList;->mLastCurrent:I

    iget-object v2, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_12e

    iget v1, p0, Lcom/arcsoft/quickview/MediaList;->mLastCurrent:I

    :goto_120
    iput v1, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    .line 384
    const/4 v1, 0x0

    iput v1, p0, Lcom/arcsoft/quickview/MediaList;->mLastCurrent:I

    .line 387
    :cond_125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mbDataReady:Z

    .line 388
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_105

    .line 383
    :cond_12e
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_120
.end method

.method private init()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 303
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_c
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mListener:Lcom/arcsoft/quickview/MediaList$OnMediaListListener;

    if-nez v0, :cond_18

    .line 306
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Media list listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_18
    return-void
.end method

.method private isValid(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 392
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public create(Z)Z
    .registers 5
    .parameter "bVideo"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/arcsoft/quickview/MediaList;->destroy()V

    .line 90
    iput-boolean p1, p0, Lcom/arcsoft/quickview/MediaList;->mIsVideo:Z

    .line 91
    iput v0, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    .line 93
    iput-boolean v0, p0, Lcom/arcsoft/quickview/MediaList;->mbDataReady:Z

    .line 96
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_19

    .line 141
    :goto_18
    return v0

    .line 102
    :cond_19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    .line 103
    new-instance v1, Lcom/arcsoft/quickview/MediaList$1;

    invoke-direct {v1, p0}, Lcom/arcsoft/quickview/MediaList$1;-><init>(Lcom/arcsoft/quickview/MediaList;)V

    iput-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    .line 137
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    iput-boolean v0, p0, Lcom/arcsoft/quickview/MediaList;->mNeedRecreate:Z

    .line 141
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public delete(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/arcsoft/quickview/MediaList;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 280
    :cond_6
    :goto_6
    return-void

    .line 276
    :cond_7
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 278
    iget v0, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 279
    iget v0, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    goto :goto_6
.end method

.method public deleteCurrent()V
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/quickview/MediaList;->delete(I)V

    .line 295
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_14

    .line 147
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 149
    :cond_14
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 150
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    :cond_1d
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrent()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    return v0
.end method

.method public getCurrentMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/quickview/MediaList;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget v0, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/quickview/MediaList;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    invoke-virtual {p0, v0}, Lcom/arcsoft/quickview/MediaList;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getID(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/arcsoft/quickview/MediaList;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/quickview/MediaList$MediaItem;

    #getter for: Lcom/arcsoft/quickview/MediaList$MediaItem;->id:J
    invoke-static {v0}, Lcom/arcsoft/quickview/MediaList$MediaItem;->access$300(Lcom/arcsoft/quickview/MediaList$MediaItem;)J

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    const-wide/16 v0, -0x1

    goto :goto_12
.end method

.method public getMimeType(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/arcsoft/quickview/MediaList;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/quickview/MediaList$MediaItem;

    iget-object v0, v0, Lcom/arcsoft/quickview/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getPath(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/arcsoft/quickview/MediaList;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/quickview/MediaList$MediaItem;

    iget-object v0, v0, Lcom/arcsoft/quickview/MediaList$MediaItem;->path:Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getTitle(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/arcsoft/quickview/MediaList;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/quickview/MediaList$MediaItem;

    iget-object v0, v0, Lcom/arcsoft/quickview/MediaList$MediaItem;->title:Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getType(I)I
    .registers 5
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1}, Lcom/arcsoft/quickview/MediaList;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 203
    :goto_7
    return v1

    :cond_8
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/quickview/MediaList$MediaItem;

    iget-object v0, v0, Lcom/arcsoft/quickview/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_1b
    move v1, v0

    goto :goto_7

    :cond_1d
    move v0, v1

    goto :goto_1b
.end method

.method public getUri(I)Landroid/net/Uri;
    .registers 5
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 215
    invoke-direct {p0, p1}, Lcom/arcsoft/quickview/MediaList;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/quickview/MediaList$MediaItem;

    invoke-virtual {p0, p1}, Lcom/arcsoft/quickview/MediaList;->getType(I)I

    move-result v2

    if-ne v2, v1, :cond_1a

    :goto_15
    invoke-virtual {v0, v1}, Lcom/arcsoft/quickview/MediaList$MediaItem;->getUri(Z)Landroid/net/Uri;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const/4 v1, 0x0

    goto :goto_15

    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isCurrentVideo()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 269
    iget v1, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    invoke-virtual {p0, v1}, Lcom/arcsoft/quickview/MediaList;->getType(I)I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDataReady()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/arcsoft/quickview/MediaList;->mbDataReady:Z

    return v0
.end method

.method public pause()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 165
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_18

    .line 167
    iput-boolean v2, p0, Lcom/arcsoft/quickview/MediaList;->mNeedRecreate:Z

    .line 168
    iget-object v0, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    .line 170
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public refresh(Z)Z
    .registers 3
    .parameter "isKeepCurrentIndex"

    .prologue
    .line 154
    if-eqz p1, :cond_6

    .line 155
    iget v0, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    iput v0, p0, Lcom/arcsoft/quickview/MediaList;->mLastCurrent:I

    .line 158
    :cond_6
    iget-boolean v0, p0, Lcom/arcsoft/quickview/MediaList;->mIsVideo:Z

    invoke-virtual {p0, v0}, Lcom/arcsoft/quickview/MediaList;->create(Z)Z

    move-result v0

    return v0
.end method

.method public rename(ILjava/lang/String;)V
    .registers 6
    .parameter "index"
    .parameter "destPath"

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/arcsoft/quickview/MediaList;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 291
    :goto_6
    return-void

    .line 286
    :cond_7
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/quickview/MediaList$MediaItem;

    .line 287
    .local v0, mi:Lcom/arcsoft/quickview/MediaList$MediaItem;
    iput-object p2, v0, Lcom/arcsoft/quickview/MediaList$MediaItem;->path:Ljava/lang/String;

    .line 288
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/quickview/MediaList$MediaItem;->title:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6
.end method

.method public resume()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 177
    iget-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mNeedRecreate:Z

    if-eqz v1, :cond_8

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    .line 181
    :cond_8
    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/arcsoft/quickview/MediaList;->mCreateTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_17

    .line 189
    :cond_16
    :goto_16
    return v0

    .line 186
    :cond_17
    iget-boolean v1, p0, Lcom/arcsoft/quickview/MediaList;->mNeedRecreate:Z

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lcom/arcsoft/quickview/MediaList;->getCount()I

    move-result v1

    if-gtz v1, :cond_16

    .line 187
    :cond_21
    iget-boolean v0, p0, Lcom/arcsoft/quickview/MediaList;->mIsVideo:Z

    invoke-virtual {p0, v0}, Lcom/arcsoft/quickview/MediaList;->create(Z)Z

    move-result v0

    goto :goto_16
.end method

.method public setCurrent(I)V
    .registers 2
    .parameter "current"

    .prologue
    .line 239
    iput p1, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    .line 240
    return-void
.end method

.method public setCurrent(Landroid/net/Uri;)V
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    .line 244
    iget-object v2, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 245
    .local v0, count:I
    const/4 v1, 0x0

    .line 247
    .local v1, index:I
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/mnt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 249
    :goto_14
    if-ge v1, v0, :cond_2a

    .line 250
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/quickview/MediaList$MediaItem;

    iget-object v2, v2, Lcom/arcsoft/quickview/MediaList$MediaItem;->path:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 261
    :cond_2a
    :goto_2a
    invoke-direct {p0, v1}, Lcom/arcsoft/quickview/MediaList;->isValid(I)Z

    move-result v2

    if-nez v2, :cond_54

    .line 265
    :goto_30
    return-void

    .line 249
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 254
    :cond_34
    add-int/lit8 v1, v1, 0x1

    :cond_36
    if-ge v1, v0, :cond_2a

    .line 255
    iget-object v2, p0, Lcom/arcsoft/quickview/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/quickview/MediaList$MediaItem;

    invoke-virtual {p0, v1}, Lcom/arcsoft/quickview/MediaList;->getType(I)I

    move-result v3

    if-ne v3, v4, :cond_52

    move v3, v4

    :goto_47
    invoke-virtual {v2, v3}, Lcom/arcsoft/quickview/MediaList$MediaItem;->getUri(Z)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_2a

    :cond_52
    const/4 v3, 0x0

    goto :goto_47

    .line 264
    :cond_54
    iput v1, p0, Lcom/arcsoft/quickview/MediaList;->mCurrent:I

    goto :goto_30
.end method
