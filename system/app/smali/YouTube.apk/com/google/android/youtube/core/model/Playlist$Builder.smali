.class public Lcom/google/android/youtube/core/model/Playlist$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/i;
.implements Ljava/io/Serializable;


# instance fields
.field private author:Ljava/lang/String;

.field private contentUri:Landroid/net/Uri;

.field private editUri:Landroid/net/Uri;

.field private hqThumbnailUri:Landroid/net/Uri;

.field private id:Ljava/lang/String;

.field private size:I

.field private summary:Ljava/lang/String;

.field private thumbnailUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;

.field private updated:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->id:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    .line 202
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    .line 206
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Playlist$Builder;->build()Lcom/google/android/youtube/core/model/Playlist;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->hqThumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 192
    iget v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 193
    return-void
.end method


# virtual methods
.method public author(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Playlist;
    .registers 12

    .prologue
    .line 174
    new-instance v0, Lcom/google/android/youtube/core/model/Playlist;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->thumbnailUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->hqThumbnailUri:Landroid/net/Uri;

    iget v10, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/model/Playlist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Playlist$Builder;->build()Lcom/google/android/youtube/core/model/Playlist;

    move-result-object v0

    return-object v0
.end method

.method public contentUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    .line 150
    return-object p0
.end method

.method public editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    .line 155
    return-object p0
.end method

.method public hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 165
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->id:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public size(I)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .registers 2
    .parameter

    .prologue
    .line 169
    iput p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    .line 170
    return-object p0
.end method

.method public summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 160
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public updated(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    .line 145
    return-object p0
.end method
