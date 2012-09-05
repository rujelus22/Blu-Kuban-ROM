.class public Lcom/android/mms/ui/GreekInputHandler;
.super Landroid/content/BroadcastReceiver;
.source "GreekInputHandler.java"


# static fields
.field private static SIPLanguage:Ljava/lang/String;

.field private static isUiVisible:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, ""

    sput-object v0, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 3
    .parameter "activity"
    .parameter "composer"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 50
    return-void
.end method

.method public static isGreekInput(C)Z
    .registers 2
    .parameter "v"

    .prologue
    .line 239
    const/16 v0, 0x386

    if-eq v0, p0, :cond_18

    const/16 v0, 0x388

    if-gt v0, p0, :cond_c

    const/16 v0, 0x38a

    if-le p0, v0, :cond_18

    :cond_c
    const/16 v0, 0x38c

    if-gt v0, p0, :cond_14

    const/16 v0, 0x38f

    if-le p0, v0, :cond_18

    :cond_14
    const/16 v0, 0x3c2

    if-ne v0, p0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isSIPGreek()Z
    .registers 3

    .prologue
    .line 146
    const-string v1, "el"

    sget-object v2, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    .local v0, result:Z
    return v0
.end method

.method private setUpperCase(Z)V
    .registers 8
    .parameter "value"

    .prologue
    .line 132
    :try_start_0
    const-string v3, "Mms/GreekInputHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set upper:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.LANGUAGE_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "caps_status"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    .line 137
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 141
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_29
    return-void

    .line 138
    :catch_2a
    move-exception v1

    .line 139
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method private updateCapsStatus()V
    .registers 6

    .prologue
    .line 118
    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isBodyFocused()Z

    move-result v1

    .line 119
    .local v1, isBodyFocused:Z
    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isMms()Z

    move-result v2

    .line 120
    .local v2, isMms:Z
    iget-object v3, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    .line 122
    .local v0, inputMode:I
    const-string v3, "el"

    sget-object v4, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    if-nez v0, :cond_27

    if-eqz v1, :cond_27

    if-nez v2, :cond_27

    .line 124
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    .line 128
    :goto_26
    return-void

    .line 126
    :cond_27
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    goto :goto_26
.end method


# virtual methods
.method public onActivityCreate()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_19

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "inputLanguageAction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.swype.android.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    :cond_19
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/GreekInputHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    .line 63
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityCreate"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onActivityDestroyed()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/GreekInputHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityDestroyed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onActivityPause()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/android/mms/ui/GreekInputHandler;->setUpperCase(Z)V

    .line 83
    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    .line 85
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onActivityResume()V
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    .line 77
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 99
    const-string v2, "AxT9IME.inputLanguage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, skpdLanguage:Ljava/lang/String;
    const-string v2, "swype.inputLanguage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, swypeLanguage:Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 104
    sput-object v0, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    .line 106
    :cond_10
    if-eqz v1, :cond_14

    .line 107
    sput-object v1, Lcom/android/mms/ui/GreekInputHandler;->SIPLanguage:Ljava/lang/String;

    .line 109
    :cond_14
    const-string v2, "Mms/GreekInputHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, skpd lang:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/android/mms/ui/GreekInputHandler;->isSIPGreek()Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-boolean v2, Lcom/android/mms/ui/GreekInputHandler;->isUiVisible:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 113
    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    .line 115
    :cond_3a
    return-void
.end method

.method public onRemoveSubject()V
    .registers 3

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/GreekInputHandler;->updateCapsStatus()V

    .line 92
    const-string v0, "Mms/GreekInputHandler"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
