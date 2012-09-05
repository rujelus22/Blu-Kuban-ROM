.class public Lcom/samsung/swift/browser/ViewUrlActivity;
.super Landroid/app/Activity;
.source "ViewUrlActivity.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://127.0.0.1:6789/www/"

.field private static final DEFAULT_URI:Ljava/lang/String; = ""

.field private static final MENU_CLEAR_CACHE:I = 0x3

.field private static final MENU_REFRESH:I = 0x1

.field private static final MENU_WEB_ROOT:I = 0x2

.field private static final MOVE_DELTA:F = 1.0f


# instance fields
.field private final TAGNAME:Ljava/lang/String;

.field private lastX:F

.field private lastY:F

.field private orientation:I

.field private uri:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    const-class v0, Lcom/samsung/swift/browser/ViewUrlActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->TAGNAME:Ljava/lang/String;

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->orientation:I

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->uri:Ljava/lang/String;

    .line 129
    iput v1, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->lastX:F

    .line 130
    iput v1, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->lastY:F

    return-void
.end method

.method public static makeIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/swift/browser/ViewUrlActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "ev"

    .prologue
    const/high16 v2, 0x3f80

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 264
    :goto_9
    :pswitch_9
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_d
    return v0

    .line 251
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->lastX:F

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->lastY:F

    goto :goto_9

    .line 255
    :pswitch_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->lastX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->lastY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3b

    .line 257
    const/4 v0, 0x1

    goto :goto_d

    .line 259
    :cond_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->lastX:F

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->lastY:F

    goto :goto_9

    .line 249
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_e
        :pswitch_9
        :pswitch_1b
    .end packed-switch
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->orientation:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public loadUri()V
    .registers 4

    .prologue
    .line 287
    iget v0, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->orientation:I

    invoke-virtual {p0, v0}, Lcom/samsung/swift/browser/ViewUrlActivity;->setRequestedOrientation(I)V

    .line 288
    iget-object v0, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://127.0.0.1:6789/www//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/swift/browser/ViewUrlActivity;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 176
    iget-object v5, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->TAGNAME:Ljava/lang/String;

    const-string v6, "created"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    sget v5, Lcom/samsung/swift/R$layout;->view_url:I

    invoke-virtual {p0, v5}, Lcom/samsung/swift/browser/ViewUrlActivity;->setContentView(I)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/swift/browser/ViewUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 180
    .local v2, i:Landroid/content/Intent;
    if-eqz v2, :cond_7a

    .line 182
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/samsung/swift/browser/ViewUrlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 184
    .local v1, display:Landroid/view/Display;
    const-string v5, "com.samsung.swift.orientation"

    iget v6, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->orientation:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, desiredOrientation:I
    if-ne v0, v8, :cond_39

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_45

    :cond_39
    if-nez v0, :cond_66

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_66

    .line 191
    :cond_45
    packed-switch v0, :pswitch_data_b2

    .line 207
    :goto_48
    invoke-virtual {p0}, Lcom/samsung/swift/browser/ViewUrlActivity;->finish()V

    .line 236
    .end local v0           #desiredOrientation:I
    .end local v1           #display:Landroid/view/Display;
    :goto_4b
    return-void

    .line 193
    .restart local v0       #desiredOrientation:I
    .restart local v1       #display:Landroid/view/Display;
    :pswitch_4c
    sget v5, Lcom/samsung/swift/R$string;->please_hold_the_handset_vertically:I

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 196
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3, v9, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 197
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_48

    .line 200
    .end local v3           #toast:Landroid/widget/Toast;
    :pswitch_59
    sget v5, Lcom/samsung/swift/R$string;->please_hold_the_handset_horizontally:I

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 203
    .restart local v3       #toast:Landroid/widget/Toast;
    invoke-virtual {v3, v9, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 204
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_48

    .line 210
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_66
    invoke-virtual {p0, v0}, Lcom/samsung/swift/browser/ViewUrlActivity;->setOrientation(I)V

    .line 211
    const-string v5, "com.samsung.swift.uri"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7a

    .line 212
    const-string v5, "com.samsung.swift.uri"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/swift/browser/ViewUrlActivity;->setUri(Ljava/lang/String;)V

    .line 216
    .end local v0           #desiredOrientation:I
    .end local v1           #display:Landroid/view/Display;
    :cond_7a
    sget v5, Lcom/samsung/swift/R$id;->webView:I

    invoke-virtual {p0, v5}, Lcom/samsung/swift/browser/ViewUrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->webView:Landroid/webkit/WebView;

    .line 217
    iget-object v5, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 218
    .local v4, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 219
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 220
    iget-object v5, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 221
    iget-object v5, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 223
    iget-object v5, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->webView:Landroid/webkit/WebView;

    new-instance v6, Lcom/samsung/swift/browser/SwiftWebViewClient;

    invoke-direct {v6, p0}, Lcom/samsung/swift/browser/SwiftWebViewClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 224
    iget-object v5, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->webView:Landroid/webkit/WebView;

    new-instance v6, Lcom/samsung/swift/browser/SwiftWebChromeClient;

    invoke-direct {v6, p0}, Lcom/samsung/swift/browser/SwiftWebChromeClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/swift/browser/ViewUrlActivity;->loadUri()V

    goto :goto_4b

    .line 191
    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_59
        :pswitch_4c
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    sget v0, Lcom/samsung/swift/R$string;->refresh:I

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 280
    const/4 v0, 0x2

    sget v1, Lcom/samsung/swift/R$string;->web_root:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 281
    const/4 v0, 0x3

    sget v1, Lcom/samsung/swift/R$string;->clear_cache:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 282
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 328
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 332
    invoke-virtual {p0}, Lcom/samsung/swift/browser/ViewUrlActivity;->finish()V

    .line 334
    const/4 v0, 0x1

    .line 336
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 300
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 311
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 302
    :pswitch_a
    iget-object v1, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    goto :goto_9

    .line 305
    :pswitch_10
    invoke-virtual {p0}, Lcom/samsung/swift/browser/ViewUrlActivity;->loadUri()V

    goto :goto_9

    .line 308
    :pswitch_14
    iget-object v1, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    goto :goto_9

    .line 300
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_a
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method

.method public setOrientation(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 152
    iput p1, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->orientation:I

    .line 153
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/swift/browser/ViewUrlActivity;->uri:Ljava/lang/String;

    .line 145
    return-void
.end method
