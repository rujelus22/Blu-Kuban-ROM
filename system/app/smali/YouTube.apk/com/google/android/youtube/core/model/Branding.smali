.class public final Lcom/google/android/youtube/core/model/Branding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final bannerTargetUri:Landroid/net/Uri;

.field public final bannerUri:Landroid/net/Uri;

.field public final description:Ljava/lang/String;

.field public final featuredPlaylistId:Ljava/lang/String;

.field public final keywords:Ljava/lang/String;

.field public final largeBannerUri:Landroid/net/Uri;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding;->title:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Branding;->description:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Branding;->keywords:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    .line 44
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Branding;->largeBannerUri:Landroid/net/Uri;

    .line 45
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Branding;->bannerTargetUri:Landroid/net/Uri;

    .line 46
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 54
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Branding;->buildUpon()Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Branding$Builder;
    .registers 3

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/youtube/core/model/Branding$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Branding$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->largeBannerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->bannerTargetUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    move-result-object v0

    return-object v0
.end method
