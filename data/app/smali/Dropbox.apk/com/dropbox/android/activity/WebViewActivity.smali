.class public Lcom/dropbox/android/activity/WebViewActivity;
.super Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/Button;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private g:Z

.field private final h:Lcom/dropbox/android/util/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/dropbox/android/activity/WebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/WebViewActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->c:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->d:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->e:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->g:Z

    .line 49
    new-instance v0, Lcom/dropbox/android/util/f;

    invoke-direct {v0, p0}, Lcom/dropbox/android/util/f;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->h:Lcom/dropbox/android/util/f;

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/WebViewActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dropbox/android/activity/WebViewActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/dropbox/android/activity/WebViewActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/WebViewActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 281
    if-eqz p1, :cond_a

    const/4 v0, -0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/WebViewActivity;->setResult(I)V

    .line 282
    invoke-virtual {p0}, Lcom/dropbox/android/activity/WebViewActivity;->finish()V

    .line 283
    return-void

    .line 281
    :cond_a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic b(Lcom/dropbox/android/activity/WebViewActivity;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method private f()Landroid/webkit/WebViewClient;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-static {}, Lcom/dropbox/android/util/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/dropbox/android/activity/cl;

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/activity/cl;-><init>(Lcom/dropbox/android/activity/WebViewActivity;Lcom/dropbox/android/activity/ch;)V

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/dropbox/android/activity/ck;

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/activity/ck;-><init>(Lcom/dropbox/android/activity/WebViewActivity;Lcom/dropbox/android/activity/ch;)V

    goto :goto_c
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public e_()Z
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 147
    invoke-virtual {p0}, Lcom/dropbox/android/activity/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 149
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/dropbox/android/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 152
    const-string v1, "BUTTONS"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 153
    iput-boolean v5, p0, Lcom/dropbox/android/activity/WebViewActivity;->g:Z

    .line 156
    :cond_1b
    if-eqz p1, :cond_25

    .line 157
    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/android/activity/WebViewActivity;->d:Ljava/lang/String;

    .line 160
    :cond_25
    iget-boolean v1, p0, Lcom/dropbox/android/activity/WebViewActivity;->g:Z

    if-eqz v1, :cond_bf

    .line 161
    const v1, 0x7f030039

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/WebViewActivity;->setContentView(I)V

    .line 166
    :goto_2f
    invoke-virtual {p0, v5}, Lcom/dropbox/android/activity/WebViewActivity;->setProgressBarVisibility(Z)V

    .line 171
    iget-object v1, p0, Lcom/dropbox/android/activity/WebViewActivity;->d:Ljava/lang/String;

    if-nez v1, :cond_e3

    .line 172
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_c7

    .line 174
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    iget-object v4, p0, Lcom/dropbox/android/activity/WebViewActivity;->h:Lcom/dropbox/android/util/f;

    invoke-virtual {v4, v2}, Lcom/dropbox/android/util/f;->a(Landroid/net/Uri;)V

    :goto_45
    move-object v2, v1

    move-object v1, v0

    .line 191
    :goto_47
    const-string v0, "TITLE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 192
    const-string v0, "TITLE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->e:Ljava/lang/String;

    .line 197
    :goto_57
    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->b:Landroid/webkit/WebView;

    .line 198
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->b:Landroid/webkit/WebView;

    new-instance v3, Lcom/dropbox/android/activity/ch;

    invoke-direct {v3, p0, p0}, Lcom/dropbox/android/activity/ch;-><init>(Lcom/dropbox/android/activity/WebViewActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 210
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/dropbox/android/activity/WebViewActivity;->f()Landroid/webkit/WebViewClient;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 212
    if-eqz v1, :cond_ef

    .line 213
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->b:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_89
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    iget-boolean v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->g:Z

    if-eqz v0, :cond_be

    .line 222
    const v0, 0x7f0d00c8

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/dropbox/android/activity/ci;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/ci;-><init>(Lcom/dropbox/android/activity/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->c:Landroid/widget/Button;

    .line 229
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/dropbox/android/activity/cj;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/cj;-><init>(Lcom/dropbox/android/activity/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    :cond_be
    return-void

    .line 163
    :cond_bf
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/WebViewActivity;->setContentView(I)V

    goto/16 :goto_2f

    .line 181
    :cond_c7
    const-string v1, "INFO"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 182
    const-string v1, "INFO"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_45

    .line 184
    :cond_da
    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_45

    .line 188
    :cond_e3
    iget-object v1, p0, Lcom/dropbox/android/activity/WebViewActivity;->d:Ljava/lang/String;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_47

    .line 194
    :cond_e9
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->e:Ljava/lang/String;

    goto/16 :goto_57

    .line 214
    :cond_ef
    if-eqz v2, :cond_f7

    .line 215
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_89

    .line 217
    :cond_f7
    invoke-virtual {p0}, Lcom/dropbox/android/activity/WebViewActivity;->finish()V

    goto :goto_89
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/dropbox/android/activity/WebViewActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 261
    const v0, 0x7f09014a

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 263
    const/4 v0, 0x1

    .line 265
    :goto_19
    return v0

    :cond_1a
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_19
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 241
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onDestroy()V

    .line 242
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->h:Lcom/dropbox/android/util/f;

    invoke-virtual {v0}, Lcom/dropbox/android/util/f;->a()V

    .line 243
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 248
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 249
    iget-object v0, p0, Lcom/dropbox/android/activity/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 250
    const/4 v0, 0x1

    .line 253
    :goto_1d
    return v0

    :cond_1e
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 272
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 277
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 274
    :pswitch_9
    invoke-virtual {p0}, Lcom/dropbox/android/activity/WebViewActivity;->finish()V

    .line 275
    const/4 v0, 0x1

    goto :goto_8

    .line 272
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "url"

    iget-object v1, p0, Lcom/dropbox/android/activity/WebViewActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method
