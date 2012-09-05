.class public Lcom/vlingo/client/car/ExitCarModeItem;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "ExitCarModeItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

.field private cancelButton:Landroid/widget/Button;

.field private commandText:Landroid/widget/TextView;

.field private exitButton:Landroid/widget/Button;

.field private messageHeaderView:Landroid/widget/TextView;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcom/vlingo/client/car/ExitCarModeItem;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vlingo/client/car/ExitCarModeItem;->cancelButton:Landroid/widget/Button;

    return-object p1
.end method

.method private getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "actionName"
    .parameter "parameterName"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/vlingo/client/car/ExitCarModeItem;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-virtual {v1, p1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->getActionByName(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v0

    .line 177
    .local v0, a:Lcom/vlingo/client/core/vlservice/response/Action;
    if-eqz v0, :cond_d

    .line 178
    invoke-virtual {v0, p2}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :goto_c
    return-object v1

    :cond_d
    const-string v1, ""

    goto :goto_c
.end method

.method public static newInstance(Lcom/vlingo/client/car/CarActivityDelegate;Lcom/vlingo/client/core/vlservice/response/ActionList;)Lcom/vlingo/client/car/ExitCarModeItem;
    .registers 6
    .parameter "delegate"
    .parameter "actionList"

    .prologue
    .line 48
    invoke-interface {p0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030009

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/ExitCarModeItem;

    .line 49
    .local v0, item:Lcom/vlingo/client/car/ExitCarModeItem;
    invoke-virtual {v0}, Lcom/vlingo/client/car/ExitCarModeItem;->initialize()V

    .line 50
    iput-object p1, v0, Lcom/vlingo/client/car/ExitCarModeItem;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    .line 51
    return-object v0
.end method

.method private setCommandText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "actionName"
    .parameter "parameterName"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/ExitCarModeItem;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, text:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/vlingo/client/car/ExitCarModeItem;->setCommandText(Ljava/lang/String;)V

    .line 172
    return-object v0
.end method

.method private setCommandText(Ljava/lang/String;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 163
    invoke-static {p1}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem;->commandText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_24
    return-void
.end method


# virtual methods
.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 195
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_exit_prompt"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public initialize()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method

.method public isRecognitionSupported()Z
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem;->exitButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_10

    .line 185
    iget-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    iget-object v1, p0, Lcom/vlingo/client/car/ExitCarModeItem;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->executeActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)V

    .line 186
    iget-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->taskFinished()V

    .line 188
    :cond_10
    return-void
.end method

.method public onDelegateAttached()V
    .registers 25

    .prologue
    .line 71
    invoke-super/range {p0 .. p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/ExitCarModeItem;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f030010

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/car/ExitCarModeItem;->cancelButton:Landroid/widget/Button;

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->cancelButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Lcom/vlingo/client/car/ExitCarModeItem$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vlingo/client/car/ExitCarModeItem$1;-><init>(Lcom/vlingo/client/car/ExitCarModeItem;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vlingo/client/car/ExitCarModeItem;->overloadingBottomContainer:Z

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->cancelButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/vlingo/client/car/CarActivityDelegate;->overloadBottomContainerWithView(Landroid/view/View;)V

    .line 84
    const-string v18, ""

    .line 85
    .local v18, tts:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->commandText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/ExitCarModeItem;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 88
    .local v12, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-object/from16 v21, v0

    const-string v22, "SocialPage"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsActionWithName(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_df

    .line 89
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v21

    const-string v22, "car-exit-prompt-social"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 90
    const v21, 0x7f09005c

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, socialUpdateMsg:Ljava/lang/String;
    const v21, 0x7f090077

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 92
    .local v14, socialUpdateTTS:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->messageHeaderView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "SocialPage"

    const-string v23, "Status"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->setCommandText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 154
    .end local v13           #socialUpdateMsg:Ljava/lang/String;
    .end local v14           #socialUpdateTTS:Ljava/lang/String;
    :goto_ab
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_de

    .line 155
    const v21, 0x7f0901fa

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, leaveVlingo:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    move-object/from16 v21, v0

    invoke-static/range {v18 .. v18}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 160
    .end local v6           #leaveVlingo:Ljava/lang/String;
    :cond_de
    return-void

    .line 94
    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-object/from16 v21, v0

    const-string v22, "WebSearchPage"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsActionWithName(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13a

    .line 95
    const v21, 0x7f0901d5

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 96
    .local v19, webSearchMsg:Ljava/lang/String;
    const v21, 0x7f09023a

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 97
    .local v20, webSearchTTS:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v21

    const-string v22, "car-exit-prompt-web"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->messageHeaderView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "WebSearchPage"

    const-string v23, "Search"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->setCommandText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 104
    goto/16 :goto_ab

    .end local v19           #webSearchMsg:Ljava/lang/String;
    .end local v20           #webSearchTTS:Ljava/lang/String;
    :cond_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-object/from16 v21, v0

    const-string v22, "Intent"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsActionWithName(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1ee

    .line 105
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v21

    const-string v22, "car-exit-prompt-intent"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 106
    const-string v21, "Intent"

    const-string v22, "IntentArgument"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, arg:Ljava/lang/String;
    const-string v21, "google.com/"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1c4

    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v21

    if-nez v21, :cond_1c4

    .line 108
    const v21, 0x7f0901d5

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 110
    .restart local v19       #webSearchMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->messageHeaderView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const-string v21, "Intent"

    const-string v22, "TTS"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "Web Search. "

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "Bing Search. "

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "Google Search. "

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, query:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/vlingo/client/car/ExitCarModeItem;->setCommandText(Ljava/lang/String;)V

    .line 118
    .end local v11           #query:Ljava/lang/String;
    .end local v19           #webSearchMsg:Ljava/lang/String;
    :goto_1b4
    const-string v21, "Intent"

    const-string v22, "TTS"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 119
    goto/16 :goto_ab

    .line 114
    :cond_1c4
    const v21, 0x7f0901ff

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, openMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->messageHeaderView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const-string v21, "Intent"

    const-string v22, "TTS"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/vlingo/client/car/ExitCarModeItem;->setCommandText(Ljava/lang/String;)V

    goto :goto_1b4

    .line 119
    .end local v3           #arg:Ljava/lang/String;
    .end local v10           #openMsg:Ljava/lang/String;
    :cond_1ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-object/from16 v21, v0

    const-string v22, "LocalSearchPage"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsActionWithName(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_245

    .line 120
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v21

    const-string v22, "car-exit-prompt-localsearch"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 121
    const v21, 0x7f0901fe

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, localSearchMsg:Ljava/lang/String;
    const v21, 0x7f090220

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, localSearchTTS:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->messageHeaderView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "LocalSearchPage"

    const-string v23, "Search"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->setCommandText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 125
    goto/16 :goto_ab

    .end local v7           #localSearchMsg:Ljava/lang/String;
    .end local v8           #localSearchTTS:Ljava/lang/String;
    :cond_245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-object/from16 v21, v0

    const-string v22, "EmailPage"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsActionWithName(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_33b

    .line 126
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v21

    const-string v22, "car-exit-prompt-email"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 127
    const v21, 0x7f0901fd

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, emailMsg:Ljava/lang/String;
    const v21, 0x7f09021b

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, emailTTS:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->messageHeaderView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const-string v16, ""

    .line 131
    .local v16, text:Ljava/lang/String;
    const-string v21, "EmailPage"

    const-string v22, "To"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 132
    .local v17, to:Ljava/lang/String;
    const-string v21, "EmailPage"

    const-string v22, "Subject"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 133
    .local v15, subject:Ljava/lang/String;
    const-string v21, "EmailPage"

    const-string v22, "Message"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, message:Ljava/lang/String;
    move-object/from16 v16, v17

    .line 136
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_2ca

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_2ca

    .line 137
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 138
    :cond_2ca
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 139
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_304

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_304

    .line 140
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 141
    :cond_304
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/vlingo/client/car/ExitCarModeItem;->setCommandText(Ljava/lang/String;)V

    .line 144
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 145
    goto/16 :goto_ab

    .end local v4           #emailMsg:Ljava/lang/String;
    .end local v5           #emailTTS:Ljava/lang/String;
    .end local v9           #message:Ljava/lang/String;
    .end local v15           #subject:Ljava/lang/String;
    .end local v16           #text:Ljava/lang/String;
    .end local v17           #to:Ljava/lang/String;
    :cond_33b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-object/from16 v21, v0

    const-string v22, "SuperDialBiz"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/core/vlservice/response/ActionList;->containsActionWithName(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_38e

    .line 146
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v21

    const-string v22, "car-exit-prompt-superdial"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/ExitCarModeItem;->messageHeaderView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x7f0901c7

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f090049

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "SuperDialBiz"

    const-string v23, "Query"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/ExitCarModeItem;->setCommandText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_ab

    .line 151
    :cond_38e
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v21

    const-string v22, "car-exit-prompt-unknown"

    invoke-virtual/range {v21 .. v22}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    goto/16 :goto_ab
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 56
    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/ExitCarModeItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem;->messageView:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0f0030

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/ExitCarModeItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem;->commandText:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/ExitCarModeItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem;->messageHeaderView:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0f0032

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/ExitCarModeItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem;->exitButton:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/car/ExitCarModeItem;->exitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method
