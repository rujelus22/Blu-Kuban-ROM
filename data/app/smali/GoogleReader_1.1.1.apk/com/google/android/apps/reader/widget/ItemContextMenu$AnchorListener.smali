.class Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;
.super Ljava/lang/Object;
.source "ItemContextMenu.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnchorListener"
.end annotation


# static fields
.field private static final HREF:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 4
    .parameter "webView"

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;->mWebView:Landroid/webkit/WebView;

    .line 419
    move-object v0, p0

    .line 420
    .local v0, callback:Landroid/os/Handler$Callback;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;->mHandler:Landroid/os/Handler;

    .line 421
    return-void
.end method

.method private copy(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 476
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 477
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/reader/util/SystemService;->getClipboardManager(Landroid/content/Context;)Landroid/text/ClipboardManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 478
    return-void
.end method

.method private open(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 461
    invoke-static {v0, p1}, Lcom/google/android/apps/reader/widget/ItemViewUri;->open(Landroid/content/Context;Ljava/lang/String;)Z

    .line 462
    return-void
.end method

.method private share(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 466
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 471
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 472
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 435
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_3e

    move v2, v4

    .line 455
    :goto_7
    return v2

    .line 437
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 438
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    .local v0, title:Ljava/lang/String;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2a

    :cond_28
    move v2, v4

    .line 440
    goto :goto_7

    .line 442
    :cond_2a
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_44

    .line 453
    :goto_2f
    const/4 v2, 0x1

    goto :goto_7

    .line 444
    :pswitch_31
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;->open(Ljava/lang/String;)V

    goto :goto_2f

    .line 447
    :pswitch_35
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;->share(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 450
    :pswitch_39
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;->copy(Ljava/lang/String;)V

    goto :goto_2f

    .line 435
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch

    .line 442
    :pswitch_data_44
    .packed-switch 0x7f0b007c
        :pswitch_31
        :pswitch_35
        :pswitch_39
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 427
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemContextMenu$AnchorListener;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 428
    return v5
.end method
