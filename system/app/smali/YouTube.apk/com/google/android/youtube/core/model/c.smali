.class public final Lcom/google/android/youtube/core/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/i;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/Comment;
    .registers 6

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/youtube/core/model/Comment;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/c;->d:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/c;
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/youtube/core/model/c;->a:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public final a(Ljava/util/Date;)Lcom/google/android/youtube/core/model/c;
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/youtube/core/model/c;->d:Ljava/util/Date;

    .line 70
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/c;
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/youtube/core/model/c;->b:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public final synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/c;->a()Lcom/google/android/youtube/core/model/Comment;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/c;
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/youtube/core/model/c;->c:Ljava/lang/String;

    .line 65
    return-object p0
.end method
