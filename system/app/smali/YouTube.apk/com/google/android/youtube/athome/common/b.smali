.class public final Lcom/google/android/youtube/athome/common/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;
    .registers 6

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;

    iget-object v1, p0, Lcom/google/android/youtube/athome/common/b;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/youtube/athome/common/b;->b:I

    iget v3, p0, Lcom/google/android/youtube/athome/common/b;->c:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/athome/common/AtHomeVideoInfo;-><init>(Ljava/lang/String;IILcom/google/android/youtube/athome/common/a;)V

    return-object v0
.end method

.method public final a(I)Lcom/google/android/youtube/athome/common/b;
    .registers 2
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/google/android/youtube/athome/common/b;->b:I

    .line 79
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/athome/common/b;
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/youtube/athome/common/b;->a:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public final b(I)Lcom/google/android/youtube/athome/common/b;
    .registers 2
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/google/android/youtube/athome/common/b;->c:I

    .line 84
    return-object p0
.end method
