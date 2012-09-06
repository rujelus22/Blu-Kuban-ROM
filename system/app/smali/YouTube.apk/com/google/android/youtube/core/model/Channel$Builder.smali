.class public final Lcom/google/android/youtube/core/model/Channel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/i;
.implements Ljava/io/Serializable;


# instance fields
.field private author:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updated:Ljava/util/Date;

.field private userProfileUri:Landroid/net/Uri;

.field private videoCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->title:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->summary:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->author:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->userProfileUri:Landroid/net/Uri;

    .line 135
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->updated:Ljava/util/Date;

    .line 136
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->videoCount:I

    .line 137
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Channel$Builder;->build()Lcom/google/android/youtube/core/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->userProfileUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->updated:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 127
    iget v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->videoCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 128
    return-void
.end method


# virtual methods
.method public final author(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Channel$Builder;
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->author:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/Channel;
    .registers 8

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/youtube/core/model/Channel;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->summary:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->author:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->userProfileUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->updated:Ljava/util/Date;

    iget v6, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->videoCount:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Channel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Date;I)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Channel$Builder;->build()Lcom/google/android/youtube/core/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method public final summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Channel$Builder;
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->summary:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Channel$Builder;
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->title:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public final updated(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Channel$Builder;
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->updated:Ljava/util/Date;

    .line 94
    return-object p0
.end method

.method public final userProfileUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Channel$Builder;
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->userProfileUri:Landroid/net/Uri;

    .line 99
    return-object p0
.end method

.method public final videoCount(I)Lcom/google/android/youtube/core/model/Channel$Builder;
    .registers 2
    .parameter

    .prologue
    .line 103
    iput p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->videoCount:I

    .line 104
    return-object p0
.end method
