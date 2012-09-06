.class public Lcom/google/android/apps/plus/phone/PhotoPagerLoader;
.super Lcom/google/android/apps/plus/phone/PhotoCursorLoader;
.source "PhotoPagerLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/PhotoPagerLoader$PhotoQuery;
    }
.end annotation


# instance fields
.field private final mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

.field private final mOwnerGaiaId:Ljava/lang/String;

.field private final mPhotoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 27
    .parameter "context"
    .parameter "account"
    .parameter "ownerGaiaId"
    .parameter "mediaRefs"
    .parameter "albumId"
    .parameter "circleId"
    .parameter "photoOfUserGaiaId"
    .parameter "streamId"
    .parameter "activityId"
    .parameter "eventId"
    .parameter "photoUrl"
    .parameter "pageHint"

    .prologue
    .line 47
    const/4 v1, -0x1

    move/from16 v0, p12

    if-eq v0, v1, :cond_2c

    const/4 v12, 0x1

    :goto_6
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 49
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->mOwnerGaiaId:Ljava/lang/String;

    .line 50
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    .line 51
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->mPhotoUrl:Ljava/lang/String;

    .line 52
    return-void

    .line 47
    :cond_2c
    const/4 v12, 0x0

    goto :goto_6
.end method

.method private createMediaRefCursor([Lcom/google/android/apps/plus/api/MediaRef;)Landroid/database/Cursor;
    .registers 7
    .parameter "mediaRefs"

    .prologue
    .line 81
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v2, Lcom/google/android/apps/plus/phone/PhotoPagerLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 82
    .local v1, matrix:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_68

    .line 83
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 84
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 82
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 90
    :cond_3a
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    goto :goto_37

    .line 97
    :cond_68
    return-object v1
.end method

.method private createPhotoUrlCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .parameter "photoUrl"

    .prologue
    .line 104
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v1, Lcom/google/android/apps/plus/phone/PhotoPagerLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 105
    .local v0, matrix:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->mOwnerGaiaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 110
    return-object v0
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 59
    .local v1, returnCursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v2, :cond_c

    .line 60
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->mMediaRefs:[Lcom/google/android/apps/plus/api/MediaRef;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->createMediaRefCursor([Lcom/google/android/apps/plus/api/MediaRef;)Landroid/database/Cursor;

    move-result-object v2

    .line 74
    :goto_b
    return-object v2

    .line 64
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->mPhotoUrl:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 65
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->mPhotoUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->createPhotoUrlCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_b

    .line 68
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->getLoaderUri()Landroid/net/Uri;

    move-result-object v0

    .line 70
    .local v0, loaderUri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->setUri(Landroid/net/Uri;)V

    .line 71
    sget-object v2, Lcom/google/android/apps/plus/phone/PhotoPagerLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoPagerLoader;->setProjection([Ljava/lang/String;)V

    .line 72
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/PhotoCursorLoader;->esLoadInBackground()Landroid/database/Cursor;

    move-result-object v1

    move-object v2, v1

    .line 74
    goto :goto_b
.end method
