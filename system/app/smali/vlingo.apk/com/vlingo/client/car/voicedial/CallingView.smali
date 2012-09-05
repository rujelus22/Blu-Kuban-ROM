.class public Lcom/vlingo/client/car/voicedial/CallingView;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "CallingView.java"

# interfaces
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/voicedial/CallingView$VDCallingActionListener;
    }
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private contact:Lcom/vlingo/client/core/contacts/DisplayItem;

.field private dialTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

.field private listener:Lcom/vlingo/client/car/voicedial/CallingView$VDCallingActionListener;

.field private name:Ljava/lang/String;

.field private nameView:Landroid/widget/TextView;

.field private numberView:Landroid/widget/TextView;

.field private type:I

.field private typeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->dialTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/voicedial/CallingView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/CallingView;->doDial()V

    return-void
.end method

.method private checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;Z)V
    .registers 6
    .parameter "demand"
    .parameter "immediate"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->dialTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 207
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/CallingView;->removeTTSListener()V

    .line 210
    new-instance v2, Lcom/vlingo/client/car/voicedial/CallingView$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/car/voicedial/CallingView$1;-><init>(Lcom/vlingo/client/car/voicedial/CallingView;)V

    if-eqz p2, :cond_18

    const-wide/16 v0, 0x9c4

    :goto_14
    invoke-static {v2, v0, v1}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 216
    :cond_17
    return-void

    .line 210
    :cond_18
    const-wide/16 v0, 0x5dc

    goto :goto_14
.end method

