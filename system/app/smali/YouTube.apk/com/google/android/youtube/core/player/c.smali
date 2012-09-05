.class public final Lcom/google/android/youtube/core/player/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/utils/c;

.field private final b:Ljava/util/LinkedList;

.field private c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/utils/c;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "clock can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/c;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/c;->a:Lcom/google/android/youtube/core/utils/c;

    .line 42
    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/c;->d:Z

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/c;->b:Ljava/util/LinkedList;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/c;->c:Z

    iget-object v0, p0, Lcom/google/android/youtube/core/player/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 45
    return-void
.end method

.method private a()V
    .registers 6

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/player/c;->a:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/c;->a()J

    move-result-wide v0

    .line 94
    const-wide/32 v2, 0x36ee80

    sub-long v1, v0, v2

    .line 95
    :goto_b
    iget-object v0, p0, Lcom/google/android/youtube/core/player/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/youtube/core/player/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_29

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/player/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_b

    .line 98
    :cond_29
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 5
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/c;->c:Z

    .line 59
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Video;->moderatedAutoplay:Z

    if-eqz v0, :cond_19

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/player/c;->a:Lcom/google/android/youtube/core/utils/c;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/c;->a()J

    move-result-wide v0

    .line 61
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/c;->a()V

    .line 62
    iget-object v2, p0, Lcom/google/android/youtube/core/player/c;->b:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 64
    :cond_19
    return-void
.end method

.method public final b(Lcom/google/android/youtube/core/model/Video;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/c;->a()V

    .line 72
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/c;->d:Z

    if-eqz v2, :cond_18

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/c;->c:Z

    if-eqz v2, :cond_29

    move v2, v0

    :goto_16
    if-nez v2, :cond_2d

    :cond_18
    iget-boolean v2, p1, Lcom/google/android/youtube/core/model/Video;->moderatedAutoplay:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/youtube/core/player/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2b

    move v2, v0

    :goto_26
    if-nez v2, :cond_2d

    :goto_28
    return v0

    :cond_29
    move v2, v1

    goto :goto_16

    :cond_2b
    move v2, v1

    goto :goto_26

    :cond_2d
    move v0, v1

    goto :goto_28
.end method
