.class public Lcom/vlingo/client/vvs/VVSDispatcher;
.super Lcom/vlingo/client/asr/ResultDispatcher;
.source "VVSDispatcher.java"


# instance fields
.field private final actionHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/vlingo/client/vvs/VVSActionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private m_Custom6Context:Ljava/lang/String;

.field private final ttsQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/vlingo/client/asr/ResultDispatcher;-><init>()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->m_Custom6Context:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->actionHandlers:Ljava/util/Hashtable;

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->ttsQueue:Ljava/util/Vector;

    .line 69
    const-string v0, "ShowMessage"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 71
    const-string v0, "WebSearchPage"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/WebSearchHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/WebSearchHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 74
    const-string v0, "NoteToSelfPage"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/MemoHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/MemoHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 76
    const-string v0, "SMSPage"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/SMSHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/SMSHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 77
    const-string v0, "ReplyPage"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/ReplyPageHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 78
    const-string v0, "EmailPage"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/EmailHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/EmailHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 79
    const-string v0, "SocialPage"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/SocialPageHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/SocialPageHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 80
    const-string v0, "LocalSearchPage"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/LocalSearchHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/LocalSearchHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 82
    const-string v0, "DialPage"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;

    invoke-direct {v1, v2, v2}, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;-><init>(ZZ)V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 83
    const-string v0, "SuperDialContact"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;

    invoke-direct {v1, v2, v3}, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;-><init>(ZZ)V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 84
    const-string v0, "SuperDialBiz"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;

    invoke-direct {v1, v3, v3}, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;-><init>(ZZ)V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 86
    const-string v0, "AnswerQuestion"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/AnswerQuestionHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/AnswerQuestionHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 88
    const-string v0, "AddressBook"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/AddressBookHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/AddressBookHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 90
    const-string v0, "Intent"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/IntentHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/IntentHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 91
    const-string v0, "LaunchApp"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/LaunchHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 92
    const-string v0, "SetConfig"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/SetConfigHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/SetConfigHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 93
    const-string v0, "SetUpdate"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/SetUpdateHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/SetUpdateHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 94
    const-string v0, "ShowPage"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/ShowPageHandler;

    const-class v2, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-direct {v1, v2}, Lcom/vlingo/client/vvs/handlers/ShowPageHandler;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 96
    const-string v0, "LPAction"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/LPActionHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/LPActionHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 97
    const-string v0, "AuditLog"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/AuditLogHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/AuditLogHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 98
    const-string v0, "PlayMedia"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/PlayMediaHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/PlayMediaHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 99
    const-string v0, "Translate"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/TranslateHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/TranslateHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 100
    const-string v0, "SetAlarm"

    new-instance v1, Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected addHandler(Ljava/lang/String;Lcom/vlingo/client/vvs/VVSActionHandler;)V
    .registers 4
    .parameter "vvsActionName"
    .parameter "handler"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->actionHandlers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public addTTS(Ljava/lang/String;)V
    .registers 3
    .parameter "tts"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->ttsQueue:Ljava/util/Vector;

    if-eqz v0, :cond_9

    .line 284
    iget-object v0, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->ttsQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_9
    return-void
.end method

.method public broadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 257
    if-eqz p2, :cond_5

    .line 258
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 260
    :cond_5
    return-void
.end method