.method private doDial()V
    .registers 4

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/CallingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 129
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->contact:Lcom/vlingo/client/core/contacts/DisplayItem;

    if-eqz v0, :cond_12

    .line 130
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->listener:Lcom/vlingo/client/car/voicedial/CallingView$VDCallingActionListener;

    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/CallingView;->contact:Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-interface {v0, p0, v1}, Lcom/vlingo/client/car/voicedial/CallingView$VDCallingActionListener;->onDialContact(Lcom/vlingo/client/car/voicedial/CallingView;Lcom/vlingo/client/core/contacts/DisplayItem;)V

    .line 138
    :cond_11
    :goto_11
    return-void

    .line 131
    :cond_12
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->address:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 132
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->listener:Lcom/vlingo/client/car/voicedial/CallingView$VDCallingActionListener;

    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/CallingView;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/CallingView;->address:Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Lcom/vlingo/client/car/voicedial/CallingView$VDCallingActionListener;->onDialContact(Lcom/vlingo/client/car/voicedial/CallingView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 135
    :cond_20
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    if-eqz v0, :cond_11

    .line 136
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->removeItemFromTask(Lcom/vlingo/client/car/CarScrollableItem;)V

    goto :goto_11
.end method

.method private initViews(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "type"
    .parameter "address"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/CallingView;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/CallingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, typeString:Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 85
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/CallingView;->typeView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/CallingView;->typeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_1a
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/CallingView;->numberView:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 89
    :cond_20
    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/CallingView;->typeView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a
.end method

.method private removeTTSListener()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->dialTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v0, :cond_10

    .line 153
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->dialTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 156
    :cond_10
    return-void
.end method

.method private sendAcceptedText(Ljava/lang/String;)V
    .registers 6
    .parameter "acceptedName"

    .prologue
    .line 172
    const-string v0, "dial:def"

    .line 173
    .local v0, acceptedType:Ljava/lang/String;
    new-instance v1, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;

    invoke-direct {v1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;-><init>()V

    .line 174
    .local v1, collection:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 175
    .local v2, text:Ljava/lang/StringBuffer;
    const-string v3, "<AcceptedText pt=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v3, "<Tag u=\"contact\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v3, "</Tag>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    const-string v3, "</AcceptedText>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->setAcceptedText(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->sendStatsToServer(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V

    .line 184
    return-void
.end method


# virtual methods
.method public initialize(Lcom/vlingo/client/car/voicedial/CallingView$VDCallingActionListener;Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 6
    .parameter "listener"
    .parameter "contact"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/CallingView;->listener:Lcom/vlingo/client/car/voicedial/CallingView$VDCallingActionListener;

    .line 63
    iput-object p2, p0, Lcom/vlingo/client/car/voicedial/CallingView;->contact:Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 65
    iget-object v0, p2, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->name:Ljava/lang/String;

    .line 66
    invoke-virtual {p2}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->type:I

    .line 67
    invoke-virtual {p2}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->address:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->name:Ljava/lang/String;

    iget v1, p0, Lcom/vlingo/client/car/voicedial/CallingView;->type:I

    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/CallingView;->address:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/vlingo/client/car/voicedial/CallingView;->initViews(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public initialize(Lcom/vlingo/client/car/voicedial/CallingView$VDCallingActionListener;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter "listener"
    .parameter "name"
    .parameter "type"
    .parameter "address"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/CallingView;->listener:Lcom/vlingo/client/car/voicedial/CallingView$VDCallingActionListener;

    .line 74
    iput-object p2, p0, Lcom/vlingo/client/car/voicedial/CallingView;->name:Ljava/lang/String;

    .line 75
    iput p3, p0, Lcom/vlingo/client/car/voicedial/CallingView;->type:I

    .line 76
    iput-object p4, p0, Lcom/vlingo/client/car/voicedial/CallingView;->address:Ljava/lang/String;

    .line 78
    invoke-direct {p0, p2, p3, p4}, Lcom/vlingo/client/car/voicedial/CallingView;->initViews(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public isRecognitionSupported()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onDelegateAttached()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 95
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 97
    iput-boolean v8, p0, Lcom/vlingo/client/car/voicedial/CallingView;->overloadingBottomContainer:Z

    .line 98
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/CallingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/CallingView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-interface {v4, v5}, Lcom/vlingo/client/car/CarActivityDelegate;->overloadBottomContainerWithView(Landroid/view/View;)V

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, callingConfirmString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 103
    .local v0, callingConfirmDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    const/4 v2, 0x0

    .line 104
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 105
    .local v3, type:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/CallingView;->contact:Lcom/vlingo/client/core/contacts/DisplayItem;

    if-eqz v4, :cond_53

    .line 106
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/CallingView;->contact:Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v4, v4, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v4}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/CallingView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/CallingView;->contact:Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 114
    :cond_36
    :goto_36
    if-nez v2, :cond_69

    .line 115
    sget-object v4, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_CALLING_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v4}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v1

    .line 120
    :goto_3e
    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->dialTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 122
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/CallingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 123
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/CallingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 125
    return-void

    .line 109
    :cond_53
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/CallingView;->name:Ljava/lang/String;

    if-eqz v4, :cond_36

    iget v4, p0, Lcom/vlingo/client/car/voicedial/CallingView;->type:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_36

    .line 110
    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/CallingView;->name:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/CallingView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/vlingo/client/car/voicedial/CallingView;->type:I

    invoke-static {v4, v5}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_36

    .line 117
    :cond_69
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/CallingView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090235

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    aput-object v3, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter "demand"

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/car/voicedial/CallingView;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;Z)V

    .line 192
    return-void
.end method

.method public onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter "demand"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/car/voicedial/CallingView;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;Z)V

    .line 196
    return-void
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter "demand"

    .prologue
    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/car/voicedial/CallingView;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;Z)V

    .line 200
    return-void
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 203
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 52
    const v0, 0x7f0f0040

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/CallingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->nameView:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0f0041

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/CallingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->typeView:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/CallingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->numberView:Landroid/widget/TextView;

    .line 55
    return-void
.end method

.method public onHidden()V
    .registers 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/CallingView;->removeTTSListener()V

    .line 147
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/CallingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->removeItemFromTask(Lcom/vlingo/client/car/CarScrollableItem;)V

    .line 148
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onHidden()V

    .line 149
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/CallingView;->removeTTSListener()V

    .line 142
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onRemoved()V

    .line 143
    return-void
.end method
