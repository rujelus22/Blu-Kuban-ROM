.class Lcom/google/android/apps/plus/hangout/LocalVideoView$1;
.super Ljava/lang/Object;
.source "LocalVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/LocalVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/LocalVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$1;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$1;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/LocalVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$100(Lcom/google/android/apps/plus/hangout/LocalVideoView;)Lcom/google/android/apps/plus/hangout/VideoCapturer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->toggleFlashLightEnabled()V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/LocalVideoView$1;->this$0:Lcom/google/android/apps/plus/hangout/LocalVideoView;

    #calls: Lcom/google/android/apps/plus/hangout/LocalVideoView;->updateFlashLightButtonState()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/LocalVideoView;->access$800(Lcom/google/android/apps/plus/hangout/LocalVideoView;)V

    .line 141
    return-void
.end method
