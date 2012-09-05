.class Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$1;
.super Ljava/util/TimerTask;
.source "FactoryTestBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->speakerTestStart(Landroid/media/Ringtone;Landroid/media/AudioManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;

.field final synthetic val$ringtone:Landroid/media/Ringtone;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;Landroid/media/Ringtone;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;

    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$1;->val$ringtone:Landroid/media/Ringtone;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 344
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->access$002(Z)Z

    .line 345
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$1;->val$ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 346
    const-string v0, "Speaker_Test"

    const-string v1, "Timer run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method
