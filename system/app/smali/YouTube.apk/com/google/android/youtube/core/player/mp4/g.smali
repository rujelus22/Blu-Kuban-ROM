.class public final Lcom/google/android/youtube/core/player/mp4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final a:Ljava/lang/Iterable;

.field private final b:Ljava/lang/Iterable;

.field private final c:Ljava/lang/Iterable;

.field private final d:Ljava/lang/Iterable;

.field private final e:Ljava/lang/Iterable;

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/core/player/mp4/g;->a:Ljava/lang/Iterable;

    .line 52
    iput-object p2, p0, Lcom/google/android/youtube/core/player/mp4/g;->b:Ljava/lang/Iterable;

    .line 53
    iput-object p3, p0, Lcom/google/android/youtube/core/player/mp4/g;->c:Ljava/lang/Iterable;

    .line 54
    iput-object p4, p0, Lcom/google/android/youtube/core/player/mp4/g;->d:Ljava/lang/Iterable;

    .line 55
    iput-object p5, p0, Lcom/google/android/youtube/core/player/mp4/g;->e:Ljava/lang/Iterable;

    .line 56
    iput p6, p0, Lcom/google/android/youtube/core/player/mp4/g;->f:I

    .line 57
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 8

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/g;->a:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/g;->b:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/mp4/g;->c:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/player/mp4/g;->d:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/core/player/mp4/g;->e:Ljava/lang/Iterable;

    if-nez v5, :cond_25

    const/4 v5, 0x0

    :goto_1f
    iget v6, p0, Lcom/google/android/youtube/core/player/mp4/g;->f:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/player/mp4/h;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;I)V

    return-object v0

    :cond_25
    iget-object v5, p0, Lcom/google/android/youtube/core/player/mp4/g;->e:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    goto :goto_1f
.end method
