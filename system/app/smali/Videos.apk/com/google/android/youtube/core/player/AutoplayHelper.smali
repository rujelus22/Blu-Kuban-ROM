.class public Lcom/google/android/youtube/core/player/AutoplayHelper;
.super Ljava/lang/Object;
.source "AutoplayHelper.java"


# instance fields
.field private autoplayAllowed:Z

.field private final clock:Lcom/google/android/youtube/core/utils/Clock;

.field private final context:Landroid/content/Context;

.field private final times:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/Clock;)V
    .registers 4
    .parameter "context"
    .parameter "clock"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "context can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->context:Landroid/content/Context;

    .line 41
    const-string v0, "clock can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/Clock;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->clock:Lcom/google/android/youtube/core/utils/Clock;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->autoplayAllowed:Z

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->times:Ljava/util/LinkedList;

    .line 44
    return-void
.end method


# virtual methods
.method public autoplayAllowed()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->autoplayAllowed:Z

    return v0
.end method

.method public showReasonToast()V
    .registers 4

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->autoplayAllowed:Z

    if-nez v0, :cond_11

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->context:Landroid/content/Context;

    const v1, 0x7f0b0068

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    :cond_11
    return-void
.end method

.method public track(Lcom/google/android/youtube/core/model/Video;)V
    .registers 9
    .parameter "video"

    .prologue
    const/4 v6, 0x0

    .line 47
    iget-boolean v4, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->autoplayAllowed:Z

    if-nez v4, :cond_6

    .line 77
    :cond_5
    :goto_5
    return-void

    .line 52
    :cond_6
    iget-object v4, p1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/youtube/core/utils/Util;->isVevoChannel(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 53
    iput-boolean v6, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->autoplayAllowed:Z

    .line 54
    iget-object v4, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->times:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    goto :goto_5

    .line 58
    :cond_16
    iget-boolean v4, p1, Lcom/google/android/youtube/core/model/Video;->moderatedAutoplay:Z

    if-eqz v4, :cond_5

    .line 59
    iget-object v4, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v4}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v2

    .line 60
    .local v2, now:J
    iget-object v4, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->times:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 63
    const-wide/32 v4, 0x36ee80

    sub-long v0, v2, v4

    .line 65
    .local v0, anHourAgo:J
    :goto_2e
    iget-object v4, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->times:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_44

    .line 66
    iget-object v4, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->times:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_2e

    .line 72
    :cond_44
    iget-object v4, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->times:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_5

    .line 73
    iput-boolean v6, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->autoplayAllowed:Z

    .line 74
    iget-object v4, p0, Lcom/google/android/youtube/core/player/AutoplayHelper;->times:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    goto :goto_5
.end method
