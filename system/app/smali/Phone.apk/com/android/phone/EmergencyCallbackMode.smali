.class public Lcom/android/phone/EmergencyCallbackMode;
.super Landroid/app/Activity;
.source "EmergencyCallbackMode.java"


# instance fields
.field private mCall:Landroid/widget/Button;

.field private mEmergencyCall:Landroid/widget/ImageView;

.field private mExit:Landroid/widget/Button;

.field private mHome:Landroid/widget/Button;

.field private mInstruction:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private onBtnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    new-instance v0, Lcom/android/phone/EmergencyCallbackMode$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackMode$1;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->onBtnClick:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lcom/android/phone/EmergencyCallbackMode$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackMode$2;-><init>(Lcom/android/phone/EmergencyCallbackMode;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackMode;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallbackMode;->handleBtnPress(Landroid/view/View;)V

    return-void
.end method

.method private handleBtnPress(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mEmergencyCall:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    .line 147
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->makeEmergencyCall()V

    .line 156
    :cond_7
    :goto_7
    return-void

    .line 148
    :cond_8
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_10

    .line 149
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->makeEmergencyCall()V

    goto :goto_7

    .line 150
    :cond_10
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mHome:Landroid/widget/Button;

    if-ne p1, v0, :cond_1c

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    goto :goto_7

    .line 153
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mExit:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 154
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    goto :goto_7
.end method

.method private makeEmergencyCall()V
    .registers 4

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    const-string v2, "tel:911"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->startActivity(Landroid/content/Intent;)V

    .line 135
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelEcbmNotification()V

    .line 136
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    .line 137
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->setContentView(I)V

    .line 73
    const v0, 0x7f0e04e9

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 79
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mInstruction:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mEmergencyCall:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mEmergencyCall:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->onBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mCall:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mCall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->onBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mHome:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mHome:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->onBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mExit:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mExit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->onBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->notifyECBM()V

    .line 90
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 95
    packed-switch p1, :pswitch_data_a

    .line 100
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 97
    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackMode;->makeEmergencyCall()V

    goto :goto_3

    .line 95
    nop

    :pswitch_data_a
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 114
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->mInstruction:Landroid/widget/TextView;

    const v2, 0x7f0e04eb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    :cond_1f
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/EmergencyCallbackMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const-string v1, "search"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    move-result-object v0

    .line 123
    .local v0, searchManagerService:Landroid/app/ISearchManager;
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    .line 107
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .registers 5
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v2, 0x40

    const/high16 v1, 0x8

    .line 173
    if-eqz p1, :cond_15

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 180
    :goto_14
    return-void

    .line 177
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_14
.end method
