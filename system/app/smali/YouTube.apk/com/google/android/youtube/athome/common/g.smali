.class public final Lcom/google/android/youtube/athome/common/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/athome/common/e;
    .registers 7

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/youtube/athome/common/e;

    iget v1, p0, Lcom/google/android/youtube/athome/common/g;->a:I

    iget v2, p0, Lcom/google/android/youtube/athome/common/g;->b:I

    iget-object v3, p0, Lcom/google/android/youtube/athome/common/g;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/athome/common/g;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/athome/common/e;-><init>(IILjava/lang/String;Ljava/lang/String;B)V

    return-object v0
.end method

.method public final a(I)Lcom/google/android/youtube/athome/common/g;
    .registers 2
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/google/android/youtube/athome/common/g;->a:I

    .line 85
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/athome/common/g;
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/youtube/athome/common/g;->c:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public final b(I)Lcom/google/android/youtube/athome/common/g;
    .registers 2
    .parameter

    .prologue
    .line 89
    iput p1, p0, Lcom/google/android/youtube/athome/common/g;->b:I

    .line 90
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/athome/common/g;
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/youtube/athome/common/g;->d:Ljava/lang/String;

    .line 100
    return-object p0
.end method
