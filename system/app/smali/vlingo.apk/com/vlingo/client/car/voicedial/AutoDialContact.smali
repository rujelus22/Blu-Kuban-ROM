.class public Lcom/vlingo/client/car/voicedial/AutoDialContact;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "AutoDialContact.java"

# interfaces
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/voicedial/AutoDialContact$AutoDialContactActionListener;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x1388


# instance fields
.field private audioDialCountdownTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

.field private autoDialView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

.field private cancelButton:Landroid/widget/Button;

.field private cancelled:Z

.field private item:Lcom/vlingo/client/core/contacts/DisplayItem;

.field private nameView:Landroid/widget/TextView;

.field private numberView:Landroid/widget/TextView;

.field private typeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->cancelled:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->audioDialCountdownTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcom/vlingo/client/car/voicedial/AutoDialContact;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->cancelled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/voicedial/AutoDialContact;)Lcom/vlingo/client/contacts/AutoDialCountDownView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->autoDialView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vlingo/client/car/voicedial/AutoDialContact;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->overloadingBottomContainer:Z

    return p1
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/voicedial/AutoDialContact;)Lcom/vlingo/client/car/CarActivityDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vlingo/client/car/voicedial/AutoDialContact;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->cancelButton:Landroid/widget/Button;

    return-object p1
.end method

.method private onGoingAway()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->autoDialView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->cancel()V

    .line 122
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->removeTTSListener()V

    .line 123
    return-void
.end method

.method private onTTSFinished(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter "demand"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->audioDialCountdownTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 166
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->removeTTSListener()V

    .line 167
    iget-boolean v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->cancelled:Z

    if-nez v0, :cond_14

    .line 168
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->autoDialView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->start()V

    .line 171
    :cond_14
    return-void
.end method

.method private removeTTSListener()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->audioDialCountdownTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v0, :cond_10

    .line 175
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->audioDialCountdownTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 178
    :cond_10
    return-void
.end method


# virtual methods
.method public initialize(Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/car/voicedial/AutoDialContact$AutoDialContactActionListener;Ljava/lang/String;)V
    .registers 7
    .parameter "item"
    .parameter "listener"
    .parameter "text"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->item:Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 62
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->nameView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->typeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->numberView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->autoDialView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->setDuration(J)V

    .line 67
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->autoDialView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    new-instance v1, Lcom/vlingo/client/car/voicedial/AutoDialContact$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/vlingo/client/car/voicedial/AutoDialContact$1;-><init>(Lcom/vlingo/client/car/voicedial/AutoDialContact;Lcom/vlingo/client/car/voicedial/AutoDialContact$AutoDialContactActionListener;Lcom/vlingo/client/core/contacts/DisplayItem;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public isRecognitionSupported()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public onDelegateAttached()V
    .registers 5

    .prologue
    .line 81
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 83
    const v1, 0x7f03003d

    .line 84
    .local v1, res:I
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x7f0f0044

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->cancelButton:Landroid/widget/Button;

    .line 86
    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->cancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/vlingo/client/car/voicedial/AutoDialContact$2;

    invoke-direct {v3, p0}, Lcom/vlingo/client/car/voicedial/AutoDialContact$2;-><init>(Lcom/vlingo/client/car/voicedial/AutoDialContact;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->overloadingBottomContainer:Z

    .line 98
    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->overloadBottomContainerWithView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->onTTSFinished(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 150
    return-void
.end method

.method public onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->onTTSFinished(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 154
    return-void
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->onTTSFinished(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 158
    return-void
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 162
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 51
    const v0, 0x7f0f0040

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->nameView:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0f0041

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->typeView:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->numberView:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0f0010

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/contacts/AutoDialCountDownView;

    iput-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->autoDialView:Lcom/vlingo/client/contacts/AutoDialCountDownView;

    .line 55
    return-void
.end method

.method public onHidden()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->onGoingAway()V

    .line 127
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onHidden()V

    .line 128
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->onGoingAway()V

    .line 132
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onRemoved()V

    .line 133
    return-void
.end method

.method public onShown()V
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 102
    iget-boolean v1, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->shownForTheFirstTime:Z

    .line 103
    .local v1, firstTime:Z
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onShown()V

    .line 105
    if-eqz v1, :cond_57

    .line 106
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->item:Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, type:Ljava/lang/String;
    new-array v0, v6, [Lcom/vlingo/client/core/tts/TTSDemand;

    .line 109
    .local v0, demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    sget-object v4, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->VD_CALLING_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    aput-object v4, v0, v9

    .line 110
    invoke-virtual {p0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090255

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->item:Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v7, v7, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v7}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v3, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, nameTypeFormat:Ljava/lang/String;
    invoke-static {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v4

    aput-object v4, v0, v8

    .line 113
    aget-object v4, v0, v8

    iput-object v4, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->audioDialCountdownTriggerDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 115
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 116
    iget-object v4, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 118
    .end local v0           #demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    .end local v2           #nameTypeFormat:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    :cond_57
    return-void
.end method

.method public supportsAutoListen()Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