.method public broadcastIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/vlingo/client/vvs/VVSDispatcher;->broadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method protected canHandleAllActions(Lcom/vlingo/client/core/vlservice/response/ActionList;)Z
    .registers 6
    .parameter "actionList"

    .prologue
    .line 112
    if-eqz p1, :cond_20

    .line 113
    invoke-virtual {p1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 114
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 115
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, action:Ljava/lang/Object;
    if-eqz v0, :cond_6

    .line 117
    iget-object v2, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->actionHandlers:Ljava/util/Hashtable;

    check-cast v0, Lcom/vlingo/client/core/vlservice/response/Action;

    .end local v0           #action:Ljava/lang/Object;
    iget-object v3, v0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 118
    const/4 v2, 0x0

    .line 123
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x1

    goto :goto_1f
.end method

.method public custom6Context()Ljava/lang/String;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->m_Custom6Context:Ljava/lang/String;

    return-object v0
.end method

.method protected executeAction(Landroid/content/Context;Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/AndroidActionEvaluator;)Z
    .registers 15
    .parameter "context"
    .parameter "action"
    .parameter "evaluator"

    .prologue
    const/4 v10, 0x0

    .line 170
    const/4 v5, 0x0

    .line 174
    .local v5, result:Z
    invoke-virtual {p3, p2}, Lcom/vlingo/client/vvs/AndroidActionEvaluator;->evaluateAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 177
    iget-object v8, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->actionHandlers:Ljava/util/Hashtable;

    iget-object v9, p2, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/vvs/VVSActionHandler;

    .line 178
    .local v1, handler:Lcom/vlingo/client/vvs/VVSActionHandler;
    if-nez v1, :cond_26

    .line 183
    iget-object v8, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    if-nez v8, :cond_1f

    .line 184
    new-instance v8, Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-direct {v8}, Lcom/vlingo/client/core/vlservice/response/ActionList;-><init>()V

    iput-object v8, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 186
    :cond_1f
    iget-object v8, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v8, p2}, Lcom/vlingo/client/core/vlservice/response/ActionList;->addElement(Lcom/vlingo/client/core/vlservice/response/Action;)V

    move v6, v5

    .line 219
    .end local v1           #handler:Lcom/vlingo/client/vvs/VVSActionHandler;
    .end local v5           #result:Z
    .local v6, result:I
    :goto_25
    return v6

    .line 190
    .end local v6           #result:I
    .restart local v1       #handler:Lcom/vlingo/client/vvs/VVSActionHandler;
    .restart local v5       #result:Z
    :cond_26
    invoke-interface {v1, p2, p0}, Lcom/vlingo/client/vvs/VVSActionHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v2

    .line 191
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_2e

    move v6, v5

    .line 194
    .restart local v6       #result:I
    goto :goto_25

    .line 197
    .end local v6           #result:I
    :cond_2e
    const/4 v5, 0x1

    .line 198
    iget-object v8, p2, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    const-string v9, "PlayMedia"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 199
    const-string v8, "Type"

    invoke-virtual {p2, v8}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, type:[Ljava/lang/String;
    aget-object v8, v7, v10

    const-string v9, "Music"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 201
    invoke-static {v2}, Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;->getBroadcastIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, broadcastIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/vlingo/client/vvs/VVSDispatcher;->launchIntent(Landroid/content/Intent;)V

    .line 203
    if-eqz v0, :cond_5b

    .line 204
    invoke-virtual {p0, v0}, Lcom/vlingo/client/vvs/VVSDispatcher;->broadcastIntent(Landroid/content/Intent;)V

    .end local v0           #broadcastIntent:Landroid/content/Intent;
    .end local v1           #handler:Lcom/vlingo/client/vvs/VVSActionHandler;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #type:[Ljava/lang/String;
    :cond_5b
    :goto_5b
    move v6, v5

    .line 219
    .restart local v6       #result:I
    goto :goto_25

    .line 206
    .end local v6           #result:I
    .restart local v1       #handler:Lcom/vlingo/client/vvs/VVSActionHandler;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #type:[Ljava/lang/String;
    :cond_5d
    aget-object v8, v7, v10

    const-string v9, "Radio"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 207
    new-instance v3, Lcom/vlingo/client/vvs/handlers/PlayRadioHandler;

    invoke-direct {v3}, Lcom/vlingo/client/vvs/handlers/PlayRadioHandler;-><init>()V

    .line 208
    .local v3, prh:Lcom/vlingo/client/vvs/handlers/PlayRadioHandler;
    invoke-virtual {v3, p2, p0}, Lcom/vlingo/client/vvs/handlers/PlayRadioHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v4

    .line 209
    .local v4, radioIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/vlingo/client/vvs/VVSDispatcher;->broadcastIntent(Landroid/content/Intent;)V

    goto :goto_5b

    .line 212
    .end local v3           #prh:Lcom/vlingo/client/vvs/handlers/PlayRadioHandler;
    .end local v4           #radioIntent:Landroid/content/Intent;
    :cond_74
    invoke-virtual {p0, v2}, Lcom/vlingo/client/vvs/VVSDispatcher;->launchIntent(Landroid/content/Intent;)V

    goto :goto_5b

    .line 216
    .end local v7           #type:[Ljava/lang/String;
    :cond_78
    invoke-virtual {p0, v2}, Lcom/vlingo/client/vvs/VVSDispatcher;->launchIntent(Landroid/content/Intent;)V

    goto :goto_5b
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 263
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    return-object v0
.end method

.method public launchIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vlingo/client/vvs/VVSDispatcher;->launchIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 228
    return-void
.end method

.method public launchIntent(Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 8
    .parameter "context"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 235
    if-eqz p2, :cond_13

    .line 237
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string v2, "android.intent.action.SET_ALARM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 240
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    .end local v0           #action:Ljava/lang/String;
    :cond_13
    :goto_13
    return-void

    .line 243
    .restart local v0       #action:Ljava/lang/String;
    :cond_14
    const/high16 v2, 0x1401

    or-int/2addr v2, p3

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_1d} :catch_1e

    goto :goto_13

    .line 246
    .end local v0           #action:Ljava/lang/String;
    :catch_1e
    move-exception v1

    .line 247
    .local v1, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090304

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_13
.end method

.method public launchIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->launchIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 224
    return-void
.end method

.method public launchIntent(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->launchIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 232
    return-void
.end method

.method public notifyWorking()V
    .registers 2

    .prologue
    .line 303
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 304
    iget-object v0, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->ttsQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 305
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->Connect()Z

    .line 307
    :cond_12
    return-void
.end method

.method protected declared-synchronized playTTS()V
    .registers 5

    .prologue
    .line 288
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->ttsQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    .line 289
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    iget-object v3, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->ttsQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 291
    iget-object v3, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->ttsQueue:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 295
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vlingo/client/core/tts/TTSDemand;->genConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    .line 296
    .local v2, tts:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 298
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuffer;
    .end local v2           #tts:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_39
    iget-object v3, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->ttsQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 299
    monitor-exit p0

    return-void

    .line 288
    :catchall_40
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public processActionList(Landroid/content/Context;Lcom/vlingo/client/core/vlservice/response/ActionList;)Z
    .registers 11
    .parameter "context"
    .parameter "actionList"

    .prologue
    .line 132
    const/4 v4, 0x0

    .line 133
    .local v4, result:Z
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 134
    if-eqz p2, :cond_4f

    .line 135
    new-instance v3, Lcom/vlingo/client/vvs/AndroidActionEvaluator;

    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/vlingo/client/vvs/AndroidActionEvaluator;-><init>(Landroid/content/Context;)V

    .line 136
    .local v3, evaluator:Lcom/vlingo/client/vvs/AndroidActionEvaluator;
    invoke-virtual {p2}, Lcom/vlingo/client/core/vlservice/response/ActionList;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 137
    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    const/4 v5, 0x0

    .line 138
    .local v5, showMsg:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 139
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/vlservice/response/Action;

    .line 140
    .local v0, action:Lcom/vlingo/client/core/vlservice/response/Action;
    if-eqz v0, :cond_14

    .line 141
    iget-object v6, v0, Lcom/vlingo/client/core/vlservice/response/Action;->name:Ljava/lang/String;

    const-string v7, "ShowMessage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v0}, Lcom/vlingo/client/core/vlservice/response/Action;->isConditional()Z

    move-result v6

    if-nez v6, :cond_34

    .line 143
    move-object v5, v0

    .line 144
    goto :goto_14

    .line 148
    :cond_34
    invoke-virtual {p0, p1, v0, v3}, Lcom/vlingo/client/vvs/VVSDispatcher;->executeAction(Landroid/content/Context;Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/AndroidActionEvaluator;)Z

    move-result v4

    goto :goto_14

    .line 151
    .end local v0           #action:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_39
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->playTTS()V

    .line 152
    if-eqz v5, :cond_4f

    .line 153
    invoke-virtual {p2}, Lcom/vlingo/client/core/vlservice/response/ActionList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4c

    .line 155
    :try_start_45
    monitor-enter v5
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_46} :catch_53

    .line 156
    const-wide/16 v6, 0x1f4

    :try_start_48
    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 157
    monitor-exit v5
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_50

    .line 162
    :cond_4c
    :goto_4c
    invoke-virtual {p0, p1, v5, v3}, Lcom/vlingo/client/vvs/VVSDispatcher;->executeAction(Landroid/content/Context;Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/AndroidActionEvaluator;)Z

    .line 165
    .end local v1           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v3           #evaluator:Lcom/vlingo/client/vvs/AndroidActionEvaluator;
    .end local v5           #showMsg:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_4f
    return v4

    .line 157
    .restart local v1       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v3       #evaluator:Lcom/vlingo/client/vvs/AndroidActionEvaluator;
    .restart local v5       #showMsg:Lcom/vlingo/client/core/vlservice/response/Action;
    :catchall_50
    move-exception v6

    :try_start_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v6
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_53} :catch_53

    .line 158
    :catch_53
    move-exception v2

    .line 159
    .local v2, e1:Ljava/lang/InterruptedException;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public processActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)Z
    .registers 3
    .parameter "actionList"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/vlingo/client/vvs/VVSDispatcher;->processActionList(Landroid/content/Context;Lcom/vlingo/client/core/vlservice/response/ActionList;)Z

    move-result v0

    return v0
.end method

.method public resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
    .registers 7
    .parameter "response"

    .prologue
    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, result:Z
    if-eqz p1, :cond_2c

    .line 269
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getActionList()Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vlingo/client/vvs/VVSDispatcher;->processActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)Z

    move-result v2

    .line 271
    iget-object v3, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->unhandledActions:Lcom/vlingo/client/core/vlservice/response/ActionList;

    if-eqz v3, :cond_2c

    .line 272
    invoke-static {}, Lcom/vlingo/client/core/asr/RecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/asr/RecognitionManager;->getMessageDialog()Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    move-result-object v1

    .line 273
    .local v1, msgDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09023b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, msg:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-interface {v1, v0, v3, v4}, Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;->displayMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    const/4 v2, 0x0

    .line 279
    .end local v0           #msg:Ljava/lang/String;
    .end local v1           #msgDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;
    :cond_2c
    return v2
.end method

.method public setCustom6Context(Ljava/lang/String;)V
    .registers 2
    .parameter "custom6Context"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/vlingo/client/vvs/VVSDispatcher;->m_Custom6Context:Ljava/lang/String;

    .line 317
    return-void
.end method
