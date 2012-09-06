.class public LFj;
.super Ljava/lang/Object;
.source "IntentHelper.java"


# instance fields
.field private final a:Landroid/content/Intent;

.field private final a:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, LFj;->a:Landroid/content/Intent;

    .line 33
    iput-boolean p2, p0, LFj;->a:Z

    .line 34
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, LFj;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_2d

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_c
    if-nez v0, :cond_2c

    .line 81
    const-string v1, "IntentHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from the intent."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2c
    return-object v0

    .line 79
    :cond_2d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 52
    const-string v0, "docListTitle"

    const-string v1, "title"

    invoke-direct {p0, v0, v1}, LFj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 126
    const-string v0, "accountName"

    const-string v1, "account name"

    invoke-direct {p0, v0, v1}, LFj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-nez v0, :cond_1e

    invoke-static {}, LZG;->a()LdX;

    move-result-object v1

    iget-boolean v1, v1, LdX;->a:Z

    if-eqz v1, :cond_1e

    .line 130
    invoke-static {p1}, LXl;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 131
    array-length v2, v1

    if-lez v2, :cond_1e

    .line 132
    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 136
    :cond_1e
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 95
    iget-boolean v0, p0, LFj;->a:Z

    if-eqz v0, :cond_b

    .line 97
    iget-object v0, p0, LFj;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_a
    return-object v0

    .line 100
    :cond_b
    iget-object v0, p0, LFj;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_40

    invoke-static {v0}, LBr;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 104
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v0, p1}, LBr;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 112
    :goto_36
    if-eqz p2, :cond_3b

    .line 113
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 115
    :cond_3b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 109
    :cond_40
    const-string v0, "https://docs.google.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_36
.end method

.method public a()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 40
    iget-object v1, p0, LFj;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_f

    .line 42
    const-string v2, "userCanEdit"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    :cond_f
    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, LFj;->a:Landroid/content/Intent;

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    const-string v0, "resourceId"

    const-string v1, "document ID"

    invoke-direct {p0, v0, v1}, LFj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
