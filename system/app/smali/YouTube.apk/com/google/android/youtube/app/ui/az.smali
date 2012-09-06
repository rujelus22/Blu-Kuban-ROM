.class public final Lcom/google/android/youtube/app/ui/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/o;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/model/Video;)Z
    .registers 3
    .parameter

    .prologue
    .line 14
    if-eqz p0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    invoke-static {p1}, Lcom/google/android/youtube/app/ui/az;->a(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    return v0
.end method
