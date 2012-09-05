.class Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$3;
.super Ljava/lang/Object;
.source "LoopbackTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)V
    .registers 2
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    invoke-virtual {v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setModeToReceiverMode()V

    .line 375
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    const/4 v1, 0x1

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->loopbackStart(I)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;I)V

    .line 376
    return-void
.end method
