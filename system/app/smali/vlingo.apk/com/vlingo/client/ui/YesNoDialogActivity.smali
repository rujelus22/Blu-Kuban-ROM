.class public Lcom/vlingo/client/ui/YesNoDialogActivity;
.super Landroid/app/Activity;
.source "YesNoDialogActivity.java"


# static fields
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "Message"

.field public static final EXTRA_NO_BUTTON_ACTION:Ljava/lang/String; = "NoButtonAction"

.field public static final EXTRA_NO_BUTTON_LABEL:Ljava/lang/String; = "NoButtonLabel"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "Title"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "Type"

.field public static final EXTRA_YES_BUTTON_ACTION:Ljava/lang/String; = "YesButtonAction"

.field public static final EXTRA_YES_BUTTON_LABEL:Ljava/lang/String; = "YesButtonLabel"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/ui/YesNoDialogActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/vlingo/client/ui/YesNoDialogActivity;->runAction(Ljava/lang/String;)V

    return-void
.end method

.method private runAction(Ljava/lang/String;)V
    .registers 7
    .parameter "actionURL"

    .prologue
    .line 87
    invoke-static {p1}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 88
    const-string v3, "action:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "vvaction:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 89
    :cond_16
    invoke-static {p1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->createActionListFromURL(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-result-object v0

    .line 90
    .local v0, actions:Lcom/vlingo/client/core/vlservice/response/ActionList;
    new-instance v1, Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-direct {v1}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    .line 91
    .local v1, dispatch:Lcom/vlingo/client/vvs/VVSDispatcher;
    invoke-virtual {v1, v0}, Lcom/vlingo/client/vvs/VVSDispatcher;->processActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)Z

    .line 97
    .end local v0           #actions:Lcom/vlingo/client/core/vlservice/response/ActionList;
    .end local v1           #dispatch:Lcom/vlingo/client/vvs/VVSDispatcher;
    :cond_22
    :goto_22
    return-void

    .line 93
    :cond_23
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vlingo/client/VlingoApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_22
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/YesNoDialogActivity;->requestWindowFeature(I)Z

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/YesNoDialogActivity;->showDialog(I)V

    .line 39
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/vlingo/client/ui/YesNoDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 47
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "Message"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, msg:Ljava/lang/String;
    const-string v8, "Title"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, title:Ljava/lang/String;
    const-string v8, "YesButtonLabel"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, yesButtonLabel:Ljava/lang/String;
    const-string v8, "NoButtonLabel"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, noButtonLabel:Ljava/lang/String;
    const-string v8, "YesButtonAction"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, yesButtonAction:Ljava/lang/String;
    const-string v8, "NoButtonAction"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, noButtonAction:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v5}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 57
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    :cond_36
    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3f

    .line 60
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 63
    :cond_3f
    new-instance v8, Lcom/vlingo/client/ui/YesNoDialogActivity$1;

    invoke-direct {v8, p0, v6}, Lcom/vlingo/client/ui/YesNoDialogActivity$1;-><init>(Lcom/vlingo/client/ui/YesNoDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    new-instance v8, Lcom/vlingo/client/ui/YesNoDialogActivity$2;

    invoke-direct {v8, p0, v3}, Lcom/vlingo/client/ui/YesNoDialogActivity$2;-><init>(Lcom/vlingo/client/ui/YesNoDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    new-instance v8, Lcom/vlingo/client/ui/YesNoDialogActivity$3;

    invoke-direct {v8, p0}, Lcom/vlingo/client/ui/YesNoDialogActivity$3;-><init>(Lcom/vlingo/client/ui/YesNoDialogActivity;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method
