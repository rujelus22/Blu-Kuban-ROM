.class public Lcom/sec/android/app/servicemodeapp/ViewRilLog;
.super Landroid/app/Activity;
.source "ViewRilLog.java"


# static fields
.field private static LogMessage:Ljava/lang/StringBuilder;

.field private static current_page:I

.field private static in:Ljava/io/RandomAccessFile;

.field private static mFis:Ljava/io/FileInputStream;

.field private static mIsr:Ljava/io/InputStreamReader;

.field private static page:I

.field private static totalPages:I


# instance fields
.field private buf:[B

.field private builder:Landroid/app/AlertDialog$Builder;

.field private fis:Ljava/io/FileInputStream;

.field private fos:Ljava/io/FileOutputStream;

.field private inFile:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mScroller:Landroid/widget/Scroller;

.field private mTextView:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private rilLog:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    sput-object v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->mFis:Ljava/io/FileInputStream;

    .line 88
    sput-object v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->mIsr:Ljava/io/InputStreamReader;

    .line 90
    sput-object v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->in:Ljava/io/RandomAccessFile;

    .line 92
    sput v0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    .line 93
    sput v0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->current_page:I

    .line 94
    sput v0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->totalPages:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->phone:Lcom/android/internal/telephony/Phone;

    .line 68
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->fis:Ljava/io/FileInputStream;

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->fos:Ljava/io/FileOutputStream;

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->rilLog:Ljava/io/File;

    .line 72
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->buf:[B

    .line 77
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->mScroller:Landroid/widget/Scroller;

    .line 102
    new-instance v0, Lcom/sec/android/app/servicemodeapp/ViewRilLog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog$1;-><init>(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisplayMessageDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 409
    return-void
.end method

.method static synthetic access$000()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->LogMessage:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    sput-object p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->LogMessage:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200()Ljava/io/RandomAccessFile;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->in:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 60
    sget v0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->totalPages:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    sput p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->totalPages:I

    return p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->DisplayMessageDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/servicemodeapp/ViewRilLog;Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->sendParsedString(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 60
    sget v0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    return v0
.end method

.method private moveToPage()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 318
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->builder:Landroid/app/AlertDialog$Builder;

    .line 320
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    const-string v3, "Loading Ril Log..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 323
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 328
    :try_start_26
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->inFile:Ljava/lang/String;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->in:Ljava/io/RandomAccessFile;

    .line 329
    const-string v2, "ViewRilLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->inFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Kb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog$3;-><init>(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_6b} :catch_9a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_6b} :catch_a6

    .line 396
    :goto_6b
    sget v2, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->current_page:I

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->current_page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->totalPages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, message:Ljava/lang/String;
    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 401
    return-void

    .line 383
    .end local v1           #message:Ljava/lang/String;
    :catch_9a
    move-exception v0

    .line 385
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "File open fail!"

    invoke-direct {p0, v2}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->DisplayMessageDialog(Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_6b

    .line 389
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_a6
    move-exception v0

    .line 391
    .local v0, e:Ljava/io/IOException;
    const-string v2, "File open fail!"

    invoke-direct {p0, v2}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->DisplayMessageDialog(Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_6b
.end method

.method private sendParsedString(Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "rilLogMessage"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    const-string v1, "ViewRilLog"

    const-string v2, "sendParsedString..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const v3, 0x7f030014

    invoke-virtual {p0, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->setContentView(I)V

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 144
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, key:Ljava/lang/String;
    const v3, 0x7f06003e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->mTextView:Landroid/widget/TextView;

    .line 147
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->builder:Landroid/app/AlertDialog$Builder;

    .line 151
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    .line 152
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    const-string v4, "Loading Ril Log..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 154
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 155
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 157
    sput v5, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    .line 158
    sput v5, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->totalPages:I

    .line 162
    :try_start_4d
    const-string v3, "ViewRilLog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/log/ril_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getRilDumpTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->inFile:Ljava/lang/String;

    .line 171
    :cond_74
    :goto_74
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->inFile:Ljava/lang/String;

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->in:Ljava/io/RandomAccessFile;

    .line 172
    const-string v3, "ViewRilLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->inFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Kb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog$2;-><init>(Lcom/sec/android/app/servicemodeapp/ViewRilLog;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_b9
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_b9} :catch_eb
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_b9} :catch_f7

    .line 240
    :goto_b9
    const-string v3, "You can move to next page by menu key."

    invoke-static {p0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 241
    return-void

    .line 164
    :cond_c3
    :try_start_c3
    const-string v3, "ViewIPCDumpLog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/log/ipcdump_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getRilDumpTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->inFile:Ljava/lang/String;
    :try_end_ea
    .catch Ljava/io/FileNotFoundException; {:try_start_c3 .. :try_end_ea} :catch_eb
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_ea} :catch_f7

    goto :goto_74

    .line 227
    :catch_eb
    move-exception v0

    .line 229
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "File open fail!"

    invoke-direct {p0, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->DisplayMessageDialog(Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_b9

    .line 233
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_f7
    move-exception v0

    .line 235
    .local v0, e:Ljava/io/IOException;
    const-string v3, "File open fail!"

    invoke-direct {p0, v3}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->DisplayMessageDialog(Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_b9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 259
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 263
    const/4 v0, 0x3

    const v1, 0x7f050026

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 264
    const/4 v0, 0x4

    const v1, 0x7f050027

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 265
    const/4 v0, 0x6

    const v1, 0x7f050028

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 266
    const/4 v0, 0x5

    const v1, 0x7f050029

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 252
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_c

    .line 422
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 418
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->finish()V

    goto :goto_3

    .line 414
    :pswitch_data_c
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    move v0, v1

    .line 314
    :goto_a
    return v0

    .line 277
    :pswitch_b
    sget v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    if-nez v1, :cond_15

    .line 279
    const-string v1, "This page is First"

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->DisplayMessageDialog(Ljava/lang/String;)V

    goto :goto_a

    .line 283
    :cond_15
    sget v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    .line 284
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->moveToPage()V

    goto :goto_a

    .line 291
    :pswitch_1f
    sget v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    sget v2, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->totalPages:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2d

    .line 293
    const-string v1, "This page is Last"

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->DisplayMessageDialog(Ljava/lang/String;)V

    goto :goto_a

    .line 297
    :cond_2d
    sget v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    .line 298
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->moveToPage()V

    goto :goto_a

    .line 304
    :pswitch_37
    sput v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    .line 305
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->moveToPage()V

    goto :goto_a

    .line 309
    :pswitch_3d
    sget v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->totalPages:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->page:I

    .line 310
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/ViewRilLog;->moveToPage()V

    goto :goto_a

    .line 274
    nop

    :pswitch_data_48
    .packed-switch 0x3
        :pswitch_b
        :pswitch_1f
        :pswitch_3d
        :pswitch_37
    .end packed-switch
.end method
