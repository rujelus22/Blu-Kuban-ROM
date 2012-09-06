.class Lcom/google/android/apps/plus/hangout/SelfVideoView$1;
.super Ljava/lang/Object;
.source "SelfVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/SelfVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$1;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$1;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/SelfVideoView;->videoCapturer:Lcom/google/android/apps/plus/hangout/VideoCapturer;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$100(Lcom/google/android/apps/plus/hangout/SelfVideoView;)Lcom/google/android/apps/plus/hangout/VideoCapturer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->toggleFlashLightEnabled()V

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/SelfVideoView$1;->this$0:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    #calls: Lcom/google/android/apps/plus/hangout/SelfVideoView;->updateFlashLightButtonState()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->access$1000(Lcom/google/android/apps/plus/hangout/SelfVideoView;)V

    .line 150
    return-void
.end method
