.class public Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
.super Ljava/lang/Object;
.source "FeedMediaInfo.java"


# instance fields
.field private strAlbumId:Ljava/lang/String;

.field private strAttachCaption:Ljava/lang/String;

.field private strAttachDescription:Ljava/lang/String;

.field private strAttachName:Ljava/lang/String;

.field private strMediaAttachId:Ljava/lang/String;

.field private strMediaCount:I

.field private strMediaHref:Ljava/lang/String;

.field private strMediaSrc:Ljava/lang/String;

.field private strMediaThumbnailURL:Ljava/lang/String;

.field private strMediaType:Ljava/lang/String;

.field private strMediaWapPhotoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strAlbumId:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaType:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaHref:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaSrc:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaWapPhotoId:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaThumbnailURL:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strAttachCaption:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strAttachDescription:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaCount:I

    .line 28
    iput-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaAttachId:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getAttachName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strAttachName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaAlbumId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaAttachId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaHref()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaHref:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSrc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaThumbnailURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaThumbnailURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaWapPhotoId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaWapPhotoId:Ljava/lang/String;

    return-object v0
.end method

.method public setAttachMediaIfno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "albumId"
    .parameter "mediaType"
    .parameter "mediaHref"
    .parameter "mediaSrc"
    .parameter "mediaWapPhotoId"
    .parameter "mediaThumbnailURL"
    .parameter "mediaCount"
    .parameter "mediaAttachId"
    .parameter "attachName"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strAlbumId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaType:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaHref:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaSrc:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaWapPhotoId:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaThumbnailURL:Ljava/lang/String;

    .line 39
    iput p7, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaCount:I

    .line 40
    iput-object p9, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strAttachName:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->strMediaAttachId:Ljava/lang/String;

    .line 42
    return-void
.end method
