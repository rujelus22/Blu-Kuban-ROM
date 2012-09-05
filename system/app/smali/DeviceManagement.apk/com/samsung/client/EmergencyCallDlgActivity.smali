.class public Lcom/samsung/client/EmergencyCallDlgActivity;
.super Landroid/app/Activity;
.source "EmergencyCallDlgActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;
    }
.end annotation


# static fields
.field private static final MUTEX:Ljava/lang/Object;


# instance fields
.field private click:Landroid/view/View$OnClickListener;

.field private dlg:Landroid/app/Dialog;

.field private dlgButton:Landroid/widget/Button;

.field private dlgText:Landroid/widget/TextView;

.field private dmApp:Lcom/samsung/client/DMApp;

.field private isCallingEmergency:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private rtm:Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/client/EmergencyCallDlgActivity;->MUTEX:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->isCallingEmergency:Z

    .line 41
    new-instance v0, Lcom/samsung/client/EmergencyCallDlgActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/client/EmergencyCallDlgActivity$1;-><init>(Lcom/samsung/client/EmergencyCallDlgActivity;)V

    iput-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->click:Landroid/view/View$OnClickListener;

    .line 190
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/client/EmergencyCallDlgActivity;->MUTEX:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/client/EmergencyCallDlgActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/client/EmergencyCallDlgActivity;->callEmergencyNumber()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/client/EmergencyCallDlgActivity;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/client/EmergencyCallDlgActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->isCallingEmergency:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/client/EmergencyCallDlgActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->isCallingEmergency:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/client/EmergencyCallDlgActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/client/EmergencyCallDlgActivity;->rebootDevice()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/client/EmergencyCallDlgActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlgText:Landroid/widget/TextView;

    return-object v0
.end method

.method private callEmergencyNumber()V
    .registers 4

    .prologue
    .line 140
    const-string v1, "EmergencyCallDlgActivity"

    const-string v2, "call emergency number requested"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->rtm:Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;

    invoke-virtual {v1}, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;->cancel()V

    .line 142
    invoke-direct {p0}, Lcom/samsung/client/EmergencyCallDlgActivity;->startPhoneStateListener()V

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    const-string v2, "tel:911"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/client/EmergencyCallDlgActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method private finishPhoneStateListener()V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_c

    .line 185
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 188
    :cond_c
    return-void
.end method

.method private rebootDevice()V
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/samsung/client/EmergencyCallDlgActivity;->finish()V

    .line 65
    invoke-direct {p0}, Lcom/samsung/client/EmergencyCallDlgActivity;->finishPhoneStateListener()V

    .line 66
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dmApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->launchHomeScreen()V

    .line 67
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dmApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->rebootDevice()V

    .line 68
    return-void
.end method

.method private startPhoneStateListener()V
    .registers 4

    .prologue
    .line 150
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/client/EmergencyCallDlgActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 153
    new-instance v0, Lcom/samsung/client/EmergencyCallDlgActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/client/EmergencyCallDlgActivity$2;-><init>(Lcom/samsung/client/EmergencyCallDlgActivity;)V

    iput-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 177
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 179
    const-string v0, "EmergencyCallDlgActivity"

    const-string v1, "Listener on ... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlgText:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlgButton:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->rtm:Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;

    invoke-virtual {v0}, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;->resume()V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dmApp:Lcom/samsung/client/DMApp;

    .line 59
    const-string v0, "EmergencyCallDlgActivity"

    const-string v1, "onCreate ..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/client/EmergencyCallDlgActivity;->showDialog(I)V

    .line 61
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 84
    const-string v0, "EmergencyCallDlgActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog ..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    packed-switch p1, :pswitch_data_6e

    .line 112
    const/4 v0, 0x0

    :goto_1c
    return-object v0

    .line 88
    :pswitch_1d
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;

    .line 89
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 90
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 92
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlgText:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlgButton:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlgText:Landroid/widget/TextView;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v0, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;

    const-wide/16 v2, 0x7850

    const-wide/16 v4, 0x12c

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;-><init>(Lcom/samsung/client/EmergencyCallDlgActivity;JJ)V

    iput-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->rtm:Lcom/samsung/client/EmergencyCallDlgActivity$RebootTimer;

    .line 108
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;

    goto :goto_1c

    .line 86
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 117
    sget-object v1, Lcom/samsung/client/EmergencyCallDlgActivity;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_3
    const-string v0, "EmergencyCallDlgActivity"

    const-string v2, "call emergency number on any Key down"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/samsung/client/EmergencyCallDlgActivity;->callEmergencyNumber()V

    .line 121
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_15

    .line 122
    iget-object v0, p0, Lcom/samsung/client/EmergencyCallDlgActivity;->dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 123
    const/4 v0, 0x1

    return v0

    .line 121
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 135
    const-string v0, "EmergencyCallDlgActivity"

    const-string v1, "onPause ..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/client/EmergencyCallDlgActivity;->dismissDialog(I)V

    .line 137
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    const-string v0, "EmergencyCallDlgActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method
