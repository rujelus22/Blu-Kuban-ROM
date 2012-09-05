.class public final Lcom/google/android/youtube/core/model/Playlist;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final author:Ljava/lang/String;

.field public final contentUri:Landroid/net/Uri;

.field public final editUri:Landroid/net/Uri;

.field public final hqThumbnailUri:Landroid/net/Uri;

.field public final id:Ljava/lang/String;

.field public final size:I

.field public final summary:Ljava/lang/String;

.field public final thumbnailUri:Landroid/net/Uri;

.field public final title:Ljava/lang/String;

.field public final updated:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;I)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "playlistId can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist;->id:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Playlist;->updated:Ljava/util/Date;

    .line 62
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    .line 63
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Playlist;->editUri:Landroid/net/Uri;

    .line 64
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Playlist;->thumbnailUri:Landroid/net/Uri;

    .line 65
    iput-object p9, p0, Lcom/google/android/youtube/core/model/Playlist;->hqThumbnailUri:Landroid/net/Uri;

    .line 66
    iput p10, p0, Lcom/google/android/youtube/core/model/Playlist;->size:I

    .line 67
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 107
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Playlist;->buildUpon()Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Playlist$Builder;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Playlist$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->author(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->updated:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->editUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->hqThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Playlist;->size:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->size(I)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 85
    instance-of v0, p1, Lcom/google/android/youtube/core/model/Playlist;

    if-nez v0, :cond_6

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_5
    return v0

    .line 88
    :cond_6
    check-cast p1, Lcom/google/android/youtube/core/model/Playlist;

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Playlist;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    return-object v0
.end method
