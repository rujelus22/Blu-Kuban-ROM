.class public final Lcom/google/android/youtube/core/model/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/e;
    .registers 6

    .prologue
    .line 107
    new-instance v0, Lcom/google/android/youtube/core/model/e;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/f;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/f;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/f;
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/youtube/core/model/f;->a:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/f;
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/youtube/core/model/f;->b:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/f;
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/youtube/core/model/f;->c:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/youtube/core/model/f;
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/youtube/core/model/f;->d:Ljava/lang/String;

    .line 103
    return-object p0
.end method
