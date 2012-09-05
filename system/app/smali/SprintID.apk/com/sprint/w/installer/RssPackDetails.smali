.class public Lcom/sprint/w/installer/RssPackDetails;
.super Landroid/app/Activity;
.source "RssPackDetails.java"


# static fields
.field static final DIALOG_NO_SD_CARD:I = 0x66

.field public static final EXTRA_FEED_ITEM:Ljava/lang/String; = "feedItem"

.field public static final EXTRA_RSS_ICON_URL:Ljava/lang/String; = "iconUrl"

.field public static final EXTRA_RSS_TERMS_AND_CONDITIONS:Ljava/lang/String; = "terms"

.field public static final EXTRA_RSS_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field final mCancelDownload:Landroid/view/View$OnClickListener;

.field final mCompleteInstall:Landroid/view/View$OnClickListener;

.field mDefaultIcon:Landroid/graphics/Bitmap;

.field final mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

.field mDownloadPercentage:Landroid/widget/TextView;

.field mDownloadProgress:Landroid/widget/ProgressBar;

.field mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

.field mHandler:Landroid/os/Handler;

.field mIcon:Landroid/widget/ImageView;

.field final mInstall:Landroid/view/View$OnClickListener;

.field mInstallButton:Landroid/widget/Button;

.field mIsForeground:Z

.field mLink:Ljava/lang/String;

.field mProgress:Landroid/widget/ProgressBar;

.field mWeb:Landroid/webkit/WebView;

