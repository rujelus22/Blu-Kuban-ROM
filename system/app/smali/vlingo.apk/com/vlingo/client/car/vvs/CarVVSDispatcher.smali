.class public Lcom/vlingo/client/car/vvs/CarVVSDispatcher;
.super Lcom/vlingo/client/vvs/VVSDispatcher;
.source "CarVVSDispatcher.java"


# instance fields
.field private final allowedActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final carActionHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/vlingo/client/car/vvs/CarVVSActionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final delegate:Lcom/vlingo/client/car/CarActivityDelegate;

.field protected lastResponse:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

.field private final prohibitedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useCarModeHandlers:Z


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/asr/RecoResponderChain;Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 6
    .parameter "responderChain"
    .parameter "delegate"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->useCarModeHandlers:Z

    .line 55
    invoke-static {}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->createProhibitedSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->prohibitedPackages:Ljava/util/Set;

    .line 63
    invoke-static {}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->createActionSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->allowedActions:Ljava/util/Set;

    .line 78
    iput-object p2, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->carActionHandlers:Ljava/util/Hashtable;

    .line 82
    const-string v0, "LPAction"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;

    invoke-direct {v1, p2, p1}, Lcom/vlingo/client/car/vvs/handlers/CarLPActionHandler;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;Lcom/vlingo/client/car/asr/RecoResponderChain;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 83
    const-string v0, "UpdatePage"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/CarUpdatePageHandler;

    invoke-direct {v1, p1}, Lcom/vlingo/client/car/vvs/handlers/CarUpdatePageHandler;-><init>(Lcom/vlingo/client/car/asr/RecoResponderChain;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 85
    const-string v0, "ReplyPage"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;

    invoke-direct {v1, p2}, Lcom/vlingo/client/car/vvs/handlers/CarReplyHandler;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 86
    const-string v0, "SMSPage"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/CarSMSHandler;

    invoke-direct {v1, p2}, Lcom/vlingo/client/car/vvs/handlers/CarSMSHandler;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 87
    const-string v0, "DialPage"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;

    invoke-direct {v1, p2}, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 88
    const-string v0, "SuperDialBiz"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;

    invoke-direct {v1, p2}, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 89
    const-string v0, "SpeakMessage"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/SpeakMessageHandler;

    invoke-direct {v1, p2}, Lcom/vlingo/client/car/vvs/handlers/SpeakMessageHandler;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 90
    const-string v0, "Readback"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/CarReadbackActionHandler;

    invoke-direct {v1, p2}, Lcom/vlingo/client/car/vvs/handlers/CarReadbackActionHandler;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 92
    const-string v0, "ShowMessage"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/CarShowMessageHandler;

    invoke-direct {v1, p2}, Lcom/vlingo/client/car/vvs/handlers/CarShowMessageHandler;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 93
    const-string v0, "Intent"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/CarIntentHandler;

    invoke-direct {v1, p2}, Lcom/vlingo/client/car/vvs/handlers/CarIntentHandler;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 95
    const-string v0, "WebSearchPage"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/CarWebSearchHandler;

    invoke-direct {v1, p2}, Lcom/vlingo/client/car/vvs/handlers/CarWebSearchHandler;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 96
    const-string v0, "NoteToSelfPage"

    new-instance v1, Lcom/vlingo/client/car/vvs/handlers/CarMemoHandler;

    invoke-direct {v1, p2}, Lcom/vlingo/client/car/vvs/handlers/CarMemoHandler;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 99
    const-string v0, "ShowPage"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/ShowPageHandler;

    const-class v2, Lcom/vlingo/client/car/CarHelpScreen;

    invoke-direct {v1, v2}, Lcom/vlingo/client/vvs/handlers/ShowPageHandler;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V

    .line 100
    return-void
.end method

.method private addCarHandler(Ljava/lang/String;Lcom/vlingo/client/car/vvs/CarVVSActionHandler;)V
    .registers 4
    .parameter "vvsActionName"
    .parameter "handler"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->carActionHandlers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method private static createActionSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 66
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "SetConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v1, "SetUpdate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "AuditLog"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v1, "ShowPage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v1, "PlayMedia"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v1, "Translate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "AddressBook"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static createProhibitedSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "com.twitter.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private markUnhandled(Lcom/vlingo/client/core/vlservice/response/Action;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    if-nez v0, :cond_b

    .line 212
    new-instance v0, Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-direct {v0}, Lcom/vlingo/client/core/vlservice/response/ActionList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 214
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->addElement(Lcom/vlingo/client/core/vlservice/response/Action;)V

    .line 215
    return-void
.end method

.method private prohibitedIntent(Landroid/content/Intent;)Z
    .registers 6
    .parameter "intent"

    .prologue
    .line 218
    if-eqz p1, :cond_1d

    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 220
    .local v0, comp:Landroid/content/ComponentName;
    if-eqz v0, :cond_1d

    .line 221
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_1d

    .line 223
    iget-object v2, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->prohibitedPackages:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 226
    .end local v0           #comp:Landroid/content/ComponentName;
    .end local v1           #name:Ljava/lang/String;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method


# virtual methods
.method protected executeAction(Landroid/content/Context;Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/AndroidActionEvaluator;)Z
    .registers 9
    .parameter "context"
    .parameter "action"
    .parameter "evaluator"

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-boolean v3, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->useCarModeHandlers:Z

    if-eqz v3, :cond_40

    .line 179
    invoke-virtual {p3, p2}, Lcom/vlingo/client/vvs/AndroidActionEvaluator;->evaluateAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 180
    iget-object v3, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->carActionHandlers:Ljava/util/Hashtable;

    iget-object v4, p2, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/vvs/CarVVSActionHandler;

    .line 182
    .local v0, handler:Lcom/vlingo/client/car/vvs/CarVVSActionHandler;
    if-eqz v0, :cond_30

    .line 184
    invoke-interface {v0, p2}, Lcom/vlingo/client/car/vvs/CarVVSActionHandler;->handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 186
    invoke-interface {v0, p2, p0}, Lcom/vlingo/client/car/vvs/CarVVSActionHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v1

    .line 187
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->prohibitedIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 188
    invoke-direct {p0, p2}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->markUnhandled(Lcom/vlingo/client/core/vlservice/response/Action;)V

    .line 206
    .end local v0           #handler:Lcom/vlingo/client/car/vvs/CarVVSActionHandler;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_2a
    return v2

    .line 191
    .restart local v0       #handler:Lcom/vlingo/client/car/vvs/CarVVSActionHandler;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2b
    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->launchIntent(Landroid/content/Intent;)V

    .line 192
    const/4 v2, 0x1

    goto :goto_2a

    .line 197
    .end local v1           #intent:Landroid/content/Intent;
    :cond_30
    iget-object v3, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->allowedActions:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/vlingo/client/core/vlservice/response/Action;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 199
    invoke-direct {p0, p2}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->markUnhandled(Lcom/vlingo/client/core/vlservice/response/Action;)V

    goto :goto_2a

    .line 206
    .end local v0           #handler:Lcom/vlingo/client/car/vvs/CarVVSActionHandler;
    :cond_40
    invoke-super {p0, p1, p2, p3}, Lcom/vlingo/client/vvs/VVSDispatcher;->executeAction(Landroid/content/Context;Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/AndroidActionEvaluator;)Z

    move-result v2

    goto :goto_2a
.end method

.method public getLastResults()Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->lastResponse:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    return-object v0
.end method

.method public processActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;Z)V
    .registers 4
    .parameter "actionList"
    .parameter "useCarModeHandlers"

    .prologue
    .line 171
    iput-boolean p2, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->useCarModeHandlers:Z

    .line 172
    invoke-virtual {p0, p1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->processActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)Z

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->useCarModeHandlers:Z

    .line 174
    return-void
