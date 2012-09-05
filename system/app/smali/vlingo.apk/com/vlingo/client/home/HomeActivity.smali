.class public Lcom/vlingo/client/home/HomeActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/vlingo/client/scroller/ScrollableItemChangeListener;
.implements Lcom/vlingo/client/home/RecoButton$RecoButtonListener;
.implements Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/home/HomeActivity$6;,
        Lcom/vlingo/client/home/HomeActivity$RecognizerListener;
    }
.end annotation


# static fields
.field private static final ERROR_MSG_DURATION:J = 0x5dcL

.field public static final MENU_DEBUG:I = 0x67

.field public static final MENU_RESET:I = 0x69

.field public static final MENU_SPEEDTEST:I = 0x68


# instance fields
.field private consecutiveLeftCount:I

.field private dispatcher:Lcom/vlingo/client/vvs/VVSDispatcher;

.field private enableDebugMenu:Z

.field private hintList:Lcom/vlingo/client/home/HintList;

.field private initialLaunch:Z

.field private language:Ljava/lang/String;

.field private mainMenu:Landroid/view/Menu;

.field private recoButton:Lcom/vlingo/client/home/RecoButton;

.field private recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;

.field protected recognizer:Lcom/vlingo/client/asr/VLRecognizer;

.field private safeReaderStateReceiver:Landroid/content/BroadcastReceiver;

.field private safeReaderToggleHandler:Landroid/os/Handler;

.field private scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/home/HomeActivity;->initialLaunch:Z

    .line 81
    iput-boolean v1, p0, Lcom/vlingo/client/home/HomeActivity;->enableDebugMenu:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->safeReaderToggleHandler:Landroid/os/Handler;

    .line 603
    iput v1, p0, Lcom/vlingo/client/home/HomeActivity;->consecutiveLeftCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/home/HomeActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->safeReaderToggleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/home/HomeActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vlingo/client/home/HomeActivity;->loadHints()V

    return-void
.end method

.method static synthetic access$300(Lcom/vlingo/client/home/HomeActivity;)Lcom/vlingo/client/home/RecoStatusArea;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vlingo/client/home/HomeActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/vlingo/client/home/HomeActivity;->enableDebugMenu:Z

    return p1
.end method

.method private addDebugOptionsToMenu()V
    .registers 7

    .prologue
    const v5, 0x7f0200af

    const/4 v4, 0x0

    .line 300
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->mainMenu:Landroid/view/Menu;

    const/16 v1, 0x67

    const/high16 v2, 0x3

    const-string v3, "Debug Settings"

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 301
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->mainMenu:Landroid/view/Menu;

    const/16 v1, 0x68

    const v2, 0x30001

    const-string v3, "Speed Test"

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 302
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->mainMenu:Landroid/view/Menu;

    const/16 v1, 0x69

    const v2, 0x30002

    const-string v3, "Reset IUX"

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 303
    return-void
.end method

.method private initViews()V
    .registers 3

    .prologue
    .line 144
    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HomeActivity;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vlingo/client/ui/UIUtils;->setActivityBackgroundToDrawable(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 147
    const v0, 0x7f0f0149

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/home/RecoButton;

    iput-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    .line 148
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v0}, Lcom/vlingo/client/home/RecoButton;->showTapAndSpeak()V

    .line 149
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v0, p0}, Lcom/vlingo/client/home/RecoButton;->setListener(Lcom/vlingo/client/home/RecoButton$RecoButtonListener;)V

    .line 151
    const v0, 0x7f0f0146

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/home/RecoStatusArea;

    iput-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;

    .line 152
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;

    invoke-virtual {v0}, Lcom/vlingo/client/home/RecoStatusArea;->showMic()V

    .line 154
    new-instance v0, Lcom/vlingo/client/home/HintList;

    invoke-direct {v0}, Lcom/vlingo/client/home/HintList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->hintList:Lcom/vlingo/client/home/HintList;

    .line 156
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/scroller/ScrollableContainer;

    iput-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    .line 157
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0, p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->setChangeListener(Lcom/vlingo/client/scroller/ScrollableItemChangeListener;)V

    .line 158
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->init()V

    .line 160
    invoke-direct {p0}, Lcom/vlingo/client/home/HomeActivity;->loadHints()V

    .line 161
    return-void
