.class Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$1;
.super Ljava/lang/Object;
.source "LoopbackTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->playBeepByHook()V
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
    .line 327
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->unSetHookText()V
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)V

    .line 330
    return-void
.end method
