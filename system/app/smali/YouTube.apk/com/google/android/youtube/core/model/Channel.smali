.class public final Lcom/google/android/youtube/core/model/Channel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final author:Ljava/lang/String;

.field public final summary:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final updated:Ljava/util/Date;

.field public final userProfileUri:Landroid/net/Uri;

.field public final videoCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Date;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Channel;->title:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Channel;->summary:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Channel;->author:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Channel;->updated:Ljava/util/Date;

    .line 41
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Channel;->userProfileUri:Landroid/net/Uri;

    .line 42
    iput p6, p0, Lcom/google/android/youtube/core/model/Channel;->videoCount:I

    .line 43
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 55
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Channel;->buildUpon()Lcom/google/android/youtube/core/model/Channel$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Channel$Builder;
    .registers 3

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/youtube/core/model/Channel$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Channel$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Channel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Channel$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Channel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Channel;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Channel$Builder;->summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Channel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Channel;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Channel$Builder;->author(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Channel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Channel;->userProfileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Channel$Builder;->userProfileUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Channel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Channel;->updated:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Channel$Builder;->updated(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Channel$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Channel;->videoCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Channel$Builder;->videoCount(I)Lcom/google/android/youtube/core/model/Channel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 47
    const-string v0, "Channel[title = %s, author = %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Channel;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Channel;->author:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
