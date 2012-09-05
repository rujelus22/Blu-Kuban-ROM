.class public Lcom/vlingo/client/car/nav/NavController;
.super Ljava/lang/Object;
.source "NavController.java"

# interfaces
.implements Lcom/vlingo/client/car/TaskController;
.implements Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;


# instance fields
.field private delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/nav/NavController;)Lcom/vlingo/client/car/CarActivityDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    return-object v0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 207
    const/high16 v0, 0x5400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 209
    iget-object v0, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->taskFinished()V

    .line 210
    return-void
.end method

.method private showHomeAddressEditDialog(Z)V
    .registers 14
    .parameter "showGo"

    .prologue
    const v11, 0x7f090204

    const v10, 0x7f090203

    const v9, 0x7f090048

    const v8, 0x7f020055

    .line 109
    iget-object v6, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v6}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 110
    .local v2, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f030017

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 111
    .local v5, textEntryView:Landroid/view/View;
    const v6, 0x7f0f0063

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 112
    .local v1, editView:Landroid/widget/EditText;
    const-string v6, "car_nav_home_address"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, oldAddress:Ljava/lang/String;
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3a

    .line 114
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_3a
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 118
    .local v4, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_91

    .line 119
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v7}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/vlingo/client/car/nav/NavController$2;

    invoke-direct {v8, p0, v1}, Lcom/vlingo/client/car/nav/NavController$2;-><init>(Lcom/vlingo/client/car/nav/NavController;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/vlingo/client/car/nav/NavController$1;

    invoke-direct {v8, p0}, Lcom/vlingo/client/car/nav/NavController$1;-><init>(Lcom/vlingo/client/car/nav/NavController;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 144
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v6, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    const v7, 0x7f090206

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 172
    :goto_8d
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 173
    return-void

    .line 147
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_91
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v7}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/vlingo/client/car/nav/NavController$4;

    invoke-direct {v8, p0, v1}, Lcom/vlingo/client/car/nav/NavController$4;-><init>(Lcom/vlingo/client/car/nav/NavController;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/vlingo/client/car/nav/NavController$3;

    invoke-direct {v8, p0}, Lcom/vlingo/client/car/nav/NavController$3;-><init>(Lcom/vlingo/client/car/nav/NavController;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .restart local v0       #dialog:Landroid/app/AlertDialog;
    goto :goto_8d
.end method


# virtual methods
.method public getCommandForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 5
    .parameter "item"

    .prologue
    .line 54
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, nav:Ljava/lang/String;
    return-object v0
.end method

.method public getFieldIDForItem(Lcom/vlingo/client/car/CarScrollableItem;)Ljava/lang/String;
    .registers 3
    .parameter "item"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIconResourceID()I
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/vlingo/client/car/TaskController$TaskType;
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->TypeNav:Lcom/vlingo/client/car/TaskController$TaskType;

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onEditHomeAddress()V
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/nav/NavController;->showHomeAddressEditDialog(Z)V

    .line 182
    return-void
.end method

.method public onFinalize(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 76
    return-void
.end method

.method public onGoHome()V
    .registers 5

    .prologue
    .line 185
    const-string v2, "car_nav_home_address"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, home:Ljava/lang/String;
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_26

    .line 187
    iget-object v2, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/vlingo/client/util/GeoUtil;->getNavigateIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    .local v0, action:Landroid/content/Intent;
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v2

    const-string v3, "car-nav-gohome"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, v0}, Lcom/vlingo/client/car/nav/NavController;->launchIntent(Landroid/content/Intent;)V

    .line 194
    .end local v0           #action:Landroid/content/Intent;
    :goto_25
    return-void

    .line 192
    :cond_26
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/vlingo/client/car/nav/NavController;->showHomeAddressEditDialog(Z)V

    goto :goto_25
.end method

.method public onInitialize(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 80
    return-void
.end method

.method public onShowMaps()V
    .registers 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/util/GeoUtil;->getMapIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/vlingo/client/car/nav/NavController;->launchIntent(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method public onShowNav()V
    .registers 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/util/GeoUtil;->getNavigateIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 203
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/vlingo/client/car/nav/NavController;->launchIntent(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method public showNavHome()V
    .registers 5

    .prologue
    .line 47
    iget-object v1, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030041

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/nav/NavMainScreen;

    .line 48
    .local v0, view:Lcom/vlingo/client/car/nav/NavMainScreen;
    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/nav/NavMainScreen;->initialize(Lcom/vlingo/client/car/nav/NavMainScreen$NavMainScreenListener;)V

    .line 49
    iget-object v1, p0, Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 50
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "car-nav-home"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 51
    return-void
.end method
