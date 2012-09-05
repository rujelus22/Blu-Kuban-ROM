.class public final Lcom/google/android/youtube/core/model/g;
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
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/f;
    .registers 6

    .prologue
    .line 104
    new-instance v0, Lcom/google/android/youtube/core/model/f;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/g;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/g;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/g;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/g;
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/youtube/core/model/g;->a:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/g;
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/youtube/core/model/g;->b:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/g;
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/youtube/core/model/g;->c:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/youtube/core/model/g;
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/youtube/core/model/g;->d:Ljava/lang/String;

    .line 100
    return-object p0
.end method
