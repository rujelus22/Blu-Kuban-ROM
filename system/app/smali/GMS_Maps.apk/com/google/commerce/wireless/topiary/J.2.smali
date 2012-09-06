.class public Lcom/google/commerce/wireless/topiary/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/commerce/wireless/topiary/K;

.field private final b:Ljava/util/Map;

.field private c:Landroid/accounts/Account;

.field private d:Ljava/util/Map;

.field private e:Lcom/google/commerce/wireless/topiary/M;

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/commerce/wireless/topiary/K;

    invoke-direct {v0}, Lcom/google/commerce/wireless/topiary/K;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->a:Lcom/google/commerce/wireless/topiary/K;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->b:Ljava/util/Map;

    .line 35
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->d:Ljava/util/Map;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->f:Ljava/lang/Object;

    .line 39
    const/16 v0, 0x7530

    iput v0, p0, Lcom/google/commerce/wireless/topiary/J;->g:I

    .line 40
    return-void
.end method


# virtual methods
.method public a()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->c:Landroid/accounts/Account;

    return-object v0
.end method

.method public a(Landroid/accounts/Account;)Lcom/google/commerce/wireless/topiary/J;
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/J;->c:Landroid/accounts/Account;

    .line 44
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->a:Lcom/google/commerce/wireless/topiary/K;

    invoke-virtual {v0, p1}, Lcom/google/commerce/wireless/topiary/K;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/commerce/wireless/topiary/L;)V
    .registers 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/L;I)V

    .line 128
    :cond_c
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/J;->f:Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/L;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/M;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/M;Ljava/lang/Exception;)V

    .line 87
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/M;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/J;->e:Lcom/google/commerce/wireless/topiary/M;

    .line 91
    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/J;->h:Ljava/lang/Exception;

    .line 92
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/google/commerce/wireless/topiary/J;->g:I

    return v0
.end method

.method public c()Ljava/util/Map;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->d:Ljava/util/Map;

    return-object v0
.end method

.method public d()Lcom/google/commerce/wireless/topiary/M;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->e:Lcom/google/commerce/wireless/topiary/M;

    return-object v0
.end method

.method public e()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->h:Ljava/lang/Exception;

    return-object v0
.end method

.method f()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->f:Ljava/lang/Object;

    if-eqz v0, :cond_1c

    .line 137
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->f:Ljava/lang/Object;

    .line 138
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/commerce/wireless/topiary/J;->f:Ljava/lang/Object;

    .line 139
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/J;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    .line 141
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    .line 139
    goto :goto_19

    :cond_1c
    move v0, v1

    .line 141
    goto :goto_19
.end method

.method g()Lcom/google/commerce/wireless/topiary/K;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/J;->a:Lcom/google/commerce/wireless/topiary/K;

    return-object v0
.end method
