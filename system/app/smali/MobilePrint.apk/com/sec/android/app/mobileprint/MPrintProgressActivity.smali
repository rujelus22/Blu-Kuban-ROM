.class public Lcom/sec/android/app/mobileprint/MPrintProgressActivity;
.super Landroid/app/Activity;
.source "MPrintProgressActivity.java"


# instance fields
.field private mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCurrentPage:I

.field private mCurrentValue:I

.field private mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

.field private mTotalPage:I

.field private mTransactionID:I

.field private myBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    .line 48
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 60
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$2;-><init>(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->myBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)Lcom/sec/android/app/mobileprint/MPrintMainService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTransactionID:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->updateProgressDialog(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTotalPage:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentValue:I

    return v0
.end method

.method private dismissProgressDialog()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    if-eqz v0, :cond_c

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->dismiss()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    .line 188
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->finish()V

    .line 189
    return-void
.end method

.method private showProgressDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Page"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentPage:I

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Value"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentValue:I

    .line 125
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setIcon(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setMax(I)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    iget v1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTotalPage:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setTotalPage(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setCancelable(Z)V

    .line 131
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentValue:I

    if-nez v0, :cond_8e

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    const v1, 0x7f080029

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setMessageText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_55
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTotalPage:I

    if-gt v0, v3, :cond_5d

    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentValue:I

    if-nez v0, :cond_6f

    .line 139
    :cond_5d
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    const/4 v1, -0x2

    const v2, 0x7f080006

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;-><init>(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 156
    :cond_6f
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f080005

    invoke-virtual {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$4;-><init>(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->show()V

    .line 167
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentPage:I

    iget v1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->updateProgressDialog(II)V

    .line 168
    return-void

    .line 135
    :cond_8e
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setMessageText(Ljava/lang/CharSequence;)V

    goto :goto_55
.end method

.method private updateProgressDialog(II)V
    .registers 5
    .parameter "page"
    .parameter "value"

    .prologue
    .line 171
    iput p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentPage:I

    .line 172
    iput p2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentValue:I

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    if-eqz v0, :cond_20

    .line 175
    if-lez p2, :cond_16

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setMessageText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setCurrentPage(I)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mProgressDialog:Lcom/sec/android/app/mobileprint/MPrintProgressDialog;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/mobileprint/MPrintProgressDialog;->setProgress(I)V

    .line 181
    :cond_20
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Transaction"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTransactionID:I

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TotalPage"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTotalPage:I

    .line 94
    iput v4, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentPage:I

    .line 95
    iput v3, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentValue:I

    .line 96
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MPrintProgressActivity : TransactionID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTransactionID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "mobileprint.event.print_progress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "mobileprint.event.print_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "mobileprint.event.print_canceled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "mobileprint.event.print_error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->myBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v4}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->myBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 119
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->showProgressDialog()V

    .line 112
    return-void
.end method
