.class public final Lcom/google/android/youtube/core/model/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/youtube/core/model/Event$Action;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/Event;
    .registers 7

    .prologue
    .line 133
    new-instance v0, Lcom/google/android/youtube/core/model/Event;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/e;->b:Lcom/google/android/youtube/core/model/Event$Action;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/e;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/e;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/e;->e:Ljava/util/Date;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/model/Event;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Event$Action;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/model/Event$Action;)Lcom/google/android/youtube/core/model/e;
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/youtube/core/model/e;->b:Lcom/google/android/youtube/core/model/Event$Action;

    .line 114
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/e;
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/youtube/core/model/e;->a:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public final a(Ljava/util/Date;)Lcom/google/android/youtube/core/model/e;
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/youtube/core/model/e;->e:Ljava/util/Date;

    .line 129
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/e;
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/core/model/e;->c:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/e;
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/youtube/core/model/e;->d:Ljava/lang/String;

    .line 124
    return-object p0
.end method
