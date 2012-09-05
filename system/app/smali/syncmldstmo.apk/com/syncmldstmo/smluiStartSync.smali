.class public Lcom/syncmldstmo/smluiStartSync;
.super Landroid/app/Activity;
.source "smluiStartSync.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# static fields
.field public static hProgress:Landroid/os/Handler;


# instance fields
.field private mPrgDialog:Landroid/app/ProgressDialog;

.field private nCurrentCount:I

.field private nP2SToTalCount:I

.field private nPercentage:I

.field private nS2PToTalCount:I

.field private profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

.field private szCompleted:Ljava/lang/String;

.field private szMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 38
    iput-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->szMessage:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/syncmldstmo/smluiStartSync;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/syncmldstmo/smluiStartSync;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I

    return p1
.end method

.method static synthetic access$012(Lcom/syncmldstmo/smluiStartSync;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iget v0, p0, Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/syncmldstmo/smluiStartSync;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/syncmldstmo/smluiStartSync;->nP2SToTalCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/syncmldstmo/smluiStartSync;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/syncmldstmo/smluiStartSync;->nP2SToTalCount:I

    return p1
.end method

.method static synthetic access$112(Lcom/syncmldstmo/smluiStartSync;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iget v0, p0, Lcom/syncmldstmo/smluiStartSync;->nP2SToTalCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/syncmldstmo/smluiStartSync;->nP2SToTalCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/syncmldstmo/smluiStartSync;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/syncmldstmo/smluiStartSync;->nPercentage:I

    return v0
.end method

.method static synthetic access$202(Lcom/syncmldstmo/smluiStartSync;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/syncmldstmo/smluiStartSync;->nPercentage:I

    return p1
.end method

.method static synthetic access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/syncmldstmo/smluiStartSync;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/syncmldstmo/smluiStartSync;->nS2PToTalCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/syncmldstmo/smluiStartSync;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/syncmldstmo/smluiStartSync;->nS2PToTalCount:I

    return p1
.end method

.method static synthetic access$512(Lcom/syncmldstmo/smluiStartSync;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iget v0, p0, Lcom/syncmldstmo/smluiStartSync;->nS2PToTalCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/syncmldstmo/smluiStartSync;->nS2PToTalCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiStartSync;->setContentView(I)V

    .line 47
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentProfileInfo()Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 49
    const v1, 0x7f060034

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->szMessage:Ljava/lang/String;

    .line 50
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiStartSync;->showDialog(I)V

    .line 52
    iget-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v1, :cond_4b

    .line 54
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetContactString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, szSyncText:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetCalendarString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 72
    .end local v0           #szSyncText:Ljava/lang/String;
    :cond_43
    :goto_43
    new-instance v1, Lcom/syncmldstmo/smluiStartSync$1;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiStartSync$1;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    sput-object v1, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    .line 321
    return-void

    .line 59
    :cond_4b
    iget-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v1, :cond_5d

    .line 61
    iget-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetContactString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto :goto_43

    .line 63
    :cond_5d
    iget-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v1, :cond_6f

    .line 65
    iget-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetCalendarString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto :goto_43

    .line 67
    :cond_6f
    iget-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v1, :cond_43

    .line 69
    iget-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    const-string v2, "Profile"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto :goto_43
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const v2, 0x7f06003a

    .line 326
    sparse-switch p1, :sswitch_data_f0

    .line 469
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_a
    return-object v0

    .line 329
    :sswitch_b
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    .line 330
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 331
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 332
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f06002b

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->szMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 335
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/syncmldstmo/smluiStartSync$2;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiStartSync$2;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 342
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    const v2, 0x7f06003b

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiStartSync;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/syncmldstmo/smluiStartSync$3;

    invoke-direct {v3, p0}, Lcom/syncmldstmo/smluiStartSync$3;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;

    goto :goto_a

    .line 381
    :sswitch_58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060033

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smluiStartSync$6;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiStartSync$6;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smluiStartSync$5;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiStartSync$5;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smluiStartSync$4;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiStartSync$4;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    .line 410
    :sswitch_88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smluiStartSync$9;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiStartSync$9;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smluiStartSync$8;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiStartSync$8;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smluiStartSync$7;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiStartSync$7;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_a

    .line 440
    :sswitch_bf
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smluiStartSync$12;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiStartSync$12;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smluiStartSync$11;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiStartSync$11;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/smluiStartSync$10;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/smluiStartSync$10;-><init>(Lcom/syncmldstmo/smluiStartSync;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_a

    .line 326
    :sswitch_data_f0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_58
        0x3 -> :sswitch_88
        0xa -> :sswitch_bf
    .end sparse-switch
.end method
