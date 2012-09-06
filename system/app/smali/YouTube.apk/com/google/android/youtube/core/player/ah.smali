.class final Lcom/google/android/youtube/core/player/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/MediaActionHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/MediaActionHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ah;->a:Lcom/google/android/youtube/core/player/MediaActionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter

    .prologue
    .line 281
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xea

    if-ne v0, v1, :cond_11

    .line 282
    iget-object v1, p0, Lcom/google/android/youtube/core/player/ah;->a:Lcom/google/android/youtube/core/player/MediaActionHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/player/MediaActionHelper$Action;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/player/MediaActionHelper;->b(Lcom/google/android/youtube/core/player/MediaActionHelper;Lcom/google/android/youtube/core/player/MediaActionHelper$Action;)V

    .line 283
    const/4 v0, 0x1

    .line 285
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