.end method

.method private loadHints()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const v4, 0x7f030056

    .line 622
    iget-object v3, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v3}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeAllViews()V

    .line 623
    iget-object v3, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 624
    iget-object v3, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 625
    iget-object v3, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 627
    iget-object v3, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v3, v5}, Lcom/vlingo/client/scroller/ScrollableContainer;->setCurrentScreenIndex(I)V

    .line 629
    iget-object v3, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/home/HintScrollableItem;

    .line 630
    .local v1, leftItem:Lcom/vlingo/client/home/HintScrollableItem;
    iget-object v3, p0, Lcom/vlingo/client/home/HomeActivity;->hintList:Lcom/vlingo/client/home/HintList;

    invoke-virtual {v3}, Lcom/vlingo/client/home/HintList;->getPreviousHint()Lcom/vlingo/client/home/Hint;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/vlingo/client/home/HintScrollableItem;->init(Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;Lcom/vlingo/client/home/Hint;)V

    .line 632
    iget-object v3, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v3, v5}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/home/HintScrollableItem;

    .line 633
    .local v0, currentItem:Lcom/vlingo/client/home/HintScrollableItem;
    iget-object v3, p0, Lcom/vlingo/client/home/HomeActivity;->hintList:Lcom/vlingo/client/home/HintList;

    invoke-virtual {v3}, Lcom/vlingo/client/home/HintList;->getCurrentHint()Lcom/vlingo/client/home/Hint;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/vlingo/client/home/HintScrollableItem;->init(Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;Lcom/vlingo/client/home/Hint;)V

    .line 635
    iget-object v3, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/home/HintScrollableItem;

    .line 636
    .local v2, rightItem:Lcom/vlingo/client/home/HintScrollableItem;
    iget-object v3, p0, Lcom/vlingo/client/home/HomeActivity;->hintList:Lcom/vlingo/client/home/HintList;

    invoke-virtual {v3}, Lcom/vlingo/client/home/HintList;->getNextHint()Lcom/vlingo/client/home/Hint;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/vlingo/client/home/HintScrollableItem;->init(Lcom/vlingo/client/home/HintScrollableItem$HintItemListener;Lcom/vlingo/client/home/Hint;)V

    .line 637
    return-void
.end method

