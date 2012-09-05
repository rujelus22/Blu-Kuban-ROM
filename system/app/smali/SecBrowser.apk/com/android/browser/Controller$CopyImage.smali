.class Lcom/android/browser/Controller$CopyImage;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyImage"
.end annotation


# instance fields
.field private mImageUrl:Ljava/lang/String;

.field private final mSavePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/browser/Controller;


# direct methods
.method public constructor <init>(Lcom/android/browser/Controller;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "url"

    .prologue
    .line 2641
    iput-object p1, p0, Lcom/android/browser/Controller$CopyImage;->this$0:Lcom/android/browser/Controller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2607
    const-string v0, "/data/data/com.android.browser/copyImage.bmp"

    iput-object v0, p0, Lcom/android/browser/Controller$CopyImage;->mSavePath:Ljava/lang/String;

    .line 2642
    iput-object p2, p0, Lcom/android/browser/Controller$CopyImage;->mImageUrl:Ljava/lang/String;

    .line 2643
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2611
    iget-object v6, p0, Lcom/android/browser/Controller$CopyImage;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v6}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 2612
    .local v3, webviewTop:Landroid/webkit/WebView;
    iget-object v6, p0, Lcom/android/browser/Controller$CopyImage;->mImageUrl:Ljava/lang/String;

    const-string v7, "/data/data/com.android.browser/copyImage.bmp"

    invoke-virtual {v3, v6, v7}, Landroid/webkit/WebView;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-ne v5, v6, :cond_57

    .line 2613
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/data/com.android.browser/copyImage.bmp"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2614
    .local v2, fileImage:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_27

    .line 2615
    const-string v5, "Controller"

    const-string v6, "CopyImage::onMenuItemClick : Saved /data/data/com.android.browser/copyImage.bmp file does not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    .end local v2           #fileImage:Ljava/io/File;
    :goto_26
    return v4

    .line 2619
    .restart local v2       #fileImage:Ljava/io/File;
    :cond_27
    invoke-virtual {v2, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2622
    iget-object v4, p0, Lcom/android/browser/Controller$CopyImage;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v4

    const-string v6, "clipboardEx"

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    .line 2623
    .local v1, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 2624
    .local v0, clipBmp:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    const-string v4, "/data/data/com.android.browser/copyImage.bmp"

    invoke-virtual {v0, v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    .line 2627
    iget-object v4, p0, Lcom/android/browser/Controller$CopyImage;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 2628
    const-string v4, "Controller"

    const-string v6, "CopyImage::onMenuItemClick : clipEx.setData returned false."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #clipBmp:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v1           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    .end local v2           #fileImage:Ljava/io/File;
    :cond_55
    :goto_55
    move v4, v5

    .line 2638
    goto :goto_26

    .line 2635
    :cond_57
    const-string v4, "Controller"

    const-string v6, "CopyImage::onMenuItemClick : Failed to save the image"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method
