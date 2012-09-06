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

.field private final mNotificationUri:Landroid/net/Uri;

.field private final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mObserverRegistered:Z

.field private final mOwnerGaiaId:Ljava/lang/String;

.field private final mPhotoId:J

.field private final mPhotoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "1 AS type"

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->PHOTO_TYPE_PROJECTION:Ljava/lang/String;

    .line 42
    const-string v0, "2 AS type"

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->CAPTION_TYPE_PROJECTION:Ljava/lang/String;

    .line 44
    const-string v0, "3 AS type"

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->COMMENT_TYPE_PROJECTION:Ljava/lang/String;

    .line 46
    const-string v0, "4 AS type"

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->PLUSONE_TYPE_PROJECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "ownerGaiaId"
    .parameter "photoId"
    .parameter "photoUrl"
    .parameter "forceLoadId"

    .prologue
    .line 168
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 158
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 170
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 171
    iput-wide p4, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    .line 172
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoUrl:Ljava/lang/String;

    .line 173
    iput-object p7, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mForceLoadId:Ljava/lang/Long;

    .line 174
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mOwnerGaiaId:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mNotificationUri:Landroid/net/Uri;

    .line 176
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->PHOTO_TYPE_PROJECTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->CAPTION_TYPE_PROJECTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->PLUSONE_TYPE_PROJECTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->COMMENT_TYPE_PROJECTION:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final doNetworkRequest()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 311
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 312
    .local v0, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mOwnerGaiaId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhoto(Ljava/lang/String;J)V

    .line 313
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 317
    return-void
.end method

.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 23

    .prologue
    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 202
    .local v1, resolver:Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 204
    .local v16, performedFetch:Z
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-eqz v3, :cond_131

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mForceLoadId:Ljava/lang/Long;

    if-eqz v3, :cond_34

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mForceLoadId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-nez v3, :cond_34

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->doNetworkRequest()V

    .line 207
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mForceLoadId:Ljava/lang/Long;

    .line 208
    const/16 v16, 0x1

    .line 211
    :cond_34
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 215
    .local v2, photoUri:Landroid/net/Uri;
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 216
    .local v17, photoCursor:Landroid/database/Cursor;
    if-nez v16, :cond_65

    if-eqz v17, :cond_59

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_65

    .line 217
    :cond_59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->doNetworkRequest()V

    .line 218
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 221
    :cond_65
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoPlusOneQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "plusone_data NOT NULL AND plusone_count > 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 258
    .end local v2           #photoUri:Landroid/net/Uri;
    .local v18, plusOneCursor:Landroid/database/Cursor;
    :goto_6f
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoId:J

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    .line 261
    .local v4, captionUri:Landroid/net/Uri;
    sget-object v5, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoCaptionQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "description NOT NULL AND description != \'\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 264
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

    .line 268
    .local v6, commentQueryUri:Landroid/net/Uri;
    if-eqz v17, :cond_1fa

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1fa

    .line 269
    const/16 v3, 0xb

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 270
    .local v12, commentCount:I
    const/4 v3, -0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 275
    :goto_b4
    sget-object v7, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoCommentQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "create_time"

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 277
    .local v13, commentCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_1fd

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 280
    .local v14, commentCursorCount:I
    :goto_c5
    if-eq v12, v14, :cond_200

    .line 281
    new-instance v15, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoCommentQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v15, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .local v15, commentLoadCursor:Landroid/database/Cursor;
    move-object v3, v15

    .line 282
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

    .line 296
    :goto_117
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

    .line 303
    .local v19, returnCursor:Landroid/database/MergeCursor;
    return-object v19

    .line 224
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
    :cond_131
    new-instance v17, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 225
    .restart local v17       #photoCursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->toVideoData(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v20

    .line 229
    .local v20, videoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    if-eqz v20, :cond_1f0

    .line 230
    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->toByteArray()[B

    move-result-object v21

    .local v21, videoDataBytes:[B
    :goto_150
    move-object/from16 v3, v17

    .line 234
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

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mOwnerGaiaId:Ljava/lang/String;

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

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mOwnerGaiaId:Ljava/lang/String;

    if-eqz v3, :cond_1f4

    const/4 v3, 0x0

    :goto_1e9
    invoke-virtual {v5, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 255
    const/16 v18, 0x0

    .restart local v18       #plusOneCursor:Landroid/database/Cursor;
    goto/16 :goto_6f

    .line 232
    .end local v18           #plusOneCursor:Landroid/database/Cursor;
    .end local v21           #videoDataBytes:[B
    :cond_1f0
    const/16 v21, 0x0

    .restart local v21       #videoDataBytes:[B
    goto/16 :goto_150

    .line 234
    :cond_1f4
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1e9

    .line 272
    .end local v20           #videoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    .end local v21           #videoDataBytes:[B
    .restart local v4       #captionUri:Landroid/net/Uri;
    .restart local v6       #commentQueryUri:Landroid/net/Uri;
    .restart local v11       #captionCursor:Landroid/database/Cursor;
    .restart local v18       #plusOneCursor:Landroid/database/Cursor;
    :cond_1fa
    const/4 v12, 0x0

    .restart local v12       #commentCount:I
    goto/16 :goto_b4

    .line 277
    .restart local v13       #commentCursor:Landroid/database/Cursor;
    :cond_1fd
    const/4 v14, 0x0

    goto/16 :goto_c5

    .line 293
    .restart local v14       #commentCursorCount:I
    :cond_200
    const/4 v15, 0x0

    .restart local v15       #commentLoadCursor:Landroid/database/Cursor;
    goto/16 :goto_117
.end method

.method protected onAbandon()V
    .registers 3

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_14

    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mObserverRegistered:Z

    .line 194
    :cond_14
    return-void
.end method

.method protected onStartLoading()V
    .registers 5

    .prologue
    .line 180
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->onStartLoading()V

    .line 181
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mObserverRegistered:Z

    if-nez v0, :cond_1a

    .line 182
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mNotificationUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewLoader;->mObserverRegistered:Z

    .line 186
    :cond_1a
    return-void
.end method
