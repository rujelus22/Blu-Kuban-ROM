.class public Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "PhotosFromPhoneLoader.java"

# interfaces
.implements Lcom/google/android/apps/plus/phone/Pageable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$1;,
        Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;,
        Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$PhotosFromPhoneQuery;
    }
.end annotation


# static fields
.field static sRowId:I


# instance fields
.field final mContentObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
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

.field final mContentUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentThresholdCalendar:Ljava/util/Calendar;

.field private mDateDisplayMode:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

.field mMatrixRows:I

.field mObserverRegistered:Z

.field mPages:I

.field final mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

.field final mSubStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/phone/MediaStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->sRowId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mPages:I

    .line 91
    new-instance v2, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v2, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mContentObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, appContext:Landroid/content/Context;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mContentUris:Ljava/util/List;

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mSubStreams:Ljava/util/List;

    .line 117
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->getCameraSyncUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    .local v1, cameraSyncUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mContentUris:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mSubStreams:Ljava/util/List;

    new-instance v3, Lcom/google/android/apps/plus/phone/CameraSyncMediaStream;

    invoke-direct {v3, v0, v1}, Lcom/google/android/apps/plus/phone/CameraSyncMediaStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mContentUris:Ljava/util/List;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mSubStreams:Ljava/util/List;

    new-instance v3, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v0, v4}, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mContentUris:Ljava/util/List;

    sget-object v3, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_IMAGES_URI:Landroid/net/Uri;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mSubStreams:Ljava/util/List;

    new-instance v3, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;

    sget-object v4, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_IMAGES_URI:Landroid/net/Uri;

    invoke-direct {v3, v0, v4}, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mContentUris:Ljava/util/List;

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mSubStreams:Ljava/util/List;

    new-instance v3, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v0, v4}, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mContentUris:Ljava/util/List;

    sget-object v3, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_VIDEO_URI:Landroid/net/Uri;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mSubStreams:Ljava/util/List;

    new-instance v3, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;

    sget-object v4, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_VIDEO_URI:Landroid/net/Uri;

    invoke-direct {v3, v0, v4}, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v2, Lcom/google/android/apps/plus/phone/MergedMediaStream;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mSubStreams:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/phone/MergedMediaStream;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    .line 150
    return-void
.end method

.method private addDivider(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/String;)V
    .registers 8
    .parameter "cursor"
    .parameter "dateString"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 261
    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mMatrixRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mMatrixRows:I

    .line 262
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->sRowId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->sRowId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 274
    return-void
.end method

.method private addRow(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Lcom/google/android/apps/plus/phone/MediaStream$Row;)V
    .registers 6
    .parameter "cursor"
    .parameter "row"

    .prologue
    .line 277
    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mMatrixRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mMatrixRows:I

    .line 278
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->sRowId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->sRowId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getCommentCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getPlusOneCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getPhotoId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getLocalUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getPendingStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getOwnerId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getVideoData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 290
    return-void
.end method

