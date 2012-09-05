.class public Lcom/android/mms/ui/CmasDialog;
.super Landroid/app/Activity;
.source "CmasDialog.java"


# static fields
.field private static instance:Lcom/android/mms/ui/CmasDialog;


# instance fields
.field private bodytextview:Landroid/widget/TextView;

.field private dialog:Landroid/app/AlertDialog;

.field private fromtextview:Landroid/widget/TextView;

.field private mBody:Ljava/lang/String;

.field public mDialogHandled:Z

.field mStatusbarManager:Landroid/app/StatusBarManager;

.field private messageUri:Landroid/net/Uri;

.field msgIdentifier:I

.field state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput v0, p0, Lcom/android/mms/ui/CmasDialog;->msgIdentifier:I

    .line 49
    iput-boolean v0, p0, Lcom/android/mms/ui/CmasDialog;->mDialogHandled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CmasDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/mms/ui/CmasDialog;->launchMessage()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/ui/CmasDialog;
    .registers 1

    .prologue
    .line 202
    sget-object v0, Lcom/android/mms/ui/CmasDialog;->instance:Lcom/android/mms/ui/CmasDialog;

    return-object v0
.end method

.method private launchMessage()V
    .registers 6

    .prologue
    .line 190
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 195
    :try_start_16
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CmasDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 199
    :goto_19
    return-void

    .line 196
    :catch_1a
    move-exception v0

    .line 197
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_19
.end method


# virtual methods
.method public dismissDialogForPriority()V
    .registers 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/CmasDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/CmasDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 210
    :cond_9
    const-string v0, "Mms/CMASDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissDialogForPriority() : mDialogHandled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/CmasDialog;->mDialogHandled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-boolean v0, p0, Lcom/android/mms/ui/CmasDialog;->mDialogHandled:Z

    if-nez v0, :cond_2c

    .line 213
    sget-object v0, Lcom/android/mms/transaction/SmsReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 215
    :cond_2c
    iget-object v0, p0, Lcom/android/mms/ui/CmasDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_3a

    .line 216
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CmasDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/mms/ui/CmasDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    .line 218
    :cond_3a
    iget-object v0, p0, Lcom/android/mms/ui/CmasDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialog;->finish()V

    .line 220
    return-void
.end method

.method public getCDMAServiceCategoryStr(I)Ljava/lang/String;
    .registers 5
    .parameter "nCmasCat"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 224
    .local v1, r:Landroid/content/res/Resources;
    const-string v0, ""

    .line 226
    .local v0, catName:Ljava/lang/String;
    const/16 v2, 0x1000

    if-ne v2, p1, :cond_12

    .line 227
    const v2, 0x7f0902c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_11
    return-object v0

    .line 228
    :cond_12
    const/16 v2, 0x1001

    if-ne v2, p1, :cond_1e

    .line 229
    const v2, 0x7f0902c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 230
    :cond_1e
    const/16 v2, 0x1002

    if-ne v2, p1, :cond_2a

    .line 231
    const v2, 0x7f0902ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 232
    :cond_2a
    const/16 v2, 0x1003

    if-ne v2, p1, :cond_36

    .line 233
    const v2, 0x7f0902cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 234
    :cond_36
    const/16 v2, 0x1004

    if-ne v2, p1, :cond_42

    .line 235
    const v2, 0x7f0902cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 237
    :cond_42
    const-string v0, ""

    goto :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, v8}, Lcom/android/mms/ui/CmasDialog;->requestWindowFeature(I)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f02016d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x28

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 61
    sput-object p0, Lcom/android/mms/ui/CmasDialog;->instance:Lcom/android/mms/ui/CmasDialog;

    .line 62
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "msgIdentifier"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/CmasDialog;->msgIdentifier:I

    .line 63
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "body"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CmasDialog;->mBody:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "cmas_message_uri"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, uri:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CmasDialog;->messageUri:Landroid/net/Uri;

    .line 68
    iget-object v4, p0, Lcom/android/mms/ui/CmasDialog;->mBody:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    iget-object v4, p0, Lcom/android/mms/ui/CmasDialog;->messageUri:Landroid/net/Uri;

    if-nez v4, :cond_55

    .line 69
    :cond_51
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialog;->finish()V

    .line 146
    :goto_54
    return-void

    .line 74
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f09009b

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/CmasDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/CmasDialog;->msgIdentifier:I

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/CmasDialog;->getCDMAServiceCategoryStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, address:Ljava/lang/String;
    const-string v4, "Mms/CMASDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showCMASDialog, msgIdentifier = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/CmasDialog;->msgIdentifier:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiverService;->getCmasDialogCount()I

    move-result v4

    if-le v4, v8, :cond_125

    .line 80
    const v4, 0x7f090248

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 84
    :goto_a4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030004

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 85
    .local v3, view:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 87
    const-string v4, "statusbar"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CmasDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/mms/ui/CmasDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    .line 88
    const/high16 v4, 0x1

    iput v4, p0, Lcom/android/mms/ui/CmasDialog;->state:I

    .line 89
    iget-object v4, p0, Lcom/android/mms/ui/CmasDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    iget v5, p0, Lcom/android/mms/ui/CmasDialog;->state:I

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 91
    new-instance v4, Lcom/android/mms/ui/CmasDialog$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/CmasDialog$1;-><init>(Lcom/android/mms/ui/CmasDialog;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mms/ui/CmasDialog;->bodytextview:Landroid/widget/TextView;

    .line 112
    const v4, 0x7f08000e

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/mms/ui/CmasDialog;->fromtextview:Landroid/widget/TextView;

    .line 114
    iget-object v4, p0, Lcom/android/mms/ui/CmasDialog;->fromtextview:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, p0, Lcom/android/mms/ui/CmasDialog;->bodytextview:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 117
    iget-object v4, p0, Lcom/android/mms/ui/CmasDialog;->bodytextview:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/CmasDialog;->mBody:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v4, 0x7f09003c

    new-instance v5, Lcom/android/mms/ui/CmasDialog$2;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/CmasDialog$2;-><init>(Lcom/android/mms/ui/CmasDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiverService;->getCmasDialogCount()I

    move-result v4

    if-le v4, v8, :cond_115

    .line 131
    const v4, 0x7f090241

    new-instance v5, Lcom/android/mms/ui/CmasDialog$3;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/CmasDialog$3;-><init>(Lcom/android/mms/ui/CmasDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    :cond_115
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CmasDialog;->dialog:Landroid/app/AlertDialog;

    .line 143
    iget-object v4, p0, Lcom/android/mms/ui/CmasDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_54

    .line 82
    .end local v3           #view:Landroid/widget/LinearLayout;
    :cond_125
    const v4, 0x7f0902f3

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_a4
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 172
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 150
    invoke-virtual {p0}, Lcom/android/mms/ui/CmasDialog;->dismissDialogForPriority()V

    .line 151
    return-void
.end method
