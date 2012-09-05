.class public Lcom/google/android/apps/plus/phone/PhotoViewLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "PhotoViewLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoCommentQuery;,
        Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoPlusOneQuery;,
        Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoCaptionQuery;,
        Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoQuery;
    }
.end annotation


# static fields
.field private static CAPTION_TYPE_PROJECTION:Ljava/lang/String;

.field private static COMMENT_TYPE_PROJECTION:Ljava/lang/String;

.field private static PHOTO_TYPE_PROJECTION:Ljava/lang/String;

.field private static PLUSONE_TYPE_PROJECTION:Ljava/lang/String;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mForceLoadId:Ljava/lang/Long;

.field private final mOwnerId:J

.field private final mPhotoId:J

.field private final mPhotoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-string v0, "1 AS type"

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->PHOTO_TYPE_PROJECTION:Ljava/lang/String;

    .line 49
    const-string v0, "2 AS type"

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->CAPTION_TYPE_PROJECTION:Ljava/lang/String;

    .line 51
    const-string v0, "3 AS type"

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->COMMENT_TYPE_PROJECTION:Ljava/lang/String;

    .line 53
    const-string v0, "4 AS type"

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->PLUSONE_TYPE_PROJECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJLjava/lang/String;Ljava/lang/Long;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "ownerId"
    .parameter "photoId"
    .parameter "photoUrl"
    .parameter "forceLoadId"

    .prologue
    .line 165
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 167
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 168
    iput-wide p5, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    .line 169
    iput-object p7, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoUrl:Ljava/lang/String;

    .line 170
    iput-object p8, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mForceLoadId:Ljava/lang/Long;

    .line 171
    iput-wide p3, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mOwnerId:J

    .line 172
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->PHOTO_TYPE_PROJECTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->CAPTION_TYPE_PROJECTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->PLUSONE_TYPE_PROJECTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->COMMENT_TYPE_PROJECTION:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final doNetworkRequest()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 287
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 288
    .local v0, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mOwnerId:J

    iget-wide v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhoto(JJ)V

    .line 289
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 293
    return-void
.end method

.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 23

    .prologue
    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 181
    .local v1, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-eqz v3, :cond_117

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mForceLoadId:Ljava/lang/Long;

    if-eqz v3, :cond_30

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mForceLoadId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-nez v3, :cond_30

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->doNetworkRequest()V

    .line 184
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mForceLoadId:Ljava/lang/Long;

    .line 187
    :cond_30
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 191
    .local v2, photoUri:Landroid/net/Uri;
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 193
    .local v17, photoCursor:Landroid/database/Cursor;
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoPlusOneQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "plusone_data NOT NULL AND plusone_count > 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 234
    .end local v2           #photoUri:Landroid/net/Uri;
    .local v18, plusOneCursor:Landroid/database/Cursor;
    :goto_55
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    .line 237
    .local v4, captionUri:Landroid/net/Uri;
    sget-object v5, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoCaptionQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "description NOT NULL AND description != \'\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 240
    .local v11, captionCursor:Landroid/database/Cursor;
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v6

    .line 244
    .local v6, commentQueryUri:Landroid/net/Uri;
    if-eqz v17, :cond_1d5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1d5

    .line 245
    const/16 v3, 0xb

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 246
    .local v12, commentCount:I
    const/4 v3, -0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 251
    :goto_9a
    sget-object v7, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoCommentQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "create_time"

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 253
    .local v13, commentCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_1d8

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 256
    .local v14, commentCursorCount:I
    :goto_ab
    if-eq v12, v14, :cond_1db

    .line 257
    new-instance v15, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoCommentQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v15, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .local v15, commentLoadCursor:Landroid/database/Cursor;
    move-object v3, v15

    .line 258
    check-cast v3, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 272
    :goto_fd
    new-instance v19, Landroid/database/MergeCursor;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v17, v3, v5

    const/4 v5, 0x1

    aput-object v11, v3, v5

    const/4 v5, 0x2

    aput-object v18, v3, v5

    const/4 v5, 0x3

    aput-object v13, v3, v5

    const/4 v5, 0x4

    aput-object v15, v3, v5

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 279
    .local v19, returnCursor:Landroid/database/MergeCursor;
    return-object v19

    .line 196
    .end local v4           #captionUri:Landroid/net/Uri;
    .end local v6           #commentQueryUri:Landroid/net/Uri;
    .end local v11           #captionCursor:Landroid/database/Cursor;
    .end local v12           #commentCount:I
    .end local v13           #commentCursor:Landroid/database/Cursor;
    .end local v14           #commentCursorCount:I
    .end local v15           #commentLoadCursor:Landroid/database/Cursor;
    .end local v17           #photoCursor:Landroid/database/Cursor;
    .end local v18           #plusOneCursor:Landroid/database/Cursor;
    .end local v19           #returnCursor:Landroid/database/MergeCursor;
    :cond_117
    new-instance v17, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 197
    .restart local v17       #photoCursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->toVideoData(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v20

    .line 202
    .local v20, videoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    const/16 v21, 0x0

    .line 203
    .local v21, videoDataBytes:[B
    if-eqz v20, :cond_138

    .line 205
    :try_start_134
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/plus/content/DbVideo;->serialize(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)[B
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_1c0

    move-result-object v21

    :cond_138
    :goto_138
    move-object/from16 v3, v17

    .line 213
    check-cast v3, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 231
    const/16 v18, 0x0

    .restart local v18       #plusOneCursor:Landroid/database/Cursor;
    goto/16 :goto_55

    .line 206
    .end local v18           #plusOneCursor:Landroid/database/Cursor;
    :catch_1c0
    move-exception v16

    .line 207
    .local v16, e:Ljava/io/IOException;
    const-string v3, "PhotoViewLoader"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_138

    .line 208
    const-string v3, "PhotoViewLoader"

    const-string v5, "DbVideo.serialize failed"

    move-object/from16 v0, v16

    invoke-static {v3, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_138

    .line 248
    .end local v16           #e:Ljava/io/IOException;
    .end local v20           #videoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .end local v21           #videoDataBytes:[B
    .restart local v4       #captionUri:Landroid/net/Uri;
    .restart local v6       #commentQueryUri:Landroid/net/Uri;
    .restart local v11       #captionCursor:Landroid/database/Cursor;
    .restart local v18       #plusOneCursor:Landroid/database/Cursor;
    :cond_1d5
    const/4 v12, 0x0

    .restart local v12       #commentCount:I
    goto/16 :goto_9a

    .line 253
    .restart local v13       #commentCursor:Landroid/database/Cursor;
    :cond_1d8
    const/4 v14, 0x0

    goto/16 :goto_ab

    .line 269
    .restart local v14       #commentCursorCount:I
    :cond_1db
    const/4 v15, 0x0

    .restart local v15       #commentLoadCursor:Landroid/database/Cursor;
    goto/16 :goto_fd
.end method
