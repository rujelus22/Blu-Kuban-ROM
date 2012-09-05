.class Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$1;
.super Ljava/lang/Object;
.source "LoudSpkLoopbackTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 100
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->onPause:Z
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)Z

    move-result v0

    if-eq v0, v3, :cond_22

    .line 101
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v2, v1}, Landroid/media/AudioManager;->setRouting(III)V

    .line 103
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 104
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->loopbackStart(I)V
    invoke-static {v0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;I)V

    .line 106
    :cond_22
    return-void
.end method
