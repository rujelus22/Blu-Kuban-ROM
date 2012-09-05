.class public Lcom/samsung/handsfreeactivation/RebootDlg;
.super Landroid/app/AlertDialog;
.source "RebootDlg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/handsfreeactivation/RebootDlg$RebootTimer;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/samsung/client/DMApp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "RebootDlg"

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/RebootDlg;->LOG_TAG:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/samsung/handsfreeactivation/RebootDlg;->mApp:Lcom/samsung/client/DMApp;

    .line 18
    iput-object v1, p0, Lcom/samsung/handsfreeactivation/RebootDlg;->mActivity:Landroid/app/Activity;

    .line 23
    const-string v0, "RebootDlg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RebootDlg ..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 24
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/RebootDlg;->mActivity:Landroid/app/Activity;

    .line 25
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/RebootDlg;->mApp:Lcom/samsung/client/DMApp;

    .line 26
    const v0, 0x1080027

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/RebootDlg;->setIcon(I)V

    .line 27
    const v0, 0x7f050008

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/RebootDlg;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    const v0, 0x7f050016

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/handsfreeactivation/RebootDlg$1;

    invoke-direct {v1, p0}, Lcom/samsung/handsfreeactivation/RebootDlg$1;-><init>(Lcom/samsung/handsfreeactivation/RebootDlg;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/handsfreeactivation/RebootDlg;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 35
    new-instance v0, Lcom/samsung/handsfreeactivation/RebootDlg$2;

    invoke-direct {v0, p0}, Lcom/samsung/handsfreeactivation/RebootDlg$2;-><init>(Lcom/samsung/handsfreeactivation/RebootDlg;)V

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/RebootDlg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 45
    new-instance v0, Lcom/samsung/handsfreeactivation/RebootDlg$RebootTimer;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/handsfreeactivation/RebootDlg$RebootTimer;-><init>(Lcom/samsung/handsfreeactivation/RebootDlg;JJ)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/handsfreeactivation/RebootDlg;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/RebootDlg;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/handsfreeactivation/RebootDlg;)Lcom/samsung/client/DMApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/RebootDlg;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 50
    const-string v0, "RebootDlg"

    const-string v1, "reboot on reboot dialog on any Key down"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/RebootDlg;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 52
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/RebootDlg;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->rebootDevice()V

    .line 53
    const/4 v0, 0x1

    return v0
.end method
