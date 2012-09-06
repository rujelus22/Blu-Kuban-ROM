.class Lcom/google/android/music/RatingSelector$1;
.super Ljava/lang/Object;
.source "RatingSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/RatingSelector;->changeRating(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/RatingSelector;


# direct methods
.method constructor <init>(Lcom/google/android/music/RatingSelector;)V
    .registers 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/music/RatingSelector$1;->this$0:Lcom/google/android/music/RatingSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 189
    iget-object v2, p0, Lcom/google/android/music/RatingSelector$1;->this$0:Lcom/google/android/music/RatingSelector;

    #getter for: Lcom/google/android/music/RatingSelector;->mParent:Lcom/google/android/music/MediaPlaybackActivity;
    invoke-static {v2}, Lcom/google/android/music/RatingSelector;->access$000(Lcom/google/android/music/RatingSelector;)Lcom/google/android/music/MediaPlaybackActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/MediaPlaybackActivity;->getPlaybackService()Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v1

    .line 190
    .local v1, service:Lcom/google/android/music/IMusicPlaybackService;
    if-eqz v1, :cond_15

    .line 192
    :try_start_c
    iget-object v2, p0, Lcom/google/android/music/RatingSelector$1;->this$0:Lcom/google/android/music/RatingSelector;

    #getter for: Lcom/google/android/music/RatingSelector;->mRating:I
    invoke-static {v2}, Lcom/google/android/music/RatingSelector;->access$100(Lcom/google/android/music/RatingSelector;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/music/IMusicPlaybackService;->setRating(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    .line 197
    :cond_15
    :goto_15
    return-void

    .line 193
    :catch_16
    move-exception v0

    .line 194
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RatingSelector"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method
