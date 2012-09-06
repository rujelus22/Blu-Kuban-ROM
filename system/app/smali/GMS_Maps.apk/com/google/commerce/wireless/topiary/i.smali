.class Lcom/google/commerce/wireless/topiary/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/commerce/wireless/topiary/L;


# instance fields
.field private final a:Lcom/google/commerce/wireless/topiary/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/commerce/wireless/topiary/b;->a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/i;->a:Lcom/google/commerce/wireless/topiary/a;

    .line 28
    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/i;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/google/commerce/wireless/topiary/i;->c:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private c(Lcom/google/commerce/wireless/topiary/J;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    if-eqz v0, :cond_21

    .line 71
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 72
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/i;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public a(Lcom/google/commerce/wireless/topiary/J;)V
    .registers 6
    .parameter

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->a()Landroid/accounts/Account;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1c

    .line 37
    :try_start_6
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/i;->a:Lcom/google/commerce/wireless/topiary/a;

    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/i;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/google/commerce/wireless/topiary/a;->a(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    if-nez v0, :cond_1d

    .line 39
    const-string v0, "AuthorizationRpcProcessor"

    const-string v1, "Couldn\'t get authentication token"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/google/commerce/wireless/topiary/M;->f:Lcom/google/commerce/wireless/topiary/M;

    invoke-virtual {p1, v0}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/M;)V

    .line 51
    :cond_1c
    :goto_1c
    return-void

    .line 43
    :cond_1d
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/commerce/wireless/topiary/J;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_35} :catch_36

    goto :goto_1c

    .line 44
    :catch_36
    move-exception v0

    .line 48
    sget-object v0, Lcom/google/commerce/wireless/topiary/M;->f:Lcom/google/commerce/wireless/topiary/M;

    invoke-virtual {p1, v0}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/M;)V

    goto :goto_1c
.end method

.method public b(Lcom/google/commerce/wireless/topiary/J;)V
    .registers 5
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->d()Lcom/google/commerce/wireless/topiary/M;

    move-result-object v0

    sget-object v1, Lcom/google/commerce/wireless/topiary/M;->f:Lcom/google/commerce/wireless/topiary/M;

    if-ne v0, v1, :cond_20

    .line 56
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->a()Landroid/accounts/Account;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_20

    .line 58
    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/i;->c(Lcom/google/commerce/wireless/topiary/J;)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_20

    .line 60
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/i;->a:Lcom/google/commerce/wireless/topiary/a;

    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->a()Landroid/accounts/Account;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/commerce/wireless/topiary/a;->b(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, p0}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/L;)V

    .line 65
    :cond_20
    return-void
.end method
