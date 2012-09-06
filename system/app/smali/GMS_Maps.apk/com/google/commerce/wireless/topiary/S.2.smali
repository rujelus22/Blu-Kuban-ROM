.class public Lcom/google/commerce/wireless/topiary/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Lcom/google/commerce/wireless/topiary/U;

.field public f:Ljava/util/List;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/commerce/wireless/topiary/U;Ljava/util/List;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/S;->a:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/S;->b:Ljava/lang/String;

    .line 89
    iput-boolean p3, p0, Lcom/google/commerce/wireless/topiary/S;->c:Z

    .line 90
    iput-boolean p4, p0, Lcom/google/commerce/wireless/topiary/S;->d:Z

    .line 91
    iput-object p5, p0, Lcom/google/commerce/wireless/topiary/S;->e:Lcom/google/commerce/wireless/topiary/U;

    .line 92
    if-eqz p6, :cond_1c

    :goto_f
    iput-object p6, p0, Lcom/google/commerce/wireless/topiary/S;->f:Ljava/util/List;

    .line 94
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    :goto_19
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/S;->g:Ljava/lang/String;

    .line 101
    return-void

    .line 92
    :cond_1c
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_f

    .line 94
    :cond_22
    const-string v0, "weblogin:service=%s&continue=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_19
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/commerce/wireless/topiary/S;
    .registers 2
    .parameter

    .prologue
    .line 131
    const-string v0, "serviceAuthInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/commerce/wireless/topiary/S;->a(Landroid/os/Bundle;)Lcom/google/commerce/wireless/topiary/S;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/commerce/wireless/topiary/S;
    .registers 9
    .parameter

    .prologue
    .line 135
    if-nez p0, :cond_4

    .line 136
    const/4 v0, 0x0

    .line 150
    :goto_3
    return-object v0

    .line 138
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    const-string v0, "cookies"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 141
    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/commerce/wireless/topiary/T;->a(Landroid/os/Bundle;)Lcom/google/commerce/wireless/topiary/T;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 143
    :cond_29
    new-instance v0, Lcom/google/commerce/wireless/topiary/S;

    const-string v1, "service"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "continueUrl"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mustLoadContinueUrl"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "removeSessionCookies"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-class v5, Lcom/google/commerce/wireless/topiary/U;

    const-string v7, "preloadAuthPolicy"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/google/commerce/wireless/topiary/U;

    invoke-direct/range {v0 .. v6}, Lcom/google/commerce/wireless/topiary/S;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/commerce/wireless/topiary/U;Ljava/util/List;)V

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 116
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 117
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 122
    :goto_18
    return v0

    .line 120
    :cond_19
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 121
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 122
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_18
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/S;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/S;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/commerce/wireless/topiary/S;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/S;->a:Ljava/lang/String;

    return-object v0
.end method
