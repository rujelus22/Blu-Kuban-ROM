.class public Lcom/sprint/w/installer/delivery/CatalogCardViewer;
.super Landroid/app/Activity;
.source "CatalogCardViewer.java"


# static fields
.field private static final DIALOG_CAN_NOT_CONTINUE:I = 0x1

.field private static final DIALOG_DOWNLOAD_FAIL:I


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field final mCancelDownload:Landroid/view/View$OnClickListener;

.field private mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

.field final mCompleteInstall:Landroid/view/View$OnClickListener;

.field mDefaultIcon:Landroid/graphics/Bitmap;

.field mDeliverRequestID:Ljava/lang/String;

.field private mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

.field final mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

.field mDownloadPercentage:Landroid/widget/TextView;

.field mDownloadProgress:Landroid/widget/ProgressBar;

.field mHandler:Landroid/os/Handler;

.field mIcon:Landroid/widget/ImageView;

.field final mInstall:Landroid/view/View$OnClickListener;

.field mInstallButton:Landroid/widget/Button;

.field mIsForeground:Z

.field mProgress:Landroid/widget/ProgressBar;

.field mWeb:Landroid/webkit/WebView;

.field final mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const-class v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->log:Lcom/sprint/id/logger/Logger;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;-><init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstall:Landroid/view/View$OnClickListener;

    .line 126
    new-instance v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer$2;-><init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 144
    new-instance v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer$3;-><init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

    .line 194
    new-instance v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$4;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer$4;-><init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCompleteInstall:Landroid/view/View$OnClickListener;

    .line 208
    new-instance v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$5;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer$5;-><init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCancelDownload:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/CatalogCard;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->saveItemDetails()V

    return-void
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/DeliveryRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/delivery/CatalogCardViewer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiProgressChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiDone()V

    return-void
.end method

