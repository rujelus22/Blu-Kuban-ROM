.class public Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "SafeReaderMainScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vlingo/client/car/util/SMSReceiver$SMSReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;,
        Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$SafeReaderMainScreenListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

.field private btnSafeReaderEnabled:Landroid/widget/ToggleButton;

.field private listView:Landroid/widget/ListView;

.field private listener:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$SafeReaderMainScreenListener;

.field private smsReceiver:Lcom/vlingo/client/car/util/SMSReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;)Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$SafeReaderMainScreenListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->listener:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$SafeReaderMainScreenListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;)Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->adapter:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

    return-object v0
.end method

.method private registerSMSReceiver()V
    .registers 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->smsReceiver:Lcom/vlingo/client/car/util/SMSReceiver;

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    if-eqz v1, :cond_24

    .line 79
    new-instance v1, Lcom/vlingo/client/car/util/SMSReceiver;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/util/SMSReceiver;-><init>(Lcom/vlingo/client/car/util/SMSReceiver$SMSReceiverListener;)V

    iput-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->smsReceiver:Lcom/vlingo/client/car/util/SMSReceiver;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, in:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->smsReceiver:Lcom/vlingo/client/car/util/SMSReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    .end local v0           #in:Landroid/content/IntentFilter;
    :cond_24
    return-void
.end method

.method private unregisterSMSReceiver()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->smsReceiver:Lcom/vlingo/client/car/util/SMSReceiver;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    if-eqz v0, :cond_13

    .line 88
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->smsReceiver:Lcom/vlingo/client/car/util/SMSReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    :cond_13
    return-void
.end method


# virtual methods
.method public displayLabel()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public getHintDelay()I
    .registers 2

    .prologue
    .line 93
    const/16 v0, 0x1d4c

    return v0
.end method

.method public getRandomHint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vlingo/client/car/Hints;->getRandomHintForType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 154
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_safereader"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, prompt:Ljava/lang/String;
    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$SafeReaderMainScreenListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->listener:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$SafeReaderMainScreenListener;

    .line 109
    return-void
.end method

.method public lockScreenOnStartListen()Z
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->btnSafeReaderEnabled:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_1b

    .line 119
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->btnSafeReaderEnabled:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 120
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->start(Z)V

    .line 121
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_ON:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 128
    :cond_1b
    :goto_1b
    return-void

    .line 124
    :cond_1c
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->stop(Z)V

    .line 125
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_OFF:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_1b
.end method

.method public onDelegateAttached()V
    .registers 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 113
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->btnSafeReaderEnabled:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 114
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->registerSMSReceiver()V

    .line 115
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 67
    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->listView:Landroid/widget/ListView;

    .line 68
    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->btnSafeReaderEnabled:Landroid/widget/ToggleButton;

    .line 69
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->btnSafeReaderEnabled:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;-><init>(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$1;)V

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->adapter:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

    .line 72
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->adapter:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->adapter:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

    invoke-virtual {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;->notifyDataSetChanged()V

    .line 75
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->unregisterSMSReceiver()V

    .line 104
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onRemoved()V

    .line 105
    return-void
.end method

.method public onSMSRecieved()V
    .registers 4

    .prologue
    .line 229
    new-instance v0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$1;-><init>(Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 234
    return-void
.end method

.method public onShown()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onShown()V

    .line 99
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->adapter:Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;

    invoke-virtual {v0}, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen$RecentsAdaptor;->populateAsync()V

    .line 100
    return-void
.end method

.method public removeOnTaskStart()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public speakMessage(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V
    .registers 11
    .parameter "message"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090251

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->body:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, msgFormat:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Lcom/vlingo/client/core/tts/TTSDemand;

    .line 143
    .local v0, demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_MESSAGE_FROM:Lcom/vlingo/client/core/tts/TTSDemand;

    aput-object v2, v0, v7

    .line 144
    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    aput-object v2, v0, v8

    .line 145
    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/car/tts/CarTTSManager;->cancel()V

    .line 146
    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMainScreen;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 147
    return-void
.end method

.method public supportsHints()Z
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method
