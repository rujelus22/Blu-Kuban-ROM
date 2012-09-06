.class public Lcom/google/android/youtube/core/model/Branding$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/i;
.implements Ljava/io/Serializable;


# instance fields
.field private bannerTargetUri:Landroid/net/Uri;

.field private bannerUri:Landroid/net/Uri;

.field private description:Ljava/lang/String;

.field private featuredPlaylistId:Ljava/lang/String;

.field private keywords:Ljava/lang/String;

.field private largeBannerUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    .line 136
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri:Landroid/net/Uri;

    .line 137
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    .line 138
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Branding$Builder;->build()Lcom/google/android/youtube/core/model/Branding;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 129
    return-void
.end method


# virtual methods
.method public bannerTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    .line 99
    return-object p0
.end method

.method public bannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    .line 94
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Branding;
    .registers 9

    .prologue
    .line 113
    new-instance v0, Lcom/google/android/youtube/core/model/Branding;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/model/Branding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Branding$Builder;->build()Lcom/google/android/youtube/core/model/Branding;

    move-result-object v0

    return-object v0
.end method

.method public description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->description:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public featuredPlaylistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public keywords(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public largeBannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->largeBannerUri:Landroid/net/Uri;

    .line 109
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Branding$Builder;->title:Ljava/lang/String;

    .line 79
    return-object p0
.end method
