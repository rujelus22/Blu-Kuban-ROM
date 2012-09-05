.class public Lcom/samsung/app/playreadyui/PRUIActivity;
.super Landroid/app/Activity;
.source "PRUIActivity.java"


# instance fields
.field private final STATUS_ERROR_JOIN_DOMAIN:I

.field private final STATUS_ERROR_LEAVE_DOMAIN:I

.field private final STATUS_ERROR_LICENSE_ACQUISITION:I

.field private final STATUS_ERROR_METERING:I

.field private final STATUS_OK_JOIN_DOMAIN:I

.field private final STATUS_OK_LEAVE_DOMAIN:I

.field private final STATUS_OK_LICENSE_ACQUISITION:I

.field private final STATUS_OK_METERING:I

.field private final mHandler:Landroid/os/Handler;

.field private mInitiatorThread:Ljava/lang/Thread;

.field mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;

    .line 60
    iput-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mInitiatorThread:Ljava/lang/Thread;

    .line 61
    iput-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->STATUS_OK_LICENSE_ACQUISITION:I

    .line 65
    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->STATUS_ERROR_LICENSE_ACQUISITION:I

    .line 66
    const/4 v0, -0x3

    iput v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->STATUS_OK_JOIN_DOMAIN:I

    .line 67
    const/4 v0, -0x4

    iput v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->STATUS_ERROR_JOIN_DOMAIN:I

    .line 68
    const/4 v0, -0x5

    iput v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->STATUS_OK_LEAVE_DOMAIN:I

    .line 69
    const/4 v0, -0x6

    iput v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->STATUS_ERROR_LEAVE_DOMAIN:I

    .line 70
    const/4 v0, -0x7

    iput v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->STATUS_OK_METERING:I

    .line 71
    const/4 v0, -0x8

    iput v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->STATUS_ERROR_METERING:I

    .line 85
    new-instance v0, Lcom/samsung/app/playreadyui/PRUIActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/app/playreadyui/PRUIActivity$1;-><init>(Lcom/samsung/app/playreadyui/PRUIActivity;)V

    iput-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/samsung/app/playreadyui/PRUIActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/app/playreadyui/PRUIActivity$2;-><init>(Lcom/samsung/app/playreadyui/PRUIActivity;)V

    iput-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 204
    new-instance v0, Lcom/samsung/app/playreadyui/PRUIActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/app/playreadyui/PRUIActivity$3;-><init>(Lcom/samsung/app/playreadyui/PRUIActivity;)V

    iput-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/app/playreadyui/PRUIActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/app/playreadyui/PRUIActivity;Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/app/playreadyui/PRUIActivity;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/samsung/app/playreadyui/PRUIActivity;->createErrorDialog(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/app/playreadyui/PRUIActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/app/playreadyui/PRUIActivity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/app/playreadyui/PRUIActivity;->startRegularDownload(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private createErrorDialog(ILjava/lang/String;)V
    .registers 9
    .parameter "action"
    .parameter "url"

    .prologue
    .line 372
    const/4 v2, 0x0

    .line 373
    .local v2, resId:I
    move-object v1, p2

    .line 375
    .local v1, redirectionUrl:Ljava/lang/String;
    const-string v3, "PRUIActivity::Create Error Dialog:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Url["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    packed-switch p1, :pswitch_data_b2

    .line 507
    :goto_33
    :pswitch_33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 508
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 509
    invoke-virtual {p0}, Lcom/samsung/app/playreadyui/PRUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 510
    const/high16 v3, 0x7f04

    new-instance v4, Lcom/samsung/app/playreadyui/PRUIActivity$5;

    invoke-direct {v4, p0, v1}, Lcom/samsung/app/playreadyui/PRUIActivity$5;-><init>(Lcom/samsung/app/playreadyui/PRUIActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 550
    new-instance v3, Lcom/samsung/app/playreadyui/PRUIActivity$6;

    invoke-direct {v3, p0}, Lcom/samsung/app/playreadyui/PRUIActivity$6;-><init>(Lcom/samsung/app/playreadyui/PRUIActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 559
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 560
    return-void

    .line 381
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :pswitch_5e
    const v2, 0x7f040003

    .line 383
    goto :goto_33

    .line 387
    :pswitch_62
    const v2, 0x7f040004

    .line 389
    goto :goto_33

    .line 393
    :pswitch_66
    const v2, 0x7f040005

    .line 395
    goto :goto_33

    .line 399
    :pswitch_6a
    const v2, 0x7f040006

    .line 401
    goto :goto_33

    .line 405
    :pswitch_6e
    const v2, 0x7f040007

    .line 407
    goto :goto_33

    .line 411
    :pswitch_72
    const v2, 0x7f040008

    .line 413
    goto :goto_33

    .line 417
    :pswitch_76
    const v2, 0x7f040009

    .line 419
    goto :goto_33

    .line 423
    :pswitch_7a
    const v2, 0x7f04000a

    .line 425
    goto :goto_33

    .line 429
    :pswitch_7e
    const v2, 0x7f04000b

    .line 431
    goto :goto_33

    .line 435
    :pswitch_82
    const v2, 0x7f04000c

    .line 437
    goto :goto_33

    .line 441
    :pswitch_86
    const v2, 0x7f04000d

    .line 443
    goto :goto_33

    .line 447
    :pswitch_8a
    const v2, 0x7f04000e

    .line 449
    goto :goto_33

    .line 453
    :pswitch_8e
    const v2, 0x7f04000f

    .line 455
    goto :goto_33

    .line 459
    :pswitch_92
    const v2, 0x7f040010

    .line 461
    goto :goto_33

    .line 465
    :pswitch_96
    const v2, 0x7f040011

    .line 467
    goto :goto_33

    .line 471
    :pswitch_9a
    const v2, 0x7f040012

    .line 473
    goto :goto_33

    .line 477
    :pswitch_9e
    const v2, 0x7f040013

    .line 479
    goto :goto_33

    .line 483
    :pswitch_a2
    const v2, 0x7f040014

    .line 485
    goto :goto_33

    .line 489
    :pswitch_a6
    const v2, 0x7f040015

    .line 491
    goto :goto_33

    .line 495
    :pswitch_aa
    const v2, 0x7f040016

    .line 497
    goto :goto_33

    .line 501
    :pswitch_ae
    const v2, 0x7f040017

    goto :goto_33

    .line 377
    :pswitch_data_b2
    .packed-switch -0x8
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_5e
        :pswitch_62
        :pswitch_66
        :pswitch_6a
        :pswitch_6e
        :pswitch_72
        :pswitch_76
        :pswitch_7a
        :pswitch_7e
        :pswitch_82
        :pswitch_86
        :pswitch_8a
        :pswitch_8e
    .end packed-switch
.end method

.method private startRegularDownload(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 13
    .parameter "url"
    .parameter "mimetype"
    .parameter "uri"
    .parameter "filename"

    .prologue
    .line 336
    const-string v5, "PRUIActivity::startRegularDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " url["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mimetype["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uri["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " filename["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :try_start_52
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-direct {v4, p3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_57} :catch_98

    .line 350
    .local v4, request:Landroid/app/DownloadManager$Request;
    invoke-virtual {v4, p2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 354
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v5, p4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 358
    invoke-virtual {v4}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 360
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 361
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 363
    const-string v5, "download"

    invoke-virtual {p0, v5}, Lcom/samsung/app/playreadyui/PRUIActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 364
    .local v3, manager:Landroid/app/DownloadManager;
    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 366
    .local v0, downloadId:J
    const-string v5, "PRUIActivity::startRegularDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Download Id["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v0           #downloadId:J
    .end local v3           #manager:Landroid/app/DownloadManager;
    .end local v4           #request:Landroid/app/DownloadManager$Request;
    :goto_97
    return-void

    .line 342
    :catch_98
    move-exception v2

    .line 345
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "PRUIActivity::startRegularDownload"

    const-string v6, "***ERROR*** Download precondition failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "PRUIActivity"

    const-string v1, "Creating PRUIActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->requestWindowFeature(I)Z

    .line 81
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/samsung/app/playreadyui/PRUIActivity;->setContentView(I)V

    .line 83
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 322
    const-string v0, "PRUIActivity"

    const-string v1, "PRUIActivity, onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 325
    return-void
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const v8, 0x7f040001

    .line 232
    const-string v5, "PRUIActivity::"

    const-string v6, "onResume Starts"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v5, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 237
    const-string v5, "PRUIActivity"

    const-string v6, "Dismiss already showing processing popup"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v5, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 241
    :cond_22
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;

    .line 242
    iget-object v5, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/app/playreadyui/PRUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v5, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 244
    iget-object v5, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 245
    iget-object v5, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 247
    new-instance v3, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Lcom/samsung/app/playreadyui/PRUIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 248
    .local v3, mDrmManagerClient:Landroid/drm/DrmManagerClient;
    iget-object v5, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    invoke-virtual {v3, v5}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 249
    iget-object v5, p0, Lcom/samsung/app/playreadyui/PRUIActivity;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    invoke-virtual {v3, v5}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 253
    const/4 v5, 0x4

    new-array v0, v5, [B

    fill-array-data v0, :array_ac

    .line 254
    .local v0, byteArray:[B
    new-instance v2, Landroid/drm/DrmInfo;

    const/16 v5, 0x16

    invoke-virtual {p0}, Lcom/samsung/app/playreadyui/PRUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v0, v6}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    .line 255
    .local v2, mDrmInfo:Landroid/drm/DrmInfo;
    const-string v5, "Initiator_Url"

    invoke-virtual {p0}, Lcom/samsung/app/playreadyui/PRUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    .line 258
    .local v1, errorcode:I
    if-eqz v1, :cond_a8

    .line 277
    new-instance v4, Lcom/samsung/app/playreadyui/PRUIActivity$4;

    invoke-direct {v4, p0}, Lcom/samsung/app/playreadyui/PRUIActivity$4;-><init>(Lcom/samsung/app/playreadyui/PRUIActivity;)V

    .line 286
    .local v4, okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/app/playreadyui/PRUIActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 317
    .end local v4           #okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_a8
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 318
    return-void

    .line 253
    :array_ac
    .array-data 0x1
        0x4at
        0x55t
        0x4et
        0x4bt
    .end array-data
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 330
    const-string v0, "PRUIActivity"

    const-string v1, "PRUIActivity, onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 332
    return-void
.end method