.method private getCameraSyncUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;
    .registers 7
    .parameter "account"

    .prologue
    .line 254
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_STREAM_ID_AND_OWNER_ID_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 255
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v2, "camera_sync_created"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 257
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private getDateString(J)Ljava/lang/String;
    .registers 6
    .parameter "timestamp"

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->updateDateDisplayMode(J)V

    .line 333
    sget-object v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$1;->$SwitchMap$com$google$android$apps$plus$phone$PhotosFromPhoneLoader$DateDisplayMode:[I

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mDateDisplayMode:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    .line 351
    const/4 v1, 0x0

    :goto_11
    return-object v1

    .line 335
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 339
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 346
    :pswitch_28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 347
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 348
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 333
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1d
        :pswitch_28
    .end packed-switch
.end method

.method private updateDateDisplayMode(J)V
    .registers 8
    .parameter "updateTimestamp"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 298
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 299
    .local v0, updateCalendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 300
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mCurrentThresholdCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_10

    .line 301
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mCurrentThresholdCalendar:Ljava/util/Calendar;

    .line 323
    :cond_f
    :goto_f
    return-void

    .line 305
    :cond_10
    sget-object v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$1;->$SwitchMap$com$google$android$apps$plus$phone$PhotosFromPhoneLoader$DateDisplayMode:[I

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mDateDisplayMode:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_52

    goto :goto_f

    .line 307
    :pswitch_1e
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mCurrentThresholdCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_2f

    .line 309
    sget-object v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->Year:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mDateDisplayMode:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    goto :goto_f

    .line 310
    :cond_2f
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mCurrentThresholdCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_f

    .line 312
    sget-object v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->Month:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mDateDisplayMode:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    goto :goto_f

    .line 317
    :pswitch_40
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mCurrentThresholdCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_f

    .line 319
    sget-object v1, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->Year:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mDateDisplayMode:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    goto :goto_f

    .line 305
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 19

    .prologue
    .line 157
    const-string v12, "PfpLoader"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 158
    const-string v12, "PfpLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "esLoadInBackground: BEGIN thread="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_29
    new-instance v12, Lcom/google/android/apps/plus/util/StopWatch;

    invoke-direct {v12}, Lcom/google/android/apps/plus/util/StopWatch;-><init>()V

    invoke-virtual {v12}, Lcom/google/android/apps/plus/util/StopWatch;->start()Lcom/google/android/apps/plus/util/StopWatch;

    move-result-object v11

    .line 164
    .local v11, watch:Lcom/google/android/apps/plus/util/StopWatch;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mSubStreams:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/plus/phone/MediaStream;

    .line 165
    .local v9, s:Lcom/google/android/apps/plus/phone/MediaStream;
    invoke-interface {v9}, Lcom/google/android/apps/plus/phone/MediaStream;->reset()V

    goto :goto_3a

    .line 167
    .end local v9           #s:Lcom/google/android/apps/plus/phone/MediaStream;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->reset()V

    .line 170
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mPages:I

    mul-int/lit8 v10, v12, 0x10

    .line 171
    .local v10, totalRows:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v12, v13}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->moveTo(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->read()Lcom/google/android/apps/plus/phone/MediaStream$Row;

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mSubStreams:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_80

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/plus/phone/MediaStream;

    .line 176
    .restart local v9       #s:Lcom/google/android/apps/plus/phone/MediaStream;
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Lcom/google/android/apps/plus/phone/MediaStream;->moveTo(I)V

    goto :goto_6f

    .line 178
    .end local v9           #s:Lcom/google/android/apps/plus/phone/MediaStream;
    :cond_80
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->moveTo(I)V

    .line 181
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v12, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$PhotosFromPhoneQuery;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v12, v10}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 183
    .local v1, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mMatrixRows:I

    .line 184
    const/4 v7, 0x0

    .line 185
    .local v7, lastDividerDate:Ljava/lang/String;
    sget-object v12, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;->MonthDate:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mDateDisplayMode:Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader$DateDisplayMode;

    .line 186
    const/4 v6, 0x0

    .local v6, idx:I
    :goto_9c
    if-ge v6, v10, :cond_a8

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->read()Lcom/google/android/apps/plus/phone/MediaStream$Row;

    move-result-object v8

    .line 188
    .local v8, row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    if-nez v8, :cond_e8

    .line 201
    .end local v8           #row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    :cond_a8
    const-string v12, "PfpLoader"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_e7

    .line 202
    const-string v12, "PfpLoader"

    const-string v13, "esLoadInBackground: END totalRows=%d hasMoreData=%s msec=%d thread=%s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->hasMore()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v11}, Lcom/google/android/apps/plus/util/StopWatch;->getElapsedMsec()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_e7
    return-object v1

    .line 191
    .restart local v8       #row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    :cond_e8
    invoke-interface {v8}, Lcom/google/android/apps/plus/phone/MediaStream$Row;->getDateTaken()J

    move-result-wide v3

    .line 193
    .local v3, dateTaken:J
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->getDateString(J)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, dateString:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_fe

    .line 195
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->addDivider(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/String;)V

    .line 196
    move-object v7, v2

    .line 198
    :cond_fe
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->addRow(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Lcom/google/android/apps/plus/phone/MediaStream$Row;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->moveToNext()V

    .line 186
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mPages:I

    return v0
.end method

.method public hasMore()Z
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->hasMoreData()Z

    move-result v0

    return v0
.end method

.method public loadMore()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mStream:Lcom/google/android/apps/plus/phone/MergedMediaStream;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/MergedMediaStream;->hasMoreData()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 235
    iget v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mPages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mPages:I

    .line 236
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->onContentChanged()V

    .line 238
    :cond_11
    return-void
.end method

.method protected onReset()V
    .registers 3

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mObserverRegistered:Z

    if-eqz v0, :cond_11

    .line 225
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mContentObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 227
    :cond_11
    return-void
.end method

.method protected onStartLoading()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 212
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mObserverRegistered:Z

    if-nez v2, :cond_27

    .line 213
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mContentUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 214
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mContentObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_b

    .line 217
    .end local v1           #uri:Landroid/net/Uri;
    :cond_25
    iput-boolean v4, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->mObserverRegistered:Z

    .line 219
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneLoader;->forceLoad()V

    .line 220
    return-void
.end method