.method private processScrollForDebugging(I)V
    .registers 5
    .parameter "newItemIndex"

    .prologue
    const/4 v2, 0x0

    .line 584
    if-nez p1, :cond_1d

    .line 585
    iget v0, p0, Lcom/vlingo/client/home/HomeActivity;->consecutiveLeftCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vlingo/client/home/HomeActivity;->consecutiveLeftCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    .line 586
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    new-instance v1, Lcom/vlingo/client/home/HomeActivity$5;

    invoke-direct {v1, p0}, Lcom/vlingo/client/home/HomeActivity$5;-><init>(Lcom/vlingo/client/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/home/RecoButton;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 601
    :goto_16
    return-void

    .line 594
    :cond_17
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/home/RecoButton;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_16

    .line 598
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/home/HomeActivity;->consecutiveLeftCount:I

    .line 599
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/home/RecoButton;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_16
.end method

.method private runIUXIfRequired()V
    .registers 7

    .prologue
    const/high16 v5, 0x400

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 253
    invoke-static {}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->isIUXComplete()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/iux/StartIUXFlowActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    const-string v2, "shown_wcis"

    invoke-static {v2, v4}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_42

    .line 258
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v1, pendingIntent:Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    const-string v2, "wycs.show.done"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    const-string v2, "EXTRA_VOICE_COMMAND"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    :goto_30
    sget-object v2, Lcom/vlingo/client/iux/StartIUXFlowActivity;->EXTRA_PENDING_INTENT:Ljava/lang/String;

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 268
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->finish()V

    .line 292
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #pendingIntent:Landroid/content/Intent;
    :cond_3f
    :goto_3f
    iput-boolean v4, p0, Lcom/vlingo/client/home/HomeActivity;->initialLaunch:Z

    .line 293
    return-void

    .line 264
    .restart local v0       #i:Landroid/content/Intent;
    :cond_42
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #pendingIntent:Landroid/content/Intent;
    goto :goto_30

    .line 270
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #pendingIntent:Landroid/content/Intent;
    :cond_4a
    const-string v2, "shown_wcis"

    invoke-static {v2, v4}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    const-string v2, "wycs.show.done"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    const-string v2, "EXTRA_VOICE_COMMAND"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->finish()V

    goto :goto_3f

    .line 279
    .end local v0           #i:Landroid/content/Intent;
    :cond_6d
    const-string v2, "home_screen_first_display"

    invoke-static {v2, v4}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 280
    iget-boolean v2, p0, Lcom/vlingo/client/home/HomeActivity;->initialLaunch:Z

    if-eqz v2, :cond_7f

    .line 281
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 284
    :cond_7f
    iget-boolean v2, p0, Lcom/vlingo/client/home/HomeActivity;->initialLaunch:Z

    if-eqz v2, :cond_3f

    const-string v2, "auto_listen"

    invoke-static {v2, v4}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 285
    new-instance v2, Lcom/vlingo/client/home/HomeActivity$3;

    invoke-direct {v2, p0}, Lcom/vlingo/client/home/HomeActivity$3;-><init>(Lcom/vlingo/client/home/HomeActivity;)V

    invoke-virtual {p0, v2}, Lcom/vlingo/client/home/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3f
.end method

.method private runSpeedtest()V
    .registers 3

    .prologue
    .line 338
    invoke-static {}, Lcom/vlingo/client/speedtest/SpeedtestScreen;->setupTest()V

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/speedtest/SpeedtestScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 340
    return-void
.end method

.method private showDebugSettings()V
    .registers 3

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/settings/DebugSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method private unpackSavedInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 220
    if-eqz p1, :cond_b

    .line 221
    const-string v0, "initialLaunch"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/home/HomeActivity;->initialLaunch:Z

    .line 223
    :cond_b
    return-void
.end method


# virtual methods
.method protected cancelRecognition()V
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recognizer:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/VLRecognizer;->cancel()V

    .line 431
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->resetRecognitionUI()V

    .line 432
    return-void
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->finish()V

    .line 195
    return-void
.end method

.method protected getRecognitionSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 416
    const-string v0, "HomeScreen"

    return-object v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 662
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBeginningOfSpeech()V
    .registers 1

    .prologue
    .line 469
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoButton;->getState()Lcom/vlingo/client/home/RecoButton$State;

    move-result-object v0

    .line 230
    .local v0, state:Lcom/vlingo/client/home/RecoButton$State;
    invoke-direct {p0}, Lcom/vlingo/client/home/HomeActivity;->initViews()V

    .line 232
    sget-object v1, Lcom/vlingo/client/home/HomeActivity$6;->$SwitchMap$com$vlingo$client$home$RecoButton$State:[I

    invoke-virtual {v0}, Lcom/vlingo/client/home/RecoButton$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_44

    .line 250
    :goto_17
    return-void

    .line 234
    :pswitch_18
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoButton;->showTapAndSpeak()V

    .line 235
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoStatusArea;->showMic()V

    goto :goto_17

    .line 238
    :pswitch_23
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoButton;->showSpeakAgain()V

    .line 239
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoStatusArea;->showMic()V

    goto :goto_17

    .line 242
    :pswitch_2e
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoButton;->showListening()V

    .line 243
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoStatusArea;->showWaveform()V

    goto :goto_17

    .line 246
    :pswitch_39
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoButton;->showThinking()V

    .line 247
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoStatusArea;->showProgress()V

    goto :goto_17

    .line 232
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_18
        :pswitch_23
        :pswitch_2e
        :pswitch_39
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x3

    .line 94
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0, v3}, Lcom/vlingo/client/home/HomeActivity;->setVolumeControlStream(I)V

    .line 97
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/home/HomeActivity;->language:Ljava/lang/String;

    .line 98
    invoke-direct {p0, p1}, Lcom/vlingo/client/home/HomeActivity;->unpackSavedInstanceState(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 101
    new-instance v2, Lcom/vlingo/client/asr/VLRecognizer;

    invoke-direct {v2}, Lcom/vlingo/client/asr/VLRecognizer;-><init>()V

    iput-object v2, p0, Lcom/vlingo/client/home/HomeActivity;->recognizer:Lcom/vlingo/client/asr/VLRecognizer;

    .line 102
    new-instance v2, Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-direct {v2}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    iput-object v2, p0, Lcom/vlingo/client/home/HomeActivity;->dispatcher:Lcom/vlingo/client/vvs/VVSDispatcher;

    .line 104
    invoke-direct {p0}, Lcom/vlingo/client/home/HomeActivity;->initViews()V

    .line 106
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v1, i:Landroid/content/Intent;
    const-string v2, "Activity"

    const-string v3, "HomeActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v1}, Lcom/vlingo/client/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->finish()V

    .line 118
    .end local v1           #i:Landroid/content/Intent;
    :goto_42
    new-instance v2, Lcom/vlingo/client/home/HomeActivity$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/home/HomeActivity$1;-><init>(Lcom/vlingo/client/home/HomeActivity;)V

    iput-object v2, p0, Lcom/vlingo/client/home/HomeActivity;->safeReaderToggleHandler:Landroid/os/Handler;

    .line 125
    new-instance v2, Lcom/vlingo/client/home/HomeActivity$2;

    invoke-direct {v2, p0}, Lcom/vlingo/client/home/HomeActivity$2;-><init>(Lcom/vlingo/client/home/HomeActivity;)V

    iput-object v2, p0, Lcom/vlingo/client/home/HomeActivity;->safeReaderStateReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.vlingo.client.samsung.safereader.STARTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.vlingo.client.samsung.safereader.STOPPED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/vlingo/client/home/HomeActivity;->safeReaderStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/vlingo/client/home/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vlingo/client/home/HomeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 137
    return-void

    .line 115
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_69
    invoke-direct {p0}, Lcom/vlingo/client/home/HomeActivity;->runIUXIfRequired()V

    goto :goto_42
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onDestroy()V

    .line 176
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->safeReaderStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 177
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->safeReaderStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    :cond_c
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->cancelRecognition()V

    .line 180
    invoke-static {}, Lcom/vlingo/client/android/core/audio/TonePlayer;->release()V

    .line 181
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recognizer:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/VLRecognizer;->close()V

    .line 182
    return-void
.end method

.method protected onEndOfSpeech()V
    .registers 1

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->showThinking()V

    .line 475
    return-void
.end method

.method protected onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "error"
    .parameter "description"

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->playErrorTone()V

    .line 479
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->resetRecognitionUI()V

    .line 480
    invoke-virtual {p0, p1}, Lcom/vlingo/client/home/HomeActivity;->showError(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 682
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/ui/VLActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 686
    .local v0, handled:Z
    const/16 v1, 0x52

    if-ne p1, v1, :cond_f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 689
    const/4 v0, 0x1

    .line 692
    .end local v0           #handled:Z
    :cond_f
    return v0
.end method

.method public onLeftArrowClicked()V
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollLeft()V

    .line 672
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 321
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 334
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 323
    :pswitch_d
    invoke-direct {p0}, Lcom/vlingo/client/home/HomeActivity;->showDebugSettings()V

    goto :goto_c

    .line 326
    :pswitch_11
    invoke-direct {p0}, Lcom/vlingo/client/home/HomeActivity;->runSpeedtest()V

    goto :goto_c

    .line 329
    :pswitch_15
    invoke-static {}, Lcom/vlingo/client/car/iux/CarIUXManager;->reset()V

    .line 330
    invoke-static {p0}, Lcom/vlingo/client/settings/Settings;->resetAllSettings(Landroid/content/Context;)V

    .line 331
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IUX and TOS successfully reset"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 321
    :pswitch_data_2a
    .packed-switch 0x67
        :pswitch_d
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onPause()V

    .line 187
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->cancelRecognition()V

    .line 188
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 309
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 310
    iput-object p1, p0, Lcom/vlingo/client/home/HomeActivity;->mainMenu:Landroid/view/Menu;

    .line 311
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 312
    invoke-virtual {p0, p1}, Lcom/vlingo/client/home/HomeActivity;->makeDefaultMenu(Landroid/view/Menu;)V

    .line 314
    iget-boolean v0, p0, Lcom/vlingo/client/home/HomeActivity;->enableDebugMenu:Z

    if-eqz v0, :cond_12

    .line 315
    invoke-direct {p0}, Lcom/vlingo/client/home/HomeActivity;->addDebugOptionsToMenu()V

    .line 317
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public onPressedListeningDone()V
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recognizer:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/VLRecognizer;->stopListening()V

    .line 654
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->showThinking()V

    .line 655
    return-void
.end method

.method public onPressedSpeak()V
    .registers 1

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->startListening()V

    .line 646
    return-void
.end method

.method public onPressedSpeakAgain()V
    .registers 1

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->startListening()V

    .line 650
    return-void
.end method

.method public onPressedThinkingCancel()V
    .registers 1

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->cancelRecognition()V

    .line 659
    return-void
.end method

.method protected onReadyForSpeech()V
    .registers 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->showListening()V

    .line 466
    return-void
.end method

.method public onRecognitionDone()V
    .registers 1

    .prologue
    .line 462
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/vlingo/client/home/HomeActivity;->unpackSavedInstanceState(Landroid/os/Bundle;)V

    .line 216
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 217
    return-void
.end method

.method protected final onResults(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 8
    .parameter "results"

    .prologue
    .line 484
    const/4 v2, 0x0

    .line 485
    .local v2, onError:Z
    if-eqz p1, :cond_49

    .line 486
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->removeShowMessageAction()Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v3

    .line 488
    .local v3, showMessageAction:Lcom/vlingo/client/core/vlservice/response/Action;
    if-eqz v3, :cond_1b

    const-string v4, "yesnodialog"

    const-string v5, "Type"

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 489
    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->addAction(Lcom/vlingo/client/core/vlservice/response/Action;)V

    .line 490
    const/4 v3, 0x0

    .line 493
    :cond_1b
    const/4 v1, 0x0

    .line 495
    .local v1, msg:Ljava/lang/String;
    if-eqz v3, :cond_4f

    .line 496
    const-string v4, "Message"

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    :cond_24
    :goto_24
    if-eqz v1, :cond_31

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasNonMessageActions()Z

    move-result v4

    if-nez v4, :cond_31

    .line 506
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/vlingo/client/home/HomeActivity;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 v2, 0x1

    .line 509
    :cond_31
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasNonMessageActions()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 510
    iget-object v4, p0, Lcom/vlingo/client/home/HomeActivity;->dispatcher:Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-virtual {v4, p1}, Lcom/vlingo/client/vvs/VVSDispatcher;->resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z

    .line 511
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->playResultTone()V

    .line 512
    if-eqz v1, :cond_49

    .line 514
    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 518
    .end local v1           #msg:Ljava/lang/String;
    .end local v3           #showMessageAction:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_49
    if-nez v2, :cond_4e

    .line 519
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->resetRecognitionUI()V

    .line 520
    :cond_4e
    return-void

    .line 499
    .restart local v1       #msg:Ljava/lang/String;
    .restart local v3       #showMessageAction:Lcom/vlingo/client/core/vlservice/response/Action;
    :cond_4f
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasMessages()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 500
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getFirstMessage()Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    move-result-object v0

    .line 501
    .local v0, messageObj:Lcom/vlingo/client/core/vlservice/response/ServerMessage;
    invoke-virtual {v0}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_24
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 165
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->language:Ljava/lang/String;

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 168
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->finish()V

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    :cond_1c
    return-void
.end method

.method public onRightArrowClicked()V
    .registers 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollRight()V

    .line 676
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 209
    const-string v0, "initialLaunch"

    iget-boolean v1, p0, Lcom/vlingo/client/home/HomeActivity;->initialLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 211
    return-void
.end method

.method public onScrollableContainerItemChanged(Lcom/vlingo/client/scroller/ScrollableContainer;Lcom/vlingo/client/scroller/ScrollableItem;Lcom/vlingo/client/scroller/ScrollableItem;I)V
    .registers 6
    .parameter "container"
    .parameter "prevItem"
    .parameter "newItem"
    .parameter "newItemIndex"

    .prologue
    .line 606
    const/4 v0, 0x1

    if-eq p4, v0, :cond_7

    instance-of v0, p3, Lcom/vlingo/client/home/HintScrollableItem;

    if-nez v0, :cond_8

    .line 619
    :cond_7
    :goto_7
    return-void

    .line 609
    :cond_8
    if-nez p4, :cond_16

    .line 610
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->hintList:Lcom/vlingo/client/home/HintList;

    invoke-virtual {v0}, Lcom/vlingo/client/home/HintList;->moveToPreviousHint()V

    .line 616
    :cond_f
    :goto_f
    invoke-direct {p0, p4}, Lcom/vlingo/client/home/HomeActivity;->processScrollForDebugging(I)V

    .line 618
    invoke-direct {p0}, Lcom/vlingo/client/home/HomeActivity;->loadHints()V

    goto :goto_7

    .line 612
    :cond_16
    const/4 v0, 0x2

    if-ne p4, v0, :cond_f

    .line 613
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->hintList:Lcom/vlingo/client/home/HintList;

    invoke-virtual {v0}, Lcom/vlingo/client/home/HintList;->moveToNextHint()V

    goto :goto_f
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 200
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onSearchRequested()Z

    .line 204
    :goto_a
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_c
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/vlingo/client/util/WebSearchUtil;->launchWebSearch(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public playErrorTone()V
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recognizer:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/VLRecognizer;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playErrorTone()V

    .line 369
    return-void
.end method

.method public playResultTone()V
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recognizer:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/VLRecognizer;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playResultTone()V

    .line 365
    return-void
.end method

.method protected resetRecognitionUI()V
    .registers 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;

    invoke-virtual {v0}, Lcom/vlingo/client/home/RecoStatusArea;->showMic()V

    .line 436
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v0}, Lcom/vlingo/client/home/RecoButton;->showTapAndSpeak()V

    .line 437
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/vlingo/client/home/HintScrollableItem;

    if-nez v0, :cond_20

    .line 438
    :cond_1d
    invoke-direct {p0}, Lcom/vlingo/client/home/HomeActivity;->loadHints()V

    .line 440
    :cond_20
    return-void
.end method

.method protected showError(Ljava/lang/String;)V
    .registers 6
    .parameter "err"

    .prologue
    const/4 v3, 0x0

    .line 444
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeAllViews()V

    .line 445
    const v1, 0x7f030055

    iget-object v2, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 447
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v1, v3}, Lcom/vlingo/client/scroller/ScrollableContainer;->getItemAtIndex(I)Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/home/ErrorScrollableItem;

    .line 448
    .local v0, errorItem:Lcom/vlingo/client/home/ErrorScrollableItem;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/home/ErrorScrollableItem;->init(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoButton;->showSpeakAgain()V

    .line 450
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v1, v3}, Lcom/vlingo/client/scroller/ScrollableContainer;->setCurrentScreenIndex(I)V

    .line 453
    new-instance v1, Lcom/vlingo/client/home/HomeActivity$4;

    invoke-direct {v1, p0}, Lcom/vlingo/client/home/HomeActivity$4;-><init>(Lcom/vlingo/client/home/HomeActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-static {v1, v2, v3}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 458
    return-void
.end method

.method protected showListening()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v0}, Lcom/vlingo/client/home/RecoButton;->showListening()V

    .line 421
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;

    invoke-virtual {v0}, Lcom/vlingo/client/home/RecoStatusArea;->showWaveform()V

    .line 422
    return-void
.end method

.method protected showThinking()V
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v0}, Lcom/vlingo/client/home/RecoButton;->showThinking()V

    .line 426
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity;->recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;

    invoke-virtual {v0}, Lcom/vlingo/client/home/RecoStatusArea;->showProgress()V

    .line 427
    return-void
.end method

.method protected startListening()V
    .registers 2

    .prologue
    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/HomeActivity;->startListening(Z)V

    .line 373
    return-void
.end method

.method protected startListening(Ljava/lang/String;)V
    .registers 3
    .parameter "fieldID"

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vlingo/client/home/HomeActivity;->startListening(Ljava/lang/String;Z)V

    .line 382
    return-void
.end method

.method protected startListening(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 10
    .parameter "fieldID"
    .parameter "curText"
    .parameter "cursorPos"
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    .line 393
    sget-object v1, Lcom/vlingo/client/home/HomeActivity$6;->$SwitchMap$com$vlingo$client$core$deviceinfo$PhoneInfo$ConnectState:[I

    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->isReadyToConnect(Z)Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_60

    .line 413
    :goto_15
    return-void

    .line 395
    :pswitch_16
    invoke-static {}, Lcom/vlingo/client/core/recognizer/SRContext;->newInstance()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 396
    .local v0, srContext:Lcom/vlingo/client/core/recognizer/SRContext;
    const-string v1, "Vlingo"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldContext(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldID(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, p3}, Lcom/vlingo/client/core/recognizer/SRContext;->setCursorPos(I)V

    .line 399
    invoke-virtual {v0, p2}, Lcom/vlingo/client/core/recognizer/SRContext;->setCurText(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->dispatcher:Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->getRecognitionSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/vvs/VVSDispatcher;->setCustom6Context(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/vlingo/client/home/HomeActivity;->showListening()V

    .line 403
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recognizer:Lcom/vlingo/client/asr/VLRecognizer;

    new-instance v2, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;-><init>(Lcom/vlingo/client/home/HomeActivity;Lcom/vlingo/client/home/HomeActivity$1;)V

    invoke-virtual {v1, v0, p0, v2}, Lcom/vlingo/client/asr/VLRecognizer;->startListening(Lcom/vlingo/client/core/recognizer/SRContext;Landroid/content/Context;Lcom/vlingo/client/asr/VLRecognizerListener;)V

    goto :goto_15

    .line 406
    .end local v0           #srContext:Lcom/vlingo/client/core/recognizer/SRContext;
    :pswitch_40
    const v1, 0x7f09033e

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 407
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoButton;->showTapAndSpeak()V

    goto :goto_15

    .line 410
    :pswitch_50
    const v1, 0x7f09031f

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 411
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity;->recoButton:Lcom/vlingo/client/home/RecoButton;

    invoke-virtual {v1}, Lcom/vlingo/client/home/RecoButton;->showTapAndSpeak()V

    goto :goto_15

    .line 393
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_16
        :pswitch_40
        :pswitch_50
    .end packed-switch
.end method

.method protected startListening(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "fieldID"
    .parameter "curText"
    .parameter "animate"

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/vlingo/client/home/HomeActivity;->startListening(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 390
    return-void
.end method

.method protected startListening(Ljava/lang/String;Z)V
    .registers 4
    .parameter "fieldID"
    .parameter "animate"

    .prologue
    .line 385
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/vlingo/client/home/HomeActivity;->startListening(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 386
    return-void
.end method

.method protected startListening(Z)V
    .registers 5
    .parameter "animate"

    .prologue
    .line 376
    const-string v1, "FIELD_ID"

    const-string v2, "vp_main"

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, fieldID:Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/vlingo/client/home/HomeActivity;->startListening(Ljava/lang/String;Z)V

    .line 378
    return-void
.end method

.method public updateSafeReaderToggleButton()V
    .registers 1

    .prologue
    .line 348
    return-void
.end method
