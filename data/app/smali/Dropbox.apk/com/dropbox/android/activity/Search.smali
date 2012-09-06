.class public Lcom/dropbox/android/activity/Search;
.super Lcom/dropbox/android/activity/BrowserWithHistoryStack;
.source "panda.py"


# instance fields
.field private m:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/Search;->m:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected final c(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/android/activity/Search;->m:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 56
    invoke-virtual {p0}, Lcom/dropbox/android/activity/Search;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const v1, 0x7f090012

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/Search;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_23
    return-object v0

    :cond_24
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method protected final f()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method protected final h()Lcom/dropbox/android/widget/aa;
    .registers 2

    .prologue
    .line 44
    sget-object v0, Lcom/dropbox/android/widget/aa;->f:Lcom/dropbox/android/widget/aa;

    return-object v0
.end method

.method protected final m()Z
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/dropbox/android/activity/Search;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 29
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 30
    :cond_1b
    invoke-virtual {p0}, Lcom/dropbox/android/activity/Search;->finish()V

    .line 40
    :goto_1e
    return-void

    .line 34
    :cond_1f
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/dropbox/android/f;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/dropbox/android/activity/Search;->m:Landroid/net/Uri;

    .line 37
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/Search;->a(Landroid/net/Uri;)V

    .line 39
    iget-object v0, p0, Lcom/dropbox/android/activity/Search;->o:Lcom/dropbox/android/activity/delegate/x;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/delegate/x;->a(I)V

    goto :goto_1e
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/android/activity/Search;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected final r()I
    .registers 2

    .prologue
    .line 70
    const v0, 0x7f090037

    return v0
.end method
