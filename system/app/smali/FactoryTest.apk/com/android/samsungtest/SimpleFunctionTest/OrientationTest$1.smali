.class Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$1;
.super Ljava/util/TimerTask;
.source "OrientationTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->startFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;

    invoke-virtual {v0}, Lcom/android/samsungtest/SimpleFunctionTest/OrientationTest;->onFinish()V

    .line 235
    return-void
.end method
