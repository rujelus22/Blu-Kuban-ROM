.class Lcom/android/samsungtest/FactoryTest/FactoryTestApp$6;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/FactoryTest/FactoryTestApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V
    .registers 2
    .parameter

    .prologue
    .line 1977
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$6;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intents"

    .prologue
    const/4 v3, 0x3

    .line 1980
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1981
    const-string v0, "FactoryTestApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_HEADSET_PLUG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$6;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$800(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$6;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->audioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$800(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1985
    :cond_3d
    return-void
.end method
