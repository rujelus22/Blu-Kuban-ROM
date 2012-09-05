.class Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest$1;
.super Landroid/content/BroadcastReceiver;
.source "HdmiTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, action:Ljava/lang/String;
    const-string v1, "HdmiTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast\'s action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v1, "com.android.samsungtest.SimpleFunctionTest.HdmiTest.HQRLMODEOFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 148
    const-string v1, "HdmiTest"

    const-string v2, "finish HQRL MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;

    invoke-virtual {v1}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->finish()V

    .line 151
    :cond_30
    return-void
.end method
