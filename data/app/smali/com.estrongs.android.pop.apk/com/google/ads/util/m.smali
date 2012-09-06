.class public Lcom/google/ads/util/m;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private final a:Lcom/google/ads/ah;


# direct methods
.method public constructor <init>(Lcom/google/ads/ah;)V
    .registers 2

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/google/ads/util/m;->a:Lcom/google/ads/ah;

    return-void
.end method

.method private static a(Landroid/app/AlertDialog$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .registers 9

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/google/ads/util/s;

    invoke-direct {v3, p4, v2}, Lcom/google/ads/util/s;-><init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/google/ads/util/r;

    invoke-direct {v2, p4}, Lcom/google/ads/util/r;-><init>(Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/ads/util/q;

    invoke-direct {v1, p4}, Lcom/google/ads/util/q;-><init>(Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static a(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .registers 6

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/ads/util/p;

    invoke-direct {v2, p2}, Lcom/google/ads/util/p;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/google/ads/util/o;

    invoke-direct {v2, p2}, Lcom/google/ads/util/o;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/ads/util/n;

    invoke-direct {v1, p2}, Lcom/google/ads/util/n;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
    .registers 9

    instance-of v0, p0, Lcom/google/ads/internal/e;

    if-eqz v0, :cond_1f

    check-cast p0, Lcom/google/ads/internal/e;

    invoke-virtual {p0}, Lcom/google/ads/internal/e;->d()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p6, :cond_1b

    invoke-static {v1, v0, p2, p3, p5}, Lcom/google/ads/util/m;->a(Landroid/app/AlertDialog$Builder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    invoke-static {v1, p2, p4}, Lcom/google/ads/util/m;->a(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V

    goto :goto_19

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3

    instance-of v0, p1, Lcom/google/ads/internal/e;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/google/ads/internal/e;

    invoke-virtual {p1}, Lcom/google/ads/internal/e;->a()V

    :cond_9
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/ads/util/l;->a:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5e

    :goto_48
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0

    :pswitch_4d
    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    goto :goto_48

    :pswitch_51
    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_48

    :pswitch_55
    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    goto :goto_48

    :pswitch_59
    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_48

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_51
        :pswitch_55
        :pswitch_55
        :pswitch_59
    .end packed-switch
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 16

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/ads/util/m;->a:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ae;

    iget-object v0, v0, Lcom/google/ads/ae;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/af;

    iget-object v1, v0, Lcom/google/ads/af;->i:Lcom/google/ads/util/aa;

    invoke-virtual {v1}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, p7

    cmp-long v1, v4, v2

    if-gtz v1, :cond_29

    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_28
    return-void

    :cond_29
    cmp-long v1, p3, v2

    if-nez v1, :cond_47

    cmp-long v1, p5, v4

    if-gtz v1, :cond_45

    iget-object v0, v0, Lcom/google/ads/af;->j:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_45

    :goto_41
    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_28

    :cond_45
    move-wide p5, v2

    goto :goto_41

    :cond_47
    cmp-long v1, p5, v2

    if-nez v1, :cond_6d

    iget-object v1, v0, Lcom/google/ads/af;->k:Lcom/google/ads/util/aa;

    invoke-virtual {v1}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    add-long/2addr v1, p3

    iget-object v0, v0, Lcom/google/ads/af;->j:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p5

    goto :goto_41

    :cond_6d
    iget-object v0, v0, Lcom/google/ads/af;->j:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_83

    add-long/2addr p3, p5

    :cond_83
    move-wide p5, p3

    goto :goto_41
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 12

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/ads/util/m;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 12

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/ads/util/m;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 12

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/ads/util/m;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 13

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/google/ads/util/m;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    move-result v0

    return v0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 11

    iget-object v0, p0, Lcom/google/ads/util/m;->a:Lcom/google/ads/ah;

    iget-object v0, v0, Lcom/google/ads/ah;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ae;

    iget-object v0, v0, Lcom/google/ads/ae;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/af;

    iget-object v1, v0, Lcom/google/ads/af;->h:Lcom/google/ads/util/aa;

    invoke-virtual {v1}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p3

    iget-object v0, v0, Lcom/google/ads/af;->g:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p1

    cmp-long v0, v1, v3

    if-gez v0, :cond_36

    const-wide/16 v0, 0x0

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_35
    return-void

    :cond_36
    invoke-interface {p5, v3, v4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_35
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
