.class Lcom/google/android/apps/common/offerslib/g;
.super Lcom/google/commerce/wireless/topiary/A;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-direct {p0}, Lcom/google/commerce/wireless/topiary/A;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/commerce/wireless/topiary/HybridWebView;)V
    .registers 6
    .parameter

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->f(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Lcom/google/android/apps/common/offerslib/i;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {p1, v0, v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 996
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "database"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 998
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebView;ZILjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1008
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->g(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Z

    move-result v0

    xor-int/2addr v0, p2

    if-nez v0, :cond_44

    .line 1012
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    if-eqz p2, :cond_45

    move v0, v1

    :goto_f
    invoke-static {v2, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;I)I

    .line 1017
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->h(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)I

    move-result v0

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->i(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/commerce/wireless/topiary/S;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1019
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;I)I

    .line 1024
    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->h(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)I

    move-result v0

    if-eqz v0, :cond_44

    .line 1025
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/common/offerslib/h;

    invoke-direct {v1, p0}, Lcom/google/android/apps/common/offerslib/h;-><init>(Lcom/google/android/apps/common/offerslib/g;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1033
    :cond_44
    return-void

    .line 1012
    :cond_45
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;ILjava/lang/String;ILjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1039
    const-string v0, "OfferDetailsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0, p2, p5}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;ILjava/lang/String;)V

    .line 1042
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start loading in MobileWebView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1003
    return-void
.end method

.method public b(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished loading in MobileWebView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method public c(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1059
    invoke-virtual {p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Lcom/google/android/apps/common/offerslib/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/apps/common/offerslib/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1060
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    iget-object v0, v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/g;->a:Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/d;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Landroid/net/Uri;)V

    .line 1061
    const/4 v0, 0x1

    .line 1063
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method
