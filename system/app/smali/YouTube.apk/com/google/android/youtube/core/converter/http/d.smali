.class final Lcom/google/android/youtube/core/converter/http/d;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/c;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/c;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/d;->a:Lcom/google/android/youtube/core/converter/http/c;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/x;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Branding$Builder;

    .line 56
    const-string v1, "name"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/c;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 58
    const-string v2, "channel.global.title.string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 59
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    .line 74
    :cond_21
    :goto_21
    return-void

    .line 60
    :cond_22
    const-string v2, "channel.global.description.string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 61
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_21

    .line 62
    :cond_2e
    const-string v2, "channel.global.keywords.string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 63
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_21

    .line 64
    :cond_3a
    const-string v2, "mobile_watchpage.banner.image.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 65
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_21

    .line 66
    :cond_4a
    const-string v2, "mobile_watchpage.banner.image_target.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 67
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_21

    .line 68
    :cond_5a
    const-string v2, "watchpage.global.featured_playlist.id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 69
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_21

    .line 70
    :cond_66
    const-string v2, "watchpage.large_branded_banner.image.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 71
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_21
.end method
