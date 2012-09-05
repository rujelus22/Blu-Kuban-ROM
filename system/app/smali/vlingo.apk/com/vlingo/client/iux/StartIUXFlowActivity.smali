.class public Lcom/vlingo/client/iux/StartIUXFlowActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "StartIUXFlowActivity.java"


# static fields
.field public static ACTION_TOS_ACCEPTED:Ljava/lang/String; = null

.field public static ACTION_TOS_DECLINED:Ljava/lang/String; = null

.field public static EXTRA_ONLY_TOS:Ljava/lang/String; = null

.field public static EXTRA_PENDING_INTENT:Ljava/lang/String; = null

.field public static IUX_ENABLED:Z = false

.field static final REQUEST_IUX_PAGE:I = 0x2

.field public static final RESULT_BACK:I = 0x3

.field public static final RESULT_NEXT:I = 0x2

.field public static final activity_list:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field public currentStep:I

.field m_onlyTOS:Z

.field m_pendingIntent:Landroid/app/PendingIntent;

.field private sentTOSBroadcast:Z

.field private tosDialogShown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 22
    const-string v0, "com.vlingo.client.iux.pending_intent"

    sput-object v0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->EXTRA_PENDING_INTENT:Ljava/lang/String;

    .line 23
    const-string v0, "com.vlingo.client.iux.only_tos"

    sput-object v0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->EXTRA_ONLY_TOS:Ljava/lang/String;

    .line 25
    const-string v0, "com.vlingo.client.samsung.tos.accepted"

    sput-object v0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->ACTION_TOS_ACCEPTED:Ljava/lang/String;

    .line 26
    const-string v0, "com.vlingo.client.samsung.tos.declined"

    sput-object v0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->ACTION_TOS_DECLINED:Ljava/lang/String;

    .line 28
    sput-boolean v1, Lcom/vlingo/client/iux/StartIUXFlowActivity;->IUX_ENABLED:Z

    .line 38
    new-array v0, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/vlingo/client/iux/UsingVlingoScreen;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->activity_list:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->m_pendingIntent:Landroid/app/PendingIntent;

    .line 52
    iput-boolean v1, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->m_onlyTOS:Z

    .line 82
    iput-boolean v1, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->tosDialogShown:Z

    .line 83
    iput-boolean v1, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->sentTOSBroadcast:Z

    return-void
.end method

.method public static isIUXComplete()Z
    .registers 2

    .prologue
    .line 45
    sget-boolean v0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->IUX_ENABLED:Z

    if-eqz v0, :cond_c

    .line 46
    const-string v0, "iux_complete"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method goBack()V
    .registers 3

    .prologue
    .line 112
    iget v0, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->currentStep:I

    if-lez v0, :cond_e

    .line 113
    iget v0, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->currentStep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->currentStep:I

    .line 114
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->showCurrentStep()V

    .line 119
    :goto_d
    return-void

    .line 116
    :cond_e
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "setup-exit"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->finish()V

    goto :goto_d
.end method

.method goForward()V
    .registers 3

    .prologue
    .line 102
    iget v0, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->currentStep:I

    sget-object v1, Lcom/vlingo/client/iux/StartIUXFlowActivity;->activity_list:[Ljava/lang/Class;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_10

    .line 103
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->onIUXComplete()V

    .line 104
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->finish()V

    .line 109
    :goto_f
    return-void

    .line 106
    :cond_10
    iget v0, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->currentStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->currentStep:I

    .line 107
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->showCurrentStep()V

    goto :goto_f
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x2

    .line 136
    if-ne p1, v0, :cond_8

    .line 137
    if-ne p2, v0, :cond_9

    .line 138
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->goForward()V

    .line 143
    :cond_8
    :goto_8
    return-void

    .line 140
    :cond_9
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->goBack()V

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a

    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->requestWindowFeature(I)Z

    .line 58
    invoke-virtual {p0, v4, v5}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->overridePendingTransition(II)V

    .line 59
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/iux/StartIUXFlowActivity;->EXTRA_ONLY_TOS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->m_onlyTOS:Z

    .line 61
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/iux/StartIUXFlowActivity;->EXTRA_PENDING_INTENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->m_pendingIntent:Landroid/app/PendingIntent;

    .line 62
    iput v3, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->currentStep:I

    .line 64
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 65
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_58

    .line 66
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSamsungDisclaimerAccepted()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTOSAccepted()Z

    move-result v1

    if-nez v1, :cond_58

    .line 69
    :cond_44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, i:Landroid/content/Intent;
    const-string v1, "Activity"

    const-string v2, "HomeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->finish()V

    .line 78
    .end local v0           #i:Landroid/content/Intent;
    :cond_58
    :goto_58
    invoke-virtual {p0, v4, v5}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->overridePendingTransition(II)V

    .line 80
    return-void

    .line 76
    :cond_5c
    invoke-virtual {p0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->showCurrentStep()V

    goto :goto_58
.end method

.method onIUXComplete()V
    .registers 4

    .prologue
    .line 122
    const-string v1, "iux_complete"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 123
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "setup-complete"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->m_pendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_18

    .line 126
    :try_start_13
    iget-object v1, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->m_pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_18
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_13 .. :try_end_18} :catch_19

    .line 132
    :cond_18
    :goto_18
    return-void

    .line 128
    :catch_19
    move-exception v0

    .line 129
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->tosDialogShown:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->sentTOSBroadcast:Z

    if-nez v0, :cond_12

    .line 88
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/vlingo/client/iux/StartIUXFlowActivity;->ACTION_TOS_DECLINED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    :cond_12
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onPause()V

    .line 91
    return-void
.end method

.method showCurrentStep()V
    .registers 4

    .prologue
    .line 94
    iget v1, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->currentStep:I

    if-nez v1, :cond_a

    .line 95
    const-string v1, "iux_started"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 97
    :cond_a
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/vlingo/client/iux/StartIUXFlowActivity;->activity_list:[Ljava/lang/Class;

    iget v2, p0, Lcom/vlingo/client/iux/StartIUXFlowActivity;->currentStep:I

    aget-object v1, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, in:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 99
    return-void
.end method
