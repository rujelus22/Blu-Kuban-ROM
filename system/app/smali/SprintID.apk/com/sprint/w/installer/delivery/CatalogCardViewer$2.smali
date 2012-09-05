.class Lcom/sprint/w/installer/delivery/CatalogCardViewer$2;
.super Landroid/webkit/WebViewClient;
.source "CatalogCardViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/CatalogCardViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$2;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$2;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$2;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .parameter "view"
    .parameter "url"

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$2;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_10} :catch_12

    .line 138
    const/4 v1, 0x1

    .line 140
    :goto_11
    return v1

    .line 139
    :catch_12
    move-exception v0

    .line 140
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    goto :goto_11
.end method