.method static synthetic access$500(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiReadyInstall()V

    return-void
.end method

.method static synthetic access$600(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiReadyDownload()V

    return-void
.end method

.method static synthetic access$800(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->clearNotification()V

    return-void
.end method

.method private adjustDownloadPercentageColor(I)V
    .registers 4
    .parameter "percentComplete"

    .prologue
    .line 187
    const/16 v0, 0x31

    if-lt p1, v0, :cond_c

    .line 188
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadPercentage:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    :goto_b
    return-void

    .line 190
    :cond_c
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadPercentage:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b
.end method

.method private clearNotification()V
    .registers 3

    .prologue
    .line 340
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 341
    .local v0, notMgr:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliverRequestID:Ljava/lang/String;

    invoke-static {v1}, Lcom/sprint/w/installer/DownloadService;->getNotificationId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 343
    return-void
.end method

.method private readItemDetails(Ljava/lang/String;)Lcom/sprint/w/installer/delivery/CatalogCard;
    .registers 10
    .parameter "id"

    .prologue
    .line 317
    const/4 v4, 0x0

    .line 318
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 320
    .local v2, fi:Lcom/sprint/w/installer/delivery/CatalogCard;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".fi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 322
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 323
    .local v5, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sprint/w/installer/delivery/CatalogCard;

    move-object v2, v0

    .line 324
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_38

    .line 325
    const/4 v4, 0x0

    .line 329
    if-eqz v4, :cond_37

    .line 331
    :try_start_34
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_4f

    .line 336
    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    :cond_37
    :goto_37
    return-object v2

    .line 326
    :catch_38
    move-exception v1

    .line 327
    .local v1, e:Ljava/lang/Exception;
    :try_start_39
    iget-object v6, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Error reading CatalogCard details"

    invoke-virtual {v6, v7, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_48

    .line 329
    if-eqz v4, :cond_37

    .line 331
    :try_start_42
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_37

    .line 332
    :catch_46
    move-exception v6

    goto :goto_37

    .line 329
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_48
    move-exception v6

    if-eqz v4, :cond_4e

    .line 331
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_51

    .line 333
    :cond_4e
    :goto_4e
    throw v6

    .line 332
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_4f
    move-exception v6

    goto :goto_37

    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    :catch_51
    move-exception v7

    goto :goto_4e
.end method

.method private saveItemDetails()V
    .registers 7

    .prologue
    .line 295
    const/4 v2, 0x0

    .line 297
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v5, v5, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".fi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 299
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 300
    .local v3, oos:Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 301
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 302
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_3c

    .line 303
    const/4 v2, 0x0

    .line 307
    if-eqz v2, :cond_3b

    .line 309
    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_53

    .line 314
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :cond_3b
    :goto_3b
    return-void

    .line 304
    :catch_3c
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    :try_start_3d
    iget-object v4, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Error saving CatalogCard details"

    invoke-virtual {v4, v5, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_4c

    .line 307
    if-eqz v2, :cond_3b

    .line 309
    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_3b

    .line 310
    :catch_4a
    move-exception v4

    goto :goto_3b

    .line 307
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_4c
    move-exception v4

    if-eqz v2, :cond_52

    .line 309
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_55

    .line 311
    :cond_52
    :goto_52
    throw v4

    .line 310
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    :catch_53
    move-exception v4

    goto :goto_3b

    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :catch_55
    move-exception v5

    goto :goto_52
.end method

.method private setUiDone()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 244
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 246
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    return-void
.end method

.method private setUiProgressChanged(I)V
    .registers 5
    .parameter "percentComplete"

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 227
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadPercentage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->adjustDownloadPercentageColor(I)V

    .line 230
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCancelDownload:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    const v1, 0x7f0600aa

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 233
    return-void
.end method

.method private setUiReadyDownload()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 251
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 253
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    return-void
.end method

.method private setUiReadyInstall()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 236
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    const v1, 0x7f0600a9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 238
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCompleteInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->requestWindowFeature(I)Z

    .line 61
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 63
    .local v12, uri:Landroid/net/Uri;
    if-eqz v12, :cond_15a

    .line 64
    const-string v0, "id"

    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->readItemDetails(Ljava/lang/String;)Lcom/sprint/w/installer/delivery/CatalogCard;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    .line 65
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    if-eqz v0, :cond_156

    .line 66
    const-string v0, "id"

    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliverRequestID:Ljava/lang/String;

    .line 67
    const-string v0, "status"

    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 68
    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->showDialog(I)V

    .line 79
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    if-eqz v0, :cond_70

    .line 80
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliverRequestID:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v1, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->REACHED_CARD_VIEW:Lcom/sprint/w/installer/DeliveryState;

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    iget-object v4, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    iget-object v6, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->version:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    iget v5, v5, Lcom/sprint/w/installer/delivery/CatalogCard;->versionCode:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v5, v3

    invoke-static/range {v0 .. v8}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    :cond_70
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mIcon:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 85
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/CatalogCard;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 87
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/CatalogCard;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 89
    .local v11, subTitle:Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f060048

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/CatalogCard;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->description:Ljava/lang/String;

    if-eqz v0, :cond_124

    .line 92
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 93
    .local v10, frame:Landroid/widget/FrameLayout;
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mWeb:Landroid/webkit/WebView;

    .line 94
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mWeb:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mWeb:Landroid/webkit/WebView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<body link=\'#6699ff\' text=\'#ffffff\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/CatalogCard;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, html:Ljava/lang/String;
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mWeb:Landroid/webkit/WebView;

    const-string v5, "text/html"

    const-string v6, "utf-8"

    move-object v7, v3

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v4           #html:Ljava/lang/String;
    .end local v10           #frame:Landroid/widget/FrameLayout;
    :cond_124
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstallButton:Landroid/widget/Button;

    .line 101
    .local v9, b:Landroid/widget/Button;
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mProgress:Landroid/widget/ProgressBar;

    .line 103
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadPercentage:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadProgress:Landroid/widget/ProgressBar;

    .line 105
    .end local v9           #b:Landroid/widget/Button;
    .end local v11           #subTitle:Landroid/widget/TextView;
    :goto_155
    return-void

    .line 71
    :cond_156
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->finish()V

    goto :goto_155

    .line 75
    :cond_15a
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/sprint/w/installer/delivery/CatalogCard;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/delivery/CatalogCard;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;

    .line 77
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    goto/16 :goto_3c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    const v2, 0x104000a

    .line 350
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 353
    packed-switch p1, :pswitch_data_4a

    .line 374
    :goto_f
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 355
    :pswitch_14
    const v1, 0x7f060074

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 356
    const v1, 0x7f0600ed

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 357
    new-instance v1, Lcom/sprint/w/installer/delivery/CatalogCardViewer$6;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer$6;-><init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_f

    .line 365
    :pswitch_2d
    const v1, 0x7f0600ee

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 366
    const v1, 0x7f0600ec

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 367
    new-instance v1, Lcom/sprint/w/installer/delivery/CatalogCardViewer$7;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer$7;-><init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_f

    .line 353
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_2d
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mWeb:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    .line 261
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 263
    :cond_c
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mIsForeground:Z

    .line 269
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliverRequestID:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 270
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliverRequestID:Ljava/lang/String;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

    invoke-static {v0, v1}, Lcom/sprint/w/installer/DownloadService;->removeStatusListener(Ljava/lang/String;Lcom/sprint/w/installer/DownloadService$StatusListener;)V

    .line 272
    :cond_11
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 277
    iput-boolean v4, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mIsForeground:Z

    .line 278
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliverRequestID:Ljava/lang/String;

    if-eqz v2, :cond_1d

    .line 279
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliverRequestID:Ljava/lang/String;

    iget-object v3, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

    invoke-static {p0, v2, v3}, Lcom/sprint/w/installer/DownloadService;->addStatusListener(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DownloadService$StatusListener;)I

    move-result v1

    .line 280
    .local v1, sc:I
    if-ne v1, v4, :cond_1e

    .line 281
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliverRequestID:Ljava/lang/String;

    invoke-static {v2}, Lcom/sprint/w/installer/DownloadService;->getDownloadProgress(Ljava/lang/String;)I

    move-result v0

    .line 282
    .local v0, percentComplete:I
    invoke-direct {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiProgressChanged(I)V

    .line 292
    .end local v0           #percentComplete:I
    .end local v1           #sc:I
    :cond_1d
    :goto_1d
    return-void

    .line 284
    .restart local v1       #sc:I
    :cond_1e
    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    .line 285
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiReadyInstall()V

    goto :goto_1d

    .line 287
    :cond_25
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    if-eqz v2, :cond_1d

    .line 288
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiReadyDownload()V

    goto :goto_1d
.end method
