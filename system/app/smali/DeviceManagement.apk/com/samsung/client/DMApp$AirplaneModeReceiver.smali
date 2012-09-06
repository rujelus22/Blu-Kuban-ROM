.class Lcom/samsung/client/DMApp$AirplaneModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DMApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DMApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DMApp;


# direct methods
.method private constructor <init>(Lcom/samsung/client/DMApp;)V
    .registers 2
    .parameter

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/samsung/client/DMApp$AirplaneModeReceiver;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2804
    invoke-direct {p0, p1}, Lcom/samsung/client/DMApp$AirplaneModeReceiver;-><init>(Lcom/samsung/client/DMApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    .line 2806
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 2807
    const-string v2, "DMApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2809
    .local v1, isOn:Z
    const-string v2, "DMApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    const-string v2, "DMApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/client/DMApp$AirplaneModeReceiver;->this$0:Lcom/samsung/client/DMApp;

    invoke-virtual {v4}, Lcom/samsung/client/DMApp;->isDMSessionNotActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    if-eqz v1, :cond_98

    .line 2813
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/client/DMApp;->mAirModeState:Z

    .line 2814
    sget-object v2, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_6f

    .line 2815
    sget-object v2, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2817
    :cond_6f
    iget-object v2, p0, Lcom/samsung/client/DMApp$AirplaneModeReceiver;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 2818
    const/4 v0, 0x0

    .local v0, id:I
    :goto_78
    const/4 v2, 0x7

    if-ge v0, v2, :cond_87

    .line 2819
    iget-object v2, p0, Lcom/samsung/client/DMApp$AirplaneModeReceiver;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 2818
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 2821
    :cond_87
    iget-object v2, p0, Lcom/samsung/client/DMApp$AirplaneModeReceiver;->this$0:Lcom/samsung/client/DMApp;

    #getter for: Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/samsung/client/DMApp;->access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 2824
    .end local v0           #id:I
    :cond_90
    iget-object v2, p0, Lcom/samsung/client/DMApp$AirplaneModeReceiver;->this$0:Lcom/samsung/client/DMApp;

    iget-object v2, v2, Lcom/samsung/client/DMApp;->delayedBgNiaSession:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2839
    .end local v1           #isOn:Z
    :cond_97
    :goto_97
    return-void

    .line 2826
    .restart local v1       #isOn:Z
    :cond_98
    const-string v2, "DMApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AirplaneModeReceiver - OFF mNIAProgress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    sput-boolean v5, Lcom/samsung/client/DMApp;->mAirModeState:Z

    .line 2830
    sget-boolean v2, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    if-eqz v2, :cond_97

    .line 2831
    const-string v2, "DMApp"

    const-string v3, "AirplaneModeReceiver - OFF - mNIAProgress"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    iget-object v2, p0, Lcom/samsung/client/DMApp$AirplaneModeReceiver;->this$0:Lcom/samsung/client/DMApp;

    iget-object v2, v2, Lcom/samsung/client/DMApp;->delayStart:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2834
    const-string v2, "DMApp"

    const-string v3, "AirplaneModeReceiver - OFF -after delay.start()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97
.end method