.field final mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const-class v0, Lcom/sprint/w/installer/RssPackDetails;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->log:Lcom/sprint/id/logger/Logger;

    .line 100
    new-instance v0, Lcom/sprint/w/installer/RssPackDetails$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssPackDetails$1;-><init>(Lcom/sprint/w/installer/RssPackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstall:Landroid/view/View$OnClickListener;

    .line 182
    new-instance v0, Lcom/sprint/w/installer/RssPackDetails$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssPackDetails$2;-><init>(Lcom/sprint/w/installer/RssPackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 206
    new-instance v0, Lcom/sprint/w/installer/RssPackDetails$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssPackDetails$3;-><init>(Lcom/sprint/w/installer/RssPackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

    .line 271
    new-instance v0, Lcom/sprint/w/installer/RssPackDetails$4;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssPackDetails$4;-><init>(Lcom/sprint/w/installer/RssPackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mCompleteInstall:Landroid/view/View$OnClickListener;

    .line 283
    new-instance v0, Lcom/sprint/w/installer/RssPackDetails$5;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssPackDetails$5;-><init>(Lcom/sprint/w/installer/RssPackDetails;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mCancelDownload:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/RssPackDetails;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sprint/w/installer/RssPackDetails;->installPack()V

    return-void
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/RssPackDetails;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/RssPackDetails;->adjustDownloadPercentageColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/RssPackDetails;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method private adjustDownloadPercentageColor(I)V
    .registers 4
    .parameter "percentComplete"

    .prologue
    .line 264
    const/16 v0, 0x31

    if-lt p1, v0, :cond_c

    .line 265
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    :goto_b
    return-void

    .line 267
    :cond_c
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b
.end method

.method private installPack()V
    .registers 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    .line 136
    .local v0, fi:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;
    if-eqz v0, :cond_55

    iget-object v2, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->link:Ljava/lang/String;

    if-eqz v2, :cond_55

    .line 137
    iget-object v2, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->link:Ljava/lang/String;

    iput-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mLink:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lcom/sprint/w/installer/RssPackDetails;->saveItemDetails()V

    .line 139
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sprint/w/installer/RssPackDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v1, i:Landroid/content/Intent;
    const-string v2, "terms"

    iget-object v3, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->terms:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "title"

    iget-object v3, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v2, "iconUrl"

    iget-object v3, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v2, "com.sprint.ACTION_INSTALL_FROM_URL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v2, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->link:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 145
    const-string v2, "packName"

    iget-object v3, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v2, "userid"

    iget-object v3, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "password"

    iget-object v3, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/RssPackDetails;->startActivity(Landroid/content/Intent;)V

    .line 150
    .end local v1           #i:Landroid/content/Intent;
    :cond_55
    return-void
.end method

.method private readItemDetails(Ljava/lang/String;)Lcom/sprint/w/installer/RssPackBrowser$FeedItem;
    .registers 10
    .parameter "link"

    .prologue
    .line 153
    const/4 v4, 0x0

    .line 154
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 156
    .local v2, fi:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;
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

    .line 157
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/RssPackDetails;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 158
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 159
    .local v5, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    move-object v2, v0

    .line 160
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_38

    .line 161
    const/4 v4, 0x0

    .line 165
    if-eqz v4, :cond_37

    .line 167
    :try_start_34
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_4f

    .line 172
    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    :cond_37
    :goto_37
    return-object v2

    .line 162
    :catch_38
    move-exception v1

    .line 163
    .local v1, e:Ljava/lang/Exception;
    :try_start_39
    iget-object v6, p0, Lcom/sprint/w/installer/RssPackDetails;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Error reading feed item details"

    invoke-virtual {v6, v7, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_48

    .line 165
    if-eqz v4, :cond_37

    .line 167
    :try_start_42
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_37

    .line 168
    :catch_46
    move-exception v6

    goto :goto_37

    .line 165
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_48
    move-exception v6

    if-eqz v4, :cond_4e

    .line 167
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_51

    .line 169
    :cond_4e
    :goto_4e
    throw v6

    .line 168
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
    .line 113
    const/4 v2, 0x0

    .line 115
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    iget-object v5, v5, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->link:Ljava/lang/String;

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

    .line 116
    .local v1, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/sprint/w/installer/RssPackDetails;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 117
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v3, oos:Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 120
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_3c

    .line 121
    const/4 v2, 0x0

    .line 125
    if-eqz v2, :cond_3b

    .line 127
    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_53

    .line 132
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :cond_3b
    :goto_3b
    return-void

    .line 122
    :catch_3c
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    :try_start_3d
    iget-object v4, p0, Lcom/sprint/w/installer/RssPackDetails;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Error saving feed item details"

    invoke-virtual {v4, v5, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_4c

    .line 125
    if-eqz v2, :cond_3b

    .line 127
    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_3b

    .line 128
    :catch_4a
    move-exception v4

    goto :goto_3b

    .line 125
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_4c
    move-exception v4

    if-eqz v2, :cond_52

    .line 127
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_55

    .line 129
    :cond_52
    :goto_52
    throw v4

    .line 128
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


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mHandler:Landroid/os/Handler;

    .line 62
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackDetails;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/sprint/w/installer/RssPackDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 65
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_31

    .line 66
    const-string v0, "url"

    invoke-virtual {v9, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mLink:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sprint/w/installer/RssPackDetails;->readItemDetails(Ljava/lang/String;)Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    .line 67
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    if-nez v0, :cond_49

    .line 68
    invoke-virtual {p0}, Lcom/sprint/w/installer/RssPackDetails;->finish()V

    .line 98
    :goto_30
    return-void

    .line 73
    :cond_31
    invoke-virtual {p0}, Lcom/sprint/w/installer/RssPackDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "feedItem"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    .line 74
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mLink:Ljava/lang/String;

    .line 76
    :cond_49
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mIcon:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p0}, Lcom/sprint/w/installer/RssPackDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020014

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 78
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    iget-object v3, v3, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->iconUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/sprint/w/installer/RssPackDetails;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0, v3, v4}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 80
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 81
    .local v8, name:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->title:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 83
    .local v10, version:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->version:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    iget-object v0, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->description:Ljava/lang/String;

    if-eqz v0, :cond_dc

    .line 85
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 86
    .local v7, frame:Landroid/widget/FrameLayout;
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mWeb:Landroid/webkit/WebView;

    .line 87
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mWeb:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/sprint/w/installer/RssPackDetails;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 89
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mWeb:Landroid/webkit/WebView;

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<body link=\'#6699ff\' text=\'#ffffff\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sprint/w/installer/RssPackDetails;->mFeedItem:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    iget-object v3, v3, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</body>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, html:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mWeb:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v2           #html:Ljava/lang/String;
    .end local v7           #frame:Landroid/widget/FrameLayout;
    :cond_dc
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    .line 94
    .local v6, b:Landroid/widget/Button;
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mProgress:Landroid/widget/ProgressBar;

    .line 96
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssPackDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    goto/16 :goto_30
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 342
    const/16 v0, 0x66

    if-ne v0, p1, :cond_37

    .line 343
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0600e1

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/RssPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600e2

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/RssPackDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060003

    new-instance v2, Lcom/sprint/w/installer/RssPackDetails$6;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/RssPackDetails$6;-><init>(Lcom/sprint/w/installer/RssPackDetails;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 349
    :goto_36
    return-object v0

    :cond_37
    invoke-static {p0, p1}, Lcom/sprint/w/installer/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_36
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 177
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mWeb:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    .line 178
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 180
    :cond_c
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mIsForeground:Z

    .line 333
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mLink:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 334
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackDetails;->mLink:Ljava/lang/String;

    iget-object v1, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

    invoke-static {v0, v1}, Lcom/sprint/w/installer/DownloadService;->removeStatusListener(Ljava/lang/String;Lcom/sprint/w/installer/DownloadService$StatusListener;)V

    .line 336
    :cond_11
    return-void
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 299
    iput-boolean v4, p0, Lcom/sprint/w/installer/RssPackDetails;->mIsForeground:Z

    .line 300
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mLink:Ljava/lang/String;

    if-eqz v2, :cond_56

    .line 301
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mLink:Ljava/lang/String;

    iget-object v3, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadListener:Lcom/sprint/w/installer/DownloadService$StatusListener;

    invoke-static {p0, v2, v3}, Lcom/sprint/w/installer/DownloadService;->addStatusListener(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DownloadService$StatusListener;)I

    move-result v1

    .line 302
    .local v1, sc:I
    if-ne v1, v4, :cond_57

    .line 305
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mLink:Ljava/lang/String;

    invoke-static {v2}, Lcom/sprint/w/installer/DownloadService;->getDownloadProgress(Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, progress:I
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 310
    invoke-direct {p0, v0}, Lcom/sprint/w/installer/RssPackDetails;->adjustDownloadPercentageColor(I)V

    .line 311
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sprint/w/installer/RssPackDetails;->mCancelDownload:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    const v3, 0x7f0600aa

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 327
    .end local v0           #progress:I
    .end local v1           #sc:I
    :cond_56
    :goto_56
    return-void

    .line 313
    .restart local v1       #sc:I
    :cond_57
    const/4 v2, 0x2

    if-ne v1, v2, :cond_79

    .line 314
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 315
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    const v3, 0x7f0600a9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 316
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sprint/w/installer/RssPackDetails;->mCompleteInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 318
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_56

    .line 320
    :cond_79
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 321
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mDownloadPercentage:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 324
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sprint/w/installer/RssPackDetails;->mInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_56
.end method
