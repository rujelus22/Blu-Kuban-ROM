.class public Lcom/vlingo/client/car/memo/MemoController;
.super Ljava/lang/Object;
.source "MemoController.java"

# interfaces
.implements Lcom/vlingo/client/car/TaskController;
.implements Lcom/vlingo/client/car/asr/RecoResponder;
.implements Lcom/vlingo/client/car/memo/MemoMessageView$MemoMessageViewActionListener;
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;


# instance fields
.field protected final delegate:Lcom/vlingo/client/car/CarActivityDelegate;

.field private mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

.field private messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/memo/MemoController;)Lcom/vlingo/client/ui/VProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vlingo/client/car/memo/MemoController;Lcom/vlingo/client/ui/VProgressDialog;)Lcom/vlingo/client/ui/VProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/memo/MemoController;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/memo/MemoController;->sendAcceptedText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/memo/MemoController;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vlingo/client/car/memo/MemoController;Lcom/vlingo/client/core/tts/TTSDemand;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vlingo/client/car/memo/MemoController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    return-object p1
.end method

.method private checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter "demand"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/memo/MemoController;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 185
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/vlingo/client/car/memo/MemoController;->onMemoSaved()V

    .line 188
    :cond_17
    return-void
.end method

.method private sendAcceptedText(Ljava/lang/String;)V
    .registers 6
    .parameter "memo"

    .prologue
    .line 153
    const-string v0, "memo:def"

    .line 154
    .local v0, acceptedType:Ljava/lang/String;
    new-instance v1, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;

    invoke-direct {v1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;-><init>()V

    .line 155
    .local v1, collection:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v2, text:Ljava/lang/StringBuffer;
    const-string v3, "<AcceptedText pt=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const-string v3, "<Tag u=\"text\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v3, "</Tag>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v3, "</AcceptedText>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->setAcceptedText(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->sendStatsToServer(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V

    .line 165
    return-void
.end method


# virtual methods
.method public getCommandForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 98
    const-string v0, "memo"

    return-object v0
.end method

.method public getFieldIDForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 94
    const-string v0, "vp_car_main_sms"

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIconResourceID()I
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/vlingo/client/car/TaskController$TaskType;
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/memo/MemoController;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 169
    return-void
.end method

.method public onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/memo/MemoController;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 173
    return-void
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/memo/MemoController;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 177
    return-void
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 180
    return-void
.end method

.method public onMemoSaved()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/ui/VProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 145
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/ui/VProgressDialog;->dismiss()V

    .line 146
    iput-object v3, p0, Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    .line 148
    :cond_14
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->taskFinished()V

    .line 149
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "car-memo-saved"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageAction(Ljava/lang/String;Ljava/util/Vector;Z)V

    .line 150
    return-void
.end method

.method public onSaveMemo(Lcom/vlingo/client/car/memo/MemoMessageView;Ljava/lang/String;)V
    .registers 9
    .parameter "messageView"
    .parameter "message"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    check-cast v0, Lcom/vlingo/client/car/CarActivity;

    .line 110
    .local v0, activity:Lcom/vlingo/client/car/CarActivity;
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity;->onCancelButtonClicked()V

    .line 112
    iget-object v3, p0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 113
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, title:Ljava/lang/String;
    new-instance v3, Lcom/vlingo/client/ui/VProgressDialog;

    invoke-direct {v3, v1, v2}, Lcom/vlingo/client/ui/VProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    .line 115
    iget-object v3, p0, Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    new-instance v4, Lcom/vlingo/client/car/memo/MemoController$1;

    invoke-direct {v4, p0}, Lcom/vlingo/client/car/memo/MemoController$1;-><init>(Lcom/vlingo/client/car/memo/MemoController;)V

    invoke-virtual {v3, v4}, Lcom/vlingo/client/ui/VProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 123
    iget-object v3, p0, Lcom/vlingo/client/car/memo/MemoController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;

    invoke-virtual {v3}, Lcom/vlingo/client/ui/VProgressDialog;->show()V

    .line 125
    new-instance v3, Lcom/vlingo/client/car/memo/MemoController$2;

    invoke-direct {v3, p0, p2}, Lcom/vlingo/client/car/memo/MemoController$2;-><init>(Lcom/vlingo/client/car/memo/MemoController;Ljava/lang/String;)V

    const-wide/16 v4, 0x4e2

    invoke-static {v3, v4, v5}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 137
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v3

    const-string v4, "car-memo-saving"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public startMemoFlow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030040

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/memo/MemoMessageView;

    .line 48
    .local v0, mainScreen:Lcom/vlingo/client/car/memo/MemoMessageView;
    invoke-virtual {v0, v3, p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->initialize(Ljava/lang/String;Lcom/vlingo/client/car/memo/MemoMessageView$MemoMessageViewActionListener;)V

    .line 49
    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 50
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "car-memo-home"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public startMemoFlow(Ljava/lang/String;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 54
    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030040

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/memo/MemoMessageView;

    .line 55
    .local v0, mainScreen:Lcom/vlingo/client/car/memo/MemoMessageView;
    invoke-virtual {v0, p1, p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->initialize(Ljava/lang/String;Lcom/vlingo/client/car/memo/MemoMessageView$MemoMessageViewActionListener;)V

    .line 56
    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 57
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "car-memo-home"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 59
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_35

    .line 60
    :cond_29
    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->playErrorTone()V

    .line 61
    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SAY_MESSAGE:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v1, v2}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 63
    :cond_35
    return-void
.end method
