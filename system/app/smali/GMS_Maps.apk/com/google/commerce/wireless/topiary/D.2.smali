.class public Lcom/google/commerce/wireless/topiary/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/commerce/wireless/topiary/D;

.field private static b:Lcom/google/commerce/wireless/topiary/a;


# instance fields
.field private c:Ljava/util/Map;

.field private d:Ljava/util/Map;

.field private e:Ljava/util/Map;

.field private f:Landroid/content/Context;

.field private g:Lcom/google/commerce/wireless/topiary/B;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->c:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->d:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->e:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/D;->f:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/google/commerce/wireless/topiary/B;

    invoke-direct {v0, p1}, Lcom/google/commerce/wireless/topiary/B;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->g:Lcom/google/commerce/wireless/topiary/B;

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/D;
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/google/commerce/wireless/topiary/D;->a:Lcom/google/commerce/wireless/topiary/D;

    if-nez v1, :cond_18

    .line 42
    invoke-static {v0}, Lcom/google/commerce/wireless/topiary/m;->a(Landroid/content/Context;)V

    .line 43
    new-instance v1, Lcom/google/commerce/wireless/topiary/D;

    invoke-direct {v1, v0}, Lcom/google/commerce/wireless/topiary/D;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/commerce/wireless/topiary/D;->a:Lcom/google/commerce/wireless/topiary/D;

    .line 44
    invoke-static {v0}, Lcom/google/commerce/wireless/topiary/d;->a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/d;

    move-result-object v0

    sput-object v0, Lcom/google/commerce/wireless/topiary/D;->b:Lcom/google/commerce/wireless/topiary/a;

    .line 46
    :cond_18
    sget-object v0, Lcom/google/commerce/wireless/topiary/D;->a:Lcom/google/commerce/wireless/topiary/D;

    return-object v0
.end method

.method private b(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 133
    if-eqz p1, :cond_5

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "<no account>"

    goto :goto_4
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/commerce/wireless/topiary/HybridWebView;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 91
    const-string v0, "HybridWebViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating WebView for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/google/commerce/wireless/topiary/D;->b(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-direct {v0, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;-><init>(Landroid/content/Context;)V

    .line 93
    if-eqz p2, :cond_26

    .line 94
    invoke-virtual {v0, p0, p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Lcom/google/commerce/wireless/topiary/D;Landroid/accounts/Account;)V

    .line 96
    :cond_26
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/commerce/wireless/topiary/S;
    .registers 5
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/S;

    .line 193
    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public declared-synchronized a(Landroid/accounts/Account;)Lcom/google/commerce/wireless/topiary/f;
    .registers 5
    .parameter

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->c:Ljava/util/Map;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/f;

    .line 82
    if-nez v0, :cond_19

    .line 83
    new-instance v0, Lcom/google/commerce/wireless/topiary/f;

    invoke-direct {v0, p1, p0}, Lcom/google/commerce/wireless/topiary/f;-><init>(Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/D;)V

    .line 84
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/D;->c:Ljava/util/Map;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 86
    :cond_19
    monitor-exit p0

    return-object v0

    .line 81
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/HybridWebView;

    .line 154
    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->destroy()V

    goto :goto_a

    .line 156
    :cond_1a
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 157
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/E;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p3}, Lcom/google/commerce/wireless/topiary/D;->b(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v0, "HybridWebViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloading url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/HybridWebView;

    .line 120
    if-nez v0, :cond_4b

    .line 121
    const-string v0, "HybridWebViewManager"

    const-string v2, "Creating preloading webview "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->f:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/google/commerce/wireless/topiary/D;->a(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/commerce/wireless/topiary/HybridWebView;

    move-result-object v0

    .line 123
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->setPreloading(Z)V

    .line 124
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/D;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    if-eqz p4, :cond_4b

    .line 126
    invoke-interface {p4, v0}, Lcom/google/commerce/wireless/topiary/E;->a(Lcom/google/commerce/wireless/topiary/HybridWebView;)V

    .line 129
    :cond_4b
    invoke-virtual {v0, p1, p2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;)V

    .line 130
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/D;->a()V

    .line 164
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/f;

    .line 165
    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/f;->b()V

    goto :goto_d

    .line 167
    :cond_1d
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/D;->b()V

    .line 199
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->g:Lcom/google/commerce/wireless/topiary/B;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/B;->a()V

    .line 200
    return-void
.end method

.method d()Lcom/google/commerce/wireless/topiary/a;
    .registers 2

    .prologue
    .line 208
    sget-object v0, Lcom/google/commerce/wireless/topiary/D;->b:Lcom/google/commerce/wireless/topiary/a;

    return-object v0
.end method

.method e()Lcom/google/commerce/wireless/topiary/B;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/D;->g:Lcom/google/commerce/wireless/topiary/B;

    return-object v0
.end method
