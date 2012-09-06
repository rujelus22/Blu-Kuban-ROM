.class public Lcom/google/commerce/wireless/topiary/HybridWebViewControl;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/commerce/wireless/topiary/v;


# static fields
.field private static h:Lcom/google/commerce/wireless/topiary/F;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/os/Handler;

.field private final e:Landroid/accounts/Account;

.field private f:Lcom/google/commerce/wireless/topiary/D;

.field private g:Lcom/google/commerce/wireless/topiary/z;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 53
    new-instance v0, Lcom/google/commerce/wireless/topiary/F;

    const-string v1, "Could not load due to internal error. Details: %1$s"

    const-string v2, "Could not log in. Please check you have a working account set up."

    const-string v3, "Could not load. Please check your network connection and try again"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/commerce/wireless/topiary/F;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->h:Lcom/google/commerce/wireless/topiary/F;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/D;Lcom/google/commerce/wireless/topiary/z;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 195
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->d:Landroid/os/Handler;

    .line 196
    invoke-virtual {p0, p4}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->setClient(Lcom/google/commerce/wireless/topiary/z;)V

    .line 197
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x101007a

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->c:Landroid/widget/ProgressBar;

    .line 203
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 206
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 207
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 209
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->addView(Landroid/view/View;)V

    .line 212
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->b:Landroid/view/ViewGroup;

    .line 213
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->b:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->addView(Landroid/view/View;)V

    .line 219
    const-string v0, "Before everything"

    invoke-static {v6, v0}, Lcom/google/commerce/wireless/topiary/m;->a(ZLjava/lang/String;)V

    .line 220
    iput-object p3, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->f:Lcom/google/commerce/wireless/topiary/D;

    .line 221
    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->e:Landroid/accounts/Account;

    .line 222
    new-instance v0, Lcom/google/commerce/wireless/topiary/A;

    invoke-direct {v0}, Lcom/google/commerce/wireless/topiary/A;-><init>()V

    .line 223
    invoke-direct {p0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->e()Lcom/google/commerce/wireless/topiary/HybridWebView;

    .line 224
    return-void
.end method

.method private a(Z)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 430
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move v0, v2

    .line 453
    :goto_f
    return v0

    .line 433
    :cond_10
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/HybridWebView;

    .line 441
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/commerce/wireless/topiary/HybridWebView;->c(I)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 442
    if-nez p1, :cond_32

    .line 443
    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->goBack()V

    :cond_32
    move v0, v1

    .line 445
    goto :goto_f

    .line 447
    :cond_34
    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_43

    .line 448
    if-nez p1, :cond_41

    .line 449
    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a(Landroid/webkit/WebView;)V

    :cond_41
    move v0, v1

    .line 451
    goto :goto_f

    :cond_43
    move v0, v2

    .line 453
    goto :goto_f
.end method

.method private e()Lcom/google/commerce/wireless/topiary/HybridWebView;
    .registers 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->f:Lcom/google/commerce/wireless/topiary/D;

    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->e:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Lcom/google/commerce/wireless/topiary/D;->a(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/commerce/wireless/topiary/HybridWebView;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    invoke-virtual {v0, p0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->setHybridWebViewUiClient(Lcom/google/commerce/wireless/topiary/v;)V

    .line 275
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    invoke-interface {v1, v0}, Lcom/google/commerce/wireless/topiary/z;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;)V

    .line 277
    return-object v0
.end method

.method public static setResources(Lcom/google/commerce/wireless/topiary/F;)V
    .registers 1
    .parameter

    .prologue
    .line 50
    sput-object p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->h:Lcom/google/commerce/wireless/topiary/F;

    .line 51
    return-void
.end method


# virtual methods
.method public a(Lcom/google/commerce/wireless/topiary/HybridWebView;)Landroid/webkit/WebView;
    .registers 3
    .parameter

    .prologue
    .line 318
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->setVisibility(I)V

    .line 319
    invoke-direct {p0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->e()Lcom/google/commerce/wireless/topiary/HybridWebView;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->removeAllViews()V

    .line 232
    iput-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->d:Landroid/os/Handler;

    .line 233
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/HybridWebView;

    .line 234
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_c

    .line 236
    :cond_1c
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 237
    iput-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    .line 238
    iput-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->b:Landroid/view/ViewGroup;

    .line 239
    iput-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->c:Landroid/widget/ProgressBar;

    .line 240
    iput-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->f:Lcom/google/commerce/wireless/topiary/D;

    .line 241
    iput-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    .line 242
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->destroyDrawingCache()V

    .line 243
    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 325
    if-gez v1, :cond_a

    .line 336
    :goto_9
    return-void

    .line 328
    :cond_a
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 331
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 332
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/HybridWebView;

    .line 333
    invoke-virtual {v0, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->setVisibility(I)V

    .line 335
    :cond_2a
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    invoke-interface {v0, p0, v1}, Lcom/google/commerce/wireless/topiary/z;->a(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;I)V

    goto :goto_9
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebView;ILjava/lang/String;I)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    iget-object v6, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->d:Landroid/os/Handler;

    new-instance v0, Lcom/google/commerce/wireless/topiary/y;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/commerce/wireless/topiary/y;-><init>(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;ILjava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebView;ZILjava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v6, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->d:Landroid/os/Handler;

    new-instance v0, Lcom/google/commerce/wireless/topiary/x;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/commerce/wireless/topiary/x;-><init>(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;ZILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 404
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;Lcom/google/commerce/wireless/topiary/HybridWebView;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    if-nez p3, :cond_f

    .line 252
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 253
    invoke-direct {p0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->e()Lcom/google/commerce/wireless/topiary/HybridWebView;

    move-result-object v0

    move-object p3, v0

    .line 258
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/HybridWebView;

    .line 259
    if-eq v0, p3, :cond_15

    .line 260
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_15

    .line 255
    :cond_28
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/HybridWebView;

    move-object p3, v0

    goto :goto_f

    .line 263
    :cond_33
    invoke-virtual {p3, p1, p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;)V

    .line 264
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/commerce/wireless/topiary/z;->c(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected b(Lcom/google/commerce/wireless/topiary/HybridWebView;ILjava/lang/String;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 382
    sget-object v0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->h:Lcom/google/commerce/wireless/topiary/F;

    iget-object v0, v0, Lcom/google/commerce/wireless/topiary/F;->a:Ljava/lang/String;

    .line 383
    packed-switch p2, :pswitch_data_3a

    .line 394
    :goto_8
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v4

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 396
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    if-eqz v0, :cond_2a

    .line 397
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    invoke-interface {v0, p0, v4}, Lcom/google/commerce/wireless/topiary/z;->b(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Z)V

    .line 398
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    move-object v1, p0

    move v2, p2

    move v4, p4

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/commerce/wireless/topiary/z;->a(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;ILjava/lang/String;ILjava/lang/String;)V

    .line 400
    :cond_2a
    return-void

    .line 385
    :pswitch_2b
    sget-object v0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->h:Lcom/google/commerce/wireless/topiary/F;

    iget-object v0, v0, Lcom/google/commerce/wireless/topiary/F;->c:Ljava/lang/String;

    goto :goto_8

    .line 388
    :pswitch_30
    sget-object v0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->h:Lcom/google/commerce/wireless/topiary/F;

    iget-object v0, v0, Lcom/google/commerce/wireless/topiary/F;->b:Ljava/lang/String;

    goto :goto_8

    .line 391
    :pswitch_35
    sget-object v0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->h:Lcom/google/commerce/wireless/topiary/F;

    iget-object v0, v0, Lcom/google/commerce/wireless/topiary/F;->a:Ljava/lang/String;

    goto :goto_8

    .line 383
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_30
        :pswitch_35
    .end packed-switch
.end method

.method public b(Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/commerce/wireless/topiary/z;->a(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method protected b(Lcom/google/commerce/wireless/topiary/HybridWebView;ZILjava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    if-eqz p2, :cond_1b

    const/4 v0, 0x0

    .line 360
    :goto_3
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->d()Z

    move-result v1

    .line 361
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    if-eqz v2, :cond_1a

    .line 362
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    invoke-interface {v2, p0, v0}, Lcom/google/commerce/wireless/topiary/z;->a(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Z)V

    .line 363
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    invoke-interface {v0, p0, v1}, Lcom/google/commerce/wireless/topiary/z;->b(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Z)V

    .line 364
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/commerce/wireless/topiary/z;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;ZILjava/lang/String;)V

    .line 366
    :cond_1a
    return-void

    .line 359
    :cond_1b
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public c(Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/commerce/wireless/topiary/z;->b(Lcom/google/commerce/wireless/topiary/HybridWebViewControl;Lcom/google/commerce/wireless/topiary/HybridWebView;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a(Z)Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a(Z)Z

    .line 420
    return-void
.end method

.method public setClient(Lcom/google/commerce/wireless/topiary/z;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->g:Lcom/google/commerce/wireless/topiary/z;

    .line 187
    return-void
.end method

.method public setWaitUiVisibility(Z)V
    .registers 4
    .parameter

    .prologue
    .line 369
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->c:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 370
    return-void

    .line 369
    :cond_9
    const/4 v0, 0x4

    goto :goto_5
.end method

.method public setWebViewVisibility(Z)V
    .registers 4
    .parameter

    .prologue
    .line 373
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->b:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 374
    return-void

    .line 373
    :cond_9
    const/4 v0, 0x4

    goto :goto_5
.end method
