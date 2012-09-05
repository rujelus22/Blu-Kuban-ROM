.class public Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;
.super Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;
.source "PhotosFromPhonePhotoViewLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "startingPage"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 28
    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mPages:I

    .line 29
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 38
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mSubStreams:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/phone/MediaStream;

    .line 39
    .local v5, s:Lcom/google/android/apps/plus/phone/MediaStream;
    invoke-interface {v5}, Lcom/google/android/apps/plus/phone/MediaStream;->reset()V

    goto :goto_7

    .line 41
    .end local v5           #s:Lcom/google/android/apps/plus/phone/MediaStream;
    :cond_17
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->reset()V

    .line 44
    iget v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mPages:I

    mul-int/lit8 v6, v8, 0x10

    .line 45
    .local v6, totalRows:I
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->moveTo(I)V

    .line 46
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->read()Lcom/google/android/apps/plus/phone/MediaStream$Row;

    .line 49
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mSubStreams:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/phone/MediaStream;

    .line 50
    .restart local v5       #s:Lcom/google/android/apps/plus/phone/MediaStream;
    invoke-interface {v5, v12}, Lcom/google/android/apps/plus/phone/MediaStream;->moveTo(I)V

    goto :goto_32

    .line 52
    .end local v5           #s:Lcom/google/android/apps/plus/phone/MediaStream;
    :cond_42
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    invoke-virtual {v8, v12}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->moveTo(I)V

    .line 55
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v8, Lcom/google/android/apps/plus/phone/PhotoPagerLoader$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v8, v6}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 56
    .local v0, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    iput v12, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mMatrixRows:I

    .line 57
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_51
    if-ge v2, v6, :cond_76

    .line 58
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->read()Lcom/google/android/apps/plus/phone/MediaStream$Row;

    move-result-object v4

    .line 59
    .local v4, row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    if-nez v4, :cond_77

    .line 60
    const-string v8, "PfpLoader"

    const-string v9, "unexpected MediaStream EOF: index=%d; expected=%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v4           #row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    :cond_76
    return-object v0

    .line 66
    .restart local v4       #row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    :cond_77
    invoke-interface {v4}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getLocalUri()Landroid/net/Uri;

    move-result-object v3

    .line 67
    .local v3, localUri:Landroid/net/Uri;
    if-nez v3, :cond_c4

    invoke-interface {v4}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, url:Ljava/lang/String;
    :goto_81
    iget v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mMatrixRows:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mMatrixRows:I

    .line 70
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v8

    sget v9, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->sRowId:I

    add-int/lit8 v10, v9, 0x1

    sput v10, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->sRowId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v8

    invoke-interface {v4}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getPhotoId()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v8

    invoke-interface {v4}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getOwnerId()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v8

    invoke-interface {v4}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v8

    invoke-interface {v4}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getVideoData()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 77
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhonePhotoViewLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->moveToNext()V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 67
    .end local v7           #url:Ljava/lang/String;
    :cond_c4
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_81
.end method
