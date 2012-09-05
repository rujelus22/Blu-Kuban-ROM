.class Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView$1;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestMainHistoryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;)V
    .registers 2
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView$1;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 448
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, action:Ljava/lang/String;
    const-string v1, "FactoryTestMainHistoryView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v1, "com.android.samsungtest.RilOmissionCommand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 451
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView$1;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;

    #calls: Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->getFactoryTestHistoryValue(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->access$000(Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;Landroid/content/Intent;)V

    .line 452
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView$1;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;

    #calls: Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->setFactoryTestHistoryValue()V
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;->access$100(Lcom/android/samsungtest/FactoryTest/FactoryTestMainHistoryView;)V

    .line 455
    :cond_2e
    return-void
.end method
