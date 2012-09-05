.class public Lcom/sprint/w/installer/psi/PsiPackDetails;
.super Landroid/app/Activity;
.source "PsiPackDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoItem;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$WebSiteItem;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$OneLiner;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$WebViewItem;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsView;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoView;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$TextItemView;,
        Lcom/sprint/w/installer/psi/PsiPackDetails$DividerView;
    }
.end annotation


# static fields
.field static final DIALOG_ERROR_RETRY:I = 0x64

.field static final DIALOG_NO_SD_CARD:I = 0x66

.field static final DIALOG_PACK_REPLACE:I = 0x65

.field public static final EXTRA_PACK_NAME:Ljava/lang/String; = "packName"

.field public static final EXTRA_SERVICE_PACK:Ljava/lang/String; = "sp"

.field static final REQUEST_UNINSTALL_CONTENT:I = 0x1


# instance fields
.field isForeground:Z

.field private log:Lcom/sprint/id/logger/Logger;

.field mAdapter:Landroid/widget/ListAdapter;

.field final mCancelDownload:Landroid/view/View$OnClickListener;

.field mDefaultIcon:Landroid/graphics/Bitmap;

.field final mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

.field mDownloadPercentage:Landroid/widget/TextView;

.field mDownloadProgress:Landroid/widget/ProgressBar;

.field final mInstall:Landroid/view/View$OnClickListener;

.field mInstallButton:Landroid/widget/Button;

.field final mInstallDownloadedFile:Landroid/view/View$OnClickListener;

.field mInstalled:Z

.field mItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field mListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field mPackDesc:Landroid/widget/TextView;

.field mPackIcon:Landroid/widget/ImageView;

.field mPackName:Landroid/widget/TextView;

.field mPackVendor:Landroid/widget/TextView;

.field mProgress:Landroid/widget/ProgressBar;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mServicePack:Lcom/sprint/w/installer/psi/ServicePack;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-class v0, Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->log:Lcom/sprint/id/logger/Logger;

    .line 269
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackDetails$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$2;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstall:Landroid/view/View$OnClickListener;

    .line 359
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackDetails$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$3;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

    .line 410
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackDetails$4;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$4;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mCancelDownload:Landroid/view/View$OnClickListener;

    .line 422
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackDetails$5;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$5;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallDownloadedFile:Landroid/view/View$OnClickListener;

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    .line 817
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackDetails$10;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$10;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/psi/PsiPackDetails;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/psi/PsiPackDetails;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->setUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/psi/PsiPackDetails;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->installPack()V

    return-void
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/psi/PsiPackDetails;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->loadPackDetails()V

    return-void
.end method

