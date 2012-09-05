.class public abstract Lcom/google/android/youtube/core/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/b;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/google/android/youtube/core/cache/a;->a:I

    .line 19
    iput v0, p0, Lcom/google/android/youtube/core/cache/a;->b:I

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/youtube/core/cache/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/cache/a;->a:I

    .line 26
    return-void
.end method

.method protected final b()V
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/youtube/core/cache/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/cache/a;->b:I

    .line 33
    return-void
.end method

.method public final c()I
    .registers 3

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/youtube/core/cache/a;->a:I

    iget v1, p0, Lcom/google/android/youtube/core/cache/a;->b:I

    add-int/2addr v0, v1

    .line 48
    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    iget v1, p0, Lcom/google/android/youtube/core/cache/a;->a:I

    mul-int/lit8 v1, v1, 0x64

    div-int v0, v1, v0

    goto :goto_8
.end method
