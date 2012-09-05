.class public Lcom/sprint/smps/activities/DeleteSMPSAccount;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "DeleteSMPSAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Delete SMW Account"

.field private static parentActivity:Lcom/sprint/smps/activities/DeleteSMPSAccount;


# instance fields
.field protected buttons:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private deleteAccount:Ljava/lang/Runnable;

.field private successful:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/sprint/smps/activities/DeleteSMPSAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/DeleteSMPSAccount;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/DeleteSMPSAccount;->parentActivity:Lcom/sprint/smps/activities/DeleteSMPSAccount;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount;->buttons:Ljava/util/Hashtable;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount;->successful:Z

    .line 35
    new-instance v0, Lcom/sprint/smps/activities/DeleteSMPSAccount$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/DeleteSMPSAccount$1;-><init>(Lcom/sprint/smps/activities/DeleteSMPSAccount;)V

    iput-object v0, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount;->deleteAccount:Ljava/lang/Runnable;

    .line 60
    sput-object p0, Lcom/sprint/smps/activities/DeleteSMPSAccount;->parentActivity:Lcom/sprint/smps/activities/DeleteSMPSAccount;

    .line 61
    const-string v0, "Delete SMW Account"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/DeleteSMPSAccount;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/sprint/smps/activities/DeleteSMPSAccount;->parentActivity:Lcom/sprint/smps/activities/DeleteSMPSAccount;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/DeleteSMPSAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/DeleteSMPSAccount;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount;->successful:Z

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/DeleteSMPSAccount;)Z
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount;->successful:Z

    return v0
.end method

.method static synthetic access$4(Lcom/sprint/smps/activities/DeleteSMPSAccount;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount;->deleteAccount:Ljava/lang/Runnable;

    return-object v0
.end method

.method private showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .parameter "title"
    .parameter "msg"
    .parameter "context"

    .prologue
    .line 119
    move-object v2, p2

    .line 120
    .local v2, message:Ljava/lang/String;
    move-object v0, p3

    .line 121
    .local v0, cntxt:Landroid/content/Context;
    move-object v1, p1

    .line 122
    .local v1, fTitle:Ljava/lang/String;
    new-instance v3, Lcom/sprint/smps/activities/DeleteSMPSAccount$2;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sprint/smps/activities/DeleteSMPSAccount$2;-><init>(Lcom/sprint/smps/activities/DeleteSMPSAccount;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v3, runnable:Ljava/lang/Runnable;
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method private showOkCancelAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7
    .parameter "title"
    .parameter "msg"
    .parameter "context"

    .prologue
    .line 149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    const-string v1, "Cancel"

    new-instance v2, Lcom/sprint/smps/activities/DeleteSMPSAccount$3;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/DeleteSMPSAccount$3;-><init>(Lcom/sprint/smps/activities/DeleteSMPSAccount;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 157
    const-string v1, "Delete"

    new-instance v2, Lcom/sprint/smps/activities/DeleteSMPSAccount$4;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/DeleteSMPSAccount$4;-><init>(Lcom/sprint/smps/activities/DeleteSMPSAccount;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 166
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 108
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 115
    :goto_a
    return-void

    .line 112
    :pswitch_b
    const-string v0, "Delete"

    const-string v1, "Are your sure you want to delete your Sprint Mobile Wallet Account?"

    invoke-direct {p0, v0, v1, p0}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->showOkCancelAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_a

    .line 109
    nop

    :pswitch_data_14
    .packed-switch 0x7f08001c
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x7

    .line 73
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 75
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->requestWindowFeature(I)Z

    .line 76
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->setContentView(I)V

    .line 78
    sget-object v1, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v2, "Delete SMW Account"

    invoke-virtual {v1, v2}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 81
    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f060033

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v1, 0x7f08001c

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 85
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 88
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, dialog:Landroid/app/Dialog;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 172
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Deleting account..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 174
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 184
    move-object v0, v1

    .line 186
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onDestroy()V

    .line 93
    const-string v0, "Delete SMW Account"

    invoke-static {v0}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->dismissActivity(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 66
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 67
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 68
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 99
    if-eqz p1, :cond_8

    .line 101
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 102
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 104
    :cond_8
    return-void
.end method