.end method

.method public processActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)Z
    .registers 5
    .parameter "actionList"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/vlingo/client/vvs/VVSDispatcher;->processActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)Z

    move-result v0

    .line 163
    .local v0, result:Z
    iget-object v1, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    if-eqz v1, :cond_12

    .line 164
    iget-object v1, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    iget-object v2, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-interface {v1, v2}, Lcom/vlingo/client/car/CarActivityDelegate;->handleUnsupportedActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)V

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 167
    :cond_12
    return v0
.end method

.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 8
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 113
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->lastResponse:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    .line 114
    if-eqz p1, :cond_9b

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v4

    if-eqz v4, :cond_9b

    .line 115
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseType()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, pt:Ljava/lang/String;
    if-eqz v2, :cond_9b

    const-string v4, "car:unknown:def"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v4

    if-eqz v4, :cond_9b

    .line 118
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/RecResults;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, phrase:Ljava/lang/String;
    if-eqz v1, :cond_9b

    .line 120
    const-string v4, "who is my speaker"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 121
    invoke-virtual {p0}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/vlingo/client/car/CarEasterEggManager;->doEasterEgg(Landroid/content/Context;)V

    .line 155
    .end local v1           #phrase:Ljava/lang/String;
    .end local v2           #pt:Ljava/lang/String;
    :cond_44
    :goto_44
    return v3

    .line 124
    .restart local v1       #phrase:Ljava/lang/String;
    .restart local v2       #pt:Ljava/lang/String;
    :cond_45
    const-string v4, "bluetooth off"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_65

    const-string v4, "turn off bluetooth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_65

    const-string v4, "disable bluetooth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_65

    const-string v4, "bluetooth disable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 125
    :cond_65
    iget-object v4, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v5, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->BLUETOOTH_OFF:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v4, v5}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 126
    invoke-static {}, Lcom/vlingo/client/util/BluetoothUtil;->disableBluetooth()Z

    goto :goto_44

    .line 129
    :cond_70
    const-string v4, "bluetooth on"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_90

    const-string v4, "turn on bluetooth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_90

    const-string v4, "enable bluetooth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_90

    const-string v4, "bluetooth enable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 130
    :cond_90
    iget-object v4, p0, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v5, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->BLUETOOTH_ON:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v4, v5}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 131
    invoke-static {}, Lcom/vlingo/client/util/BluetoothUtil;->enableBluetooth()Z

    goto :goto_44

    .line 142
    .end local v1           #phrase:Ljava/lang/String;
    .end local v2           #pt:Ljava/lang/String;
    :cond_9b
    invoke-super {p0, p1}, Lcom/vlingo/client/vvs/VVSDispatcher;->resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z

    move-result v3

    .line 144
    .local v3, result:Z
    if-eqz p1, :cond_44

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasActions()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 145
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getActionList()Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-result-object v0

    .line 146
    .local v0, actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;
    const-string v4, "LPAction"

    invoke-virtual {v0, v4}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsActionWithName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d3

    const-string v4, "NoteToSelfPage"

    invoke-virtual {v0, v4}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsActionWithName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d3

    const-string v4, "SMSPage"

    invoke-virtual {v0, v4}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsActionWithName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d3

    const-string v4, "DialPage"

    invoke-virtual {v0, v4}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsActionWithName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d3

    const-string v4, "LaunchApp"

    invoke-virtual {v0, v4}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsActionWithName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 151
    :cond_d3
    const/4 v3, 0x0

    goto/16 :goto_44
.end method
