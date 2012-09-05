.class public Lcom/cooliris/media/GetNewContactNewEmail;
.super Landroid/app/Activity;
.source "GetNewContactNewEmail.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mToast_invalid_email:Landroid/widget/Toast;

.field private static mToast_invalid_phone:Landroid/widget/Toast;


# instance fields
.field private context:Landroid/content/Context;

.field private isEmailid:Z

.field private isPhonenumber:Z

.field private mUserText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "GET-NEW-CONTACT-EMAIL"

    sput-object v0, Lcom/cooliris/media/GetNewContactNewEmail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/cooliris/media/GetNewContactNewEmail;->isPhonenumber:Z

    .line 49
    iput-boolean v0, p0, Lcom/cooliris/media/GetNewContactNewEmail;->isEmailid:Z

    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/cooliris/media/GetNewContactNewEmail;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cooliris/media/GetNewContactNewEmail;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/cooliris/media/GetNewContactNewEmail;->isPhonenumber:Z

    return v0
.end method

.method static synthetic access$300(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400()Landroid/widget/Toast;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/cooliris/media/GetNewContactNewEmail;->mToast_invalid_email:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cooliris/media/GetNewContactNewEmail;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/cooliris/media/GetNewContactNewEmail;->isEmailid:Z

    return v0
.end method

.method static synthetic access$600()Landroid/widget/Toast;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/cooliris/media/GetNewContactNewEmail;->mToast_invalid_phone:Landroid/widget/Toast;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f080023

    const v11, 0x7f03000e

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iput-object p0, p0, Lcom/cooliris/media/GetNewContactNewEmail;->context:Landroid/content/Context;

    .line 65
    sget-object v6, Lcom/cooliris/media/GetNewContactNewEmail;->TAG:Ljava/lang/String;

    const-string v7, "You are in  GetNewContactNewEmail"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/cooliris/media/GetNewContactNewEmail;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, action:Ljava/lang/String;
    sget-object v6, Lcom/cooliris/media/GetNewContactNewEmail;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got the action through intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v6, "com.sec.android.app.mediabrowser.NEW_CONTACT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 74
    iput-boolean v10, p0, Lcom/cooliris/media/GetNewContactNewEmail;->isPhonenumber:Z

    .line 76
    invoke-virtual {p0}, Lcom/cooliris/media/GetNewContactNewEmail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 77
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x7f0600b6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, sendToTitle:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/cooliris/media/GetNewContactNewEmail;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0, v11}, Lcom/cooliris/media/GetNewContactNewEmail;->setContentView(I)V

    .line 80
    invoke-virtual {p0, v12}, Lcom/cooliris/media/GetNewContactNewEmail;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;

    .line 81
    iget-object v6, p0, Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 82
    iget-object v6, p0, Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 103
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #sendToTitle:Ljava/lang/String;
    :cond_62
    :goto_62
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    .line 104
    .local v5, timer:Ljava/util/Timer;
    new-instance v6, Lcom/cooliris/media/GetNewContactNewEmail$1;

    invoke-direct {v6, p0}, Lcom/cooliris/media/GetNewContactNewEmail$1;-><init>(Lcom/cooliris/media/GetNewContactNewEmail;)V

    const-wide/16 v7, 0x12c

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 115
    invoke-virtual {p0}, Lcom/cooliris/media/GetNewContactNewEmail;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600c0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    sput-object v6, Lcom/cooliris/media/GetNewContactNewEmail;->mToast_invalid_email:Landroid/widget/Toast;

    .line 117
    invoke-virtual {p0}, Lcom/cooliris/media/GetNewContactNewEmail;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600c3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    sput-object v6, Lcom/cooliris/media/GetNewContactNewEmail;->mToast_invalid_phone:Landroid/widget/Toast;

    .line 120
    const v6, 0x7f080024

    invoke-virtual {p0, v6}, Lcom/cooliris/media/GetNewContactNewEmail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    .local v0, LeftSoftkey:Landroid/widget/Button;
    new-instance v6, Lcom/cooliris/media/GetNewContactNewEmail$2;

    invoke-direct {v6, p0}, Lcom/cooliris/media/GetNewContactNewEmail$2;-><init>(Lcom/cooliris/media/GetNewContactNewEmail;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v6, 0x7f080025

    invoke-virtual {p0, v6}, Lcom/cooliris/media/GetNewContactNewEmail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 166
    .local v1, RightSoftkey:Landroid/widget/Button;
    new-instance v6, Lcom/cooliris/media/GetNewContactNewEmail$3;

    invoke-direct {v6, p0}, Lcom/cooliris/media/GetNewContactNewEmail$3;-><init>(Lcom/cooliris/media/GetNewContactNewEmail;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void

    .line 89
    .end local v0           #LeftSoftkey:Landroid/widget/Button;
    .end local v1           #RightSoftkey:Landroid/widget/Button;
    .end local v5           #timer:Ljava/util/Timer;
    :cond_b6
    const-string v6, "com.sec.android.app.mediabrowser.NEW_EMAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 90
    iput-boolean v10, p0, Lcom/cooliris/media/GetNewContactNewEmail;->isEmailid:Z

    .line 92
    invoke-virtual {p0}, Lcom/cooliris/media/GetNewContactNewEmail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 93
    .restart local v3       #res:Landroid/content/res/Resources;
    const v6, 0x7f0600b7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    .restart local v4       #sendToTitle:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/cooliris/media/GetNewContactNewEmail;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0, v11}, Lcom/cooliris/media/GetNewContactNewEmail;->setContentView(I)V

    .line 96
    invoke-virtual {p0, v12}, Lcom/cooliris/media/GetNewContactNewEmail;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;

    .line 97
    iget-object v6, p0, Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 98
    iget-object v6, p0, Lcom/cooliris/media/GetNewContactNewEmail;->mUserText:Landroid/widget/EditText;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_62
.end method
