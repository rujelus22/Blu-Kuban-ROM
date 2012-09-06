.class public Lcom/google/commerce/wireless/topiary/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/accounts/Account;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/List;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/Q;->g:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/Q;
    .registers 3
    .parameter

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/Q;->f:Landroid/content/Context;

    .line 98
    return-object p0
.end method

.method public a(Lcom/google/commerce/wireless/topiary/L;)Lcom/google/commerce/wireless/topiary/Q;
    .registers 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/Q;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/commerce/wireless/topiary/Q;
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/Q;->a:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public a(Z)Lcom/google/commerce/wireless/topiary/Q;
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/google/commerce/wireless/topiary/Q;->d:Z

    .line 63
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/Q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/commerce/wireless/topiary/Q;
    .registers 4
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/Q;->f:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An Android context must be provided with setContext()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_c
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/Q;->e:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/Q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/Q;->c:Landroid/accounts/Account;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/commerce/wireless/topiary/Q;->d:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/Q;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/Q;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/Q;->f:Landroid/content/Context;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/Q;->g:Ljava/util/List;

    return-object v0
.end method