.method static synthetic access$600(Lcom/sprint/w/installer/psi/PsiPackDetails;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getPackDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackDescription()Ljava/lang/String;
    .registers 6

    .prologue
    .line 834
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/ServicePack;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, version:Ljava/lang/String;
    if-nez v2, :cond_a

    .line 836
    const-string v2, "???"

    .line 838
    :cond_a
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/ServicePack;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, html:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br><br>Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 841
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 843
    .local v1, span:Landroid/text/Spanned;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private installPack()V
    .registers 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sprint/w/installer/util/Util;->isPsiPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->getUniquePackCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_18

    .line 289
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->showDialog(I)V

    .line 300
    :goto_17
    return-void

    .line 292
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sprint.ACTION_INSTALL_FROM_PSI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "sp"

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getSupportEmail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_41

    .line 297
    const-string v1, "skipTc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    :cond_41
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->startActivity(Landroid/content/Intent;)V

    goto :goto_17
.end method

.method private loadPackDetails()V
    .registers 2

    .prologue
    .line 168
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackDetails$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$1;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    .line 202
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    return-void
.end method

.method private setUI()V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v10, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    monitor-enter v10

    .line 207
    :try_start_4
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 208
    monitor-exit v10

    .line 267
    :goto_b
    return-void

    .line 210
    :cond_c
    move-object v1, p0

    .line 211
    .local v1, c:Landroid/content/Context;
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mPackName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v2}, Lcom/sprint/w/installer/psi/ServicePack;->getSupportName()Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, cp:Ljava/lang/String;
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mPackVendor:Landroid/widget/TextView;

    if-eqz v6, :cond_16d

    .end local v6           #cp:Ljava/lang/String;
    :goto_22
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mPackVendor:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->isDefaultPack()Z

    move-result v4

    if-eqz v4, :cond_37

    const/16 v0, 0x8

    :cond_37
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 220
    .local v7, list:Landroid/widget/ListView;
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sprint/w/installer/psi/PsiPackDetails$DetailsAdapter;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;Lcom/sprint/w/installer/psi/PsiPackDetails$1;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mAdapter:Landroid/widget/ListAdapter;

    .line 221
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mPackDesc:Landroid/widget/TextView;

    if-nez v0, :cond_176

    .line 226
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;

    const v4, 0x7f06006b

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$WebViewItem;

    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails$WebViewItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :goto_7f
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/ServicePack;->getScreenShot1()Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, ss1:Ljava/lang/String;
    if-eqz v8, :cond_ae

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ae

    .line 234
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;

    const v4, 0x7f060066

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;

    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getScreenShot2()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v8, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails$ScreenshotsItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_ae
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/ServicePack;->getVideoUrl()Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, video:Ljava/lang/String;
    if-eqz v9, :cond_dd

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_dd

    .line 240
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;

    const v4, 0x7f060067

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoItem;

    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_dd
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;

    const v4, 0x7f06005f

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/ServicePack;->getSupportName()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, data:Ljava/lang/String;
    if-eqz v3, :cond_100

    .line 248
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$OneLiner;

    invoke-direct {v2, v3}, Lcom/sprint/w/installer/psi/PsiPackDetails$OneLiner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_100
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;

    const v4, 0x7f060061

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/ServicePack;->getSupportWebsite()Ljava/lang/String;

    move-result-object v3

    .line 253
    if-eqz v3, :cond_12a

    .line 254
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$WebSiteItem;

    const v4, 0x7f060062

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4, v3, v3}, Lcom/sprint/w/installer/psi/PsiPackDetails$WebSiteItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_12a
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;

    const v4, 0x7f060063

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails$DividerItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/ServicePack;->getSupportEmail()Ljava/lang/String;

    move-result-object v3

    .line 259
    if-eqz v3, :cond_15b

    .line 260
    iget-object v11, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;

    const v2, 0x7f060064

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/sprint/w/installer/psi/PsiPackDetails$EmailItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_15b
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 266
    monitor-exit v10

    goto/16 :goto_b

    .end local v1           #c:Landroid/content/Context;
    .end local v3           #data:Ljava/lang/String;
    .end local v7           #list:Landroid/widget/ListView;
    .end local v8           #ss1:Ljava/lang/String;
    .end local v9           #video:Ljava/lang/String;
    :catchall_16a
    move-exception v0

    monitor-exit v10
    :try_end_16c
    .catchall {:try_start_4 .. :try_end_16c} :catchall_16a

    throw v0

    .line 214
    .restart local v1       #c:Landroid/content/Context;
    .restart local v6       #cp:Ljava/lang/String;
    :cond_16d
    const v4, 0x7f06006a

    :try_start_170
    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_22

    .line 229
    .end local v6           #cp:Ljava/lang/String;
    .restart local v7       #list:Landroid/widget/ListView;
    :cond_176
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mPackDesc:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getPackDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_17f
    .catchall {:try_start_170 .. :try_end_17f} :catchall_16a

    goto/16 :goto_7f
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 305
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 306
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 307
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->installPack()V

    .line 310
    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v7, 0x7f030020

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/psi/PsiPackDetails;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 79
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_8b

    .line 83
    const-string v7, "product"

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, id:Ljava/lang/String;
    if-nez v4, :cond_43

    const-string v7, "install"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 87
    const-string v7, "id"

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    if-eqz v4, :cond_43

    .line 91
    invoke-static {p0, v4}, Lcom/sprint/w/installer/DownloadService;->getReadyToInstallPack(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v6

    .line 93
    .local v6, sp:Lcom/sprint/w/installer/psi/ServicePack;
    :try_start_34
    iget-object v7, v6, Lcom/sprint/w/installer/psi/ServicePack;->installIntent:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 96
    .local v3, i:Landroid/content/Intent;
    const-class v7, Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/PsiPackDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_43} :catch_82

    .line 103
    .end local v3           #i:Landroid/content/Intent;
    .end local v6           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_43
    :goto_43
    if-eqz v4, :cond_73

    .line 104
    invoke-static {p0, v4}, Lcom/sprint/w/installer/PackInfo;->isPSIPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 105
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/sprint/w/installer/SprintIdHome;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/psi/PsiPackDetails;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->finish()V

    .line 109
    .end local v5           #intent:Landroid/content/Intent;
    :cond_58
    new-instance v7, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v7}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 110
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v7, v4}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 111
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "extra.IS_DEFAULT"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sprint/w/installer/psi/ServicePack;->setDefaultPack(Z)V

    .line 119
    .end local v4           #id:Ljava/lang/String;
    :cond_73
    :goto_73
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    if-nez v7, :cond_a0

    .line 120
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Expected extra: sp"

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->finish()V

    .line 151
    :cond_81
    :goto_81
    return-void

    .line 98
    .restart local v4       #id:Ljava/lang/String;
    .restart local v6       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :catch_82
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, ""

    invoke-virtual {v7, v8, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    .line 114
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #id:Ljava/lang/String;
    .end local v6           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_8b
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 115
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_73

    .line 116
    const-string v7, "sp"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/sprint/w/installer/psi/ServicePack;

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    goto :goto_73

    .line 125
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_a0
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v7}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/sprint/w/installer/PackInfo;->isPSIPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstalled:Z

    .line 127
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020014

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 128
    const v7, 0x7f0c0009

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/psi/PsiPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mPackIcon:Landroid/widget/ImageView;

    .line 129
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mPackIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v8}, Lcom/sprint/w/installer/psi/ServicePack;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v7, v8, v9}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 131
    const v7, 0x7f0c000b

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/psi/PsiPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mPackName:Landroid/widget/TextView;

    .line 132
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mPackName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v8}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v7, 0x7f0c000a

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/psi/PsiPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mPackVendor:Landroid/widget/TextView;

    .line 135
    const v7, 0x7f0c005b

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/psi/PsiPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mPackDesc:Landroid/widget/TextView;

    .line 137
    const v7, 0x7f0c0012

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/psi/PsiPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    .line 138
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    const v7, 0x7f0c0008

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/psi/PsiPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mProgress:Landroid/widget/ProgressBar;

    .line 142
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    const v7, 0x7f0c0058

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/psi/PsiPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    .line 144
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 145
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-direct {v7, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 146
    const v7, 0x7f0c0059

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/psi/PsiPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    .line 148
    if-nez p1, :cond_81

    .line 149
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->loadPackDetails()V

    goto/16 :goto_81
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x104

    .line 448
    packed-switch p1, :pswitch_data_c8

    .line 477
    invoke-static {p0, p1}, Lcom/sprint/w/installer/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    :goto_a
    return-object v0

    .line 450
    :pswitch_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060075

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060047

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$7;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$7;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/psi/PsiPackDetails$6;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$6;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    .line 463
    :pswitch_40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0600b6

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600b4

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600b5

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$8;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$8;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_a

    .line 470
    :pswitch_8e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0600e1

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600e2

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstalled:Z

    if-eqz v0, :cond_c3

    const v0, 0x7f060035

    :goto_b0
    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackDetails$9;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/psi/PsiPackDetails$9;-><init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_a

    :cond_c3
    const v0, 0x7f060003

    goto :goto_b0

    .line 448
    nop

    :pswitch_data_c8
    .packed-switch 0x64
        :pswitch_b
        :pswitch_40
        :pswitch_8e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->isForeground:Z

    .line 356
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

    invoke-static {v0, v1}, Lcom/sprint/w/installer/DownloadService;->removeStatusListener(Ljava/lang/String;Lcom/sprint/w/installer/DownloadService$StatusListener;)V

    .line 357
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 163
    const-string v0, "mServicePack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/psi/ServicePack;

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 164
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->setUI()V

    .line 165
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 315
    iput-boolean v7, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->isForeground:Z

    .line 318
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v5}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, id:Ljava/lang/String;
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

    invoke-static {p0, v0, v5}, Lcom/sprint/w/installer/DownloadService;->addStatusListener(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DownloadService$StatusListener;)I

    move-result v2

    .line 320
    .local v2, sc:I
    if-ne v2, v7, :cond_74

    .line 321
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    const v6, 0x7f0600aa

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 322
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mCancelDownload:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v6}, Lcom/sprint/w/installer/psi/ServicePack;->isDefaultPack()Z

    move-result v6

    if-eqz v6, :cond_72

    :goto_35
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 325
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_71

    .line 326
    invoke-static {v0}, Lcom/sprint/w/installer/DownloadService;->getDownloadProgress(Ljava/lang/String;)I

    move-result v1

    .line 327
    .local v1, progress:I
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 328
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 329
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    .end local v1           #progress:I
    :cond_71
    :goto_71
    return-void

    :cond_72
    move v3, v4

    .line 324
    goto :goto_35

    .line 333
    :cond_74
    const/4 v5, 0x2

    if-ne v2, v5, :cond_9b

    .line 334
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 335
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    const v6, 0x7f0600a9

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 336
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallDownloadedFile:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 338
    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 339
    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_71

    .line 341
    :cond_9b
    iget-object v6, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstalled:Z

    if-eqz v5, :cond_be

    const v5, 0x7f060035

    :goto_a4
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(I)V

    .line 343
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v5, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 345
    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 346
    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_71

    .line 341
    :cond_be
    const v5, 0x7f060003

    goto :goto_a4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    const-string v0, "mServicePack"

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 158
    return-void
.end method
