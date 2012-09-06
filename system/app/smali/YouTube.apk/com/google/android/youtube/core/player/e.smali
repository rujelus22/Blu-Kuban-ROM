.class public final Lcom/google/android/youtube/core/player/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/utils/d;

.field private final b:Ljava/util/LinkedList;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/utils/d;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "clock can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/e;->a:Lcom/google/android/youtube/core/utils/d;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/e;->c:Z

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/e;->b:Ljava/util/LinkedList;

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/player/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 44
    return-void
.end method

.method private a()V
    .registers 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/player/e;->a:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v0

    .line 86
    const-wide/32 v2, 0x36ee80

    sub-long v1, v0, v2

    .line 87
    :goto_b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/core/player/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_29

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/player/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_b

    .line 90
    :cond_29
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 5
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->moderatedAutoplay:Z

    if-eqz v0, :cond_16

    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/player/e;->a:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v0

    .line 57
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/e;->a()V

    .line 58
    iget-object v2, p0, Lcom/google/android/youtube/core/player/e;->b:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 60
    :cond_16
    return-void
.end method

.method public final b(Lcom/google/android/youtube/core/model/Video;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/e;->a()V

    .line 68
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/e;->c:Z

    if-eqz v2, :cond_11

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_11
    iget-boolean v2, p1, Lcom/google/android/youtube/core/model/Video;->moderatedAutoplay:Z

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/google/android/youtube/core/player/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_22

    move v2, v0

    :goto_1f
    if-nez v2, :cond_24

    :goto_21
    return v0

    :cond_22
    move v2, v1

    goto :goto_1f

    :cond_24
    move v0, v1

    goto :goto_21
.end method
