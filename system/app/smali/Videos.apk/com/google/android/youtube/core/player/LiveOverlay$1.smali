.class Lcom/google/android/youtube/core/player/LiveOverlay$1;
.super Ljava/lang/Object;
.source "LiveOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/LiveOverlay;->init(Lcom/google/android/youtube/core/model/LiveEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/LiveOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/LiveOverlay;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/youtube/core/player/LiveOverlay$1;->this$0:Lcom/google/android/youtube/core/player/LiveOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay$1;->this$0:Lcom/google/android/youtube/core/player/LiveOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay$1;->this$0:Lcom/google/android/youtube/core/player/LiveOverlay;

    #getter for: Lcom/google/android/youtube/core/player/LiveOverlay;->playView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/android/youtube/core/player/LiveOverlay;->access$000(Lcom/google/android/youtube/core/player/LiveOverlay;)Landroid/widget/ImageView;

    move-result-object v1

    #calls: Lcom/google/android/youtube/core/player/LiveOverlay;->show(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/LiveOverlay;->access$100(Lcom/google/android/youtube/core/player/LiveOverlay;Landroid/view/View;)V

    return-void
.end method
