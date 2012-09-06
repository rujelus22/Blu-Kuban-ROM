.class public final Lcom/mobfox/video/sdk/bu;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    instance-of v0, p1, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    iput-object p1, p0, Lcom/mobfox/video/sdk/bu;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    :cond_b
    return-void
.end method


# virtual methods
.method public final onHideCustomView()V
    .registers 3

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxWebChromeClient onHideCustomView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/bu;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    if-nez v0, :cond_18

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/mobfox/video/sdk/bu;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a()V

    goto :goto_17
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "MobFoxWebChromeClient onShowCustomView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/bu;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    if-nez v0, :cond_18

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/mobfox/video/sdk/bu;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-virtual {v0, p1, p2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_17
.end method
