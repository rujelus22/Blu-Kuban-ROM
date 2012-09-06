.class public Lcom/google/commerce/wireless/topiary/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/accounts/Account;

.field private final b:Lcom/google/commerce/wireless/topiary/D;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/D;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->c:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->d:Ljava/util/Set;

    .line 61
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/f;->a:Landroid/accounts/Account;

    .line 62
    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/f;->b:Lcom/google/commerce/wireless/topiary/D;

    .line 63
    return-void
.end method

.method private b(Lcom/google/commerce/wireless/topiary/S;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/f;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/g;

    .line 85
    invoke-interface {v0}, Lcom/google/commerce/wireless/topiary/g;->a()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 86
    invoke-interface {v0, p1, p2, v1}, Lcom/google/commerce/wireless/topiary/g;->a(Lcom/google/commerce/wireless/topiary/S;ZZ)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1f
    move v1, v0

    goto :goto_8

    .line 89
    :cond_21
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/g;

    .line 90
    invoke-interface {v0}, Lcom/google/commerce/wireless/topiary/g;->a()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 91
    invoke-interface {v0, p1, p2, v1}, Lcom/google/commerce/wireless/topiary/g;->a(Lcom/google/commerce/wireless/topiary/S;ZZ)Z

    goto :goto_27

    .line 94
    :cond_3d
    return-void

    :cond_3e
    move v0, v1

    goto :goto_1f
.end method

.method private c(Lcom/google/commerce/wireless/topiary/S;)Lcom/google/commerce/wireless/topiary/V;
    .registers 3
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/f;->d(Lcom/google/commerce/wireless/topiary/S;)Lcom/google/commerce/wireless/topiary/V;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/google/commerce/wireless/topiary/S;)Lcom/google/commerce/wireless/topiary/V;
    .registers 6
    .parameter

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v1

    .line 146
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/V;

    .line 147
    if-nez v0, :cond_30

    .line 148
    const-string v0, "AuthState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lcom/google/commerce/wireless/topiary/V;

    invoke-direct {v0, p1}, Lcom/google/commerce/wireless/topiary/V;-><init>(Lcom/google/commerce/wireless/topiary/S;)V

    .line 150
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/f;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_30
    return-object v0
.end method

.method private e(Lcom/google/commerce/wireless/topiary/S;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 216
    iget-object v2, p1, Lcom/google/commerce/wireless/topiary/S;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 225
    :cond_a
    :goto_a
    return v0

    .line 219
    :cond_b
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/f;->b:Lcom/google/commerce/wireless/topiary/D;

    invoke-virtual {v2}, Lcom/google/commerce/wireless/topiary/D;->e()Lcom/google/commerce/wireless/topiary/B;

    move-result-object v2

    iget-object v3, p1, Lcom/google/commerce/wireless/topiary/S;->f:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/commerce/wireless/topiary/B;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1b

    move v0, v1

    .line 220
    goto :goto_a

    .line 222
    :cond_1b
    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/f;->f(Lcom/google/commerce/wireless/topiary/S;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    .line 223
    goto :goto_a
.end method

.method private f(Lcom/google/commerce/wireless/topiary/S;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 235
    iget-object v0, p1, Lcom/google/commerce/wireless/topiary/S;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/T;

    .line 236
    iget v3, v0, Lcom/google/commerce/wireless/topiary/T;->c:I

    if-lez v3, :cond_7

    .line 237
    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/f;->c(Lcom/google/commerce/wireless/topiary/S;)Lcom/google/commerce/wireless/topiary/V;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Lcom/google/commerce/wireless/topiary/V;->a()Lcom/google/commerce/wireless/topiary/W;

    move-result-object v4

    sget-object v5, Lcom/google/commerce/wireless/topiary/W;->c:Lcom/google/commerce/wireless/topiary/W;

    if-eq v4, v5, :cond_51

    .line 239
    const-string v2, "AuthState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cookie "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/google/commerce/wireless/topiary/T;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " requires service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/google/commerce/wireless/topiary/S;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to be authenticated in this session"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 254
    :goto_50
    return v0

    .line 244
    :cond_51
    invoke-virtual {v3}, Lcom/google/commerce/wireless/topiary/V;->b()J

    move-result-wide v3

    .line 245
    iget v5, v0, Lcom/google/commerce/wireless/topiary/T;->c:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    .line 246
    const-string v2, "AuthState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cookie "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/google/commerce/wireless/topiary/T;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " allows max age of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/google/commerce/wireless/topiary/T;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec. but it has been "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/google/commerce/wireless/topiary/T;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " secs."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 250
    goto :goto_50

    .line 254
    :cond_9e
    const/4 v0, 0x0

    goto :goto_50
.end method


# virtual methods
.method public a()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->a:Landroid/accounts/Account;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/commerce/wireless/topiary/S;
    .registers 3
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/V;

    .line 158
    if-nez v0, :cond_c

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, v0, Lcom/google/commerce/wireless/topiary/V;->a:Lcom/google/commerce/wireless/topiary/S;

    goto :goto_b
.end method

.method public a(Lcom/google/commerce/wireless/topiary/S;)Lcom/google/commerce/wireless/topiary/V;
    .registers 5
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/f;->c(Lcom/google/commerce/wireless/topiary/S;)Lcom/google/commerce/wireless/topiary/V;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/V;->a()Lcom/google/commerce/wireless/topiary/W;

    move-result-object v1

    sget-object v2, Lcom/google/commerce/wireless/topiary/W;->b:Lcom/google/commerce/wireless/topiary/W;

    if-ne v1, v2, :cond_1c

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/V;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/commerce/wireless/topiary/V;->a(J)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 130
    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->a:Lcom/google/commerce/wireless/topiary/W;

    invoke-virtual {v0, v1}, Lcom/google/commerce/wireless/topiary/V;->a(Lcom/google/commerce/wireless/topiary/W;)V

    .line 136
    :cond_1b
    :goto_1b
    return-object v0

    .line 131
    :cond_1c
    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/V;->a()Lcom/google/commerce/wireless/topiary/W;

    move-result-object v1

    sget-object v2, Lcom/google/commerce/wireless/topiary/W;->c:Lcom/google/commerce/wireless/topiary/W;

    if-ne v1, v2, :cond_1b

    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/f;->e(Lcom/google/commerce/wireless/topiary/S;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 133
    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->a:Lcom/google/commerce/wireless/topiary/W;

    invoke-virtual {v0, v1}, Lcom/google/commerce/wireless/topiary/V;->a(Lcom/google/commerce/wireless/topiary/W;)V

    goto :goto_1b
.end method

.method a(Lcom/google/commerce/wireless/topiary/S;Lcom/google/commerce/wireless/topiary/S;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/f;->c(Lcom/google/commerce/wireless/topiary/S;)Lcom/google/commerce/wireless/topiary/V;

    move-result-object v0

    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->b:Lcom/google/commerce/wireless/topiary/W;

    invoke-virtual {v0, v1}, Lcom/google/commerce/wireless/topiary/V;->a(Lcom/google/commerce/wireless/topiary/W;)V

    .line 174
    if-eqz p2, :cond_25

    .line 175
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/V;

    .line 177
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/V;->a()Lcom/google/commerce/wireless/topiary/W;

    move-result-object v0

    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->b:Lcom/google/commerce/wireless/topiary/W;

    if-ne v0, v1, :cond_25

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/commerce/wireless/topiary/f;->a(Lcom/google/commerce/wireless/topiary/S;Z)V

    .line 182
    :cond_25
    return-void
.end method

.method a(Lcom/google/commerce/wireless/topiary/S;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/S;->b()Ljava/lang/String;

    move-result-object v0

    .line 190
    const-string v1, "AuthState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing auth completion for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/f;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/V;

    .line 192
    if-eqz p2, :cond_2f

    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->c:Lcom/google/commerce/wireless/topiary/W;

    :goto_28
    invoke-virtual {v0, v1}, Lcom/google/commerce/wireless/topiary/V;->a(Lcom/google/commerce/wireless/topiary/W;)V

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/google/commerce/wireless/topiary/f;->b(Lcom/google/commerce/wireless/topiary/S;Z)V

    .line 195
    return-void

    .line 192
    :cond_2f
    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->a:Lcom/google/commerce/wireless/topiary/W;

    goto :goto_28
.end method

.method a(Lcom/google/commerce/wireless/topiary/g;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public a(Lcom/google/commerce/wireless/topiary/S;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 206
    iget-object v0, p1, Lcom/google/commerce/wireless/topiary/S;->e:Lcom/google/commerce/wireless/topiary/U;

    sget-object v1, Lcom/google/commerce/wireless/topiary/U;->c:Lcom/google/commerce/wireless/topiary/U;

    if-eq v0, v1, :cond_12

    iget-object v0, p1, Lcom/google/commerce/wireless/topiary/S;->e:Lcom/google/commerce/wireless/topiary/U;

    sget-object v1, Lcom/google/commerce/wireless/topiary/U;->b:Lcom/google/commerce/wireless/topiary/U;

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/f;->e(Lcom/google/commerce/wireless/topiary/S;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public b()V
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/V;

    .line 105
    sget-object v2, Lcom/google/commerce/wireless/topiary/W;->a:Lcom/google/commerce/wireless/topiary/W;

    invoke-virtual {v0, v2}, Lcom/google/commerce/wireless/topiary/V;->a(Lcom/google/commerce/wireless/topiary/W;)V

    goto :goto_a

    .line 107
    :cond_1c
    return-void
.end method

.method public b(Lcom/google/commerce/wireless/topiary/S;)V
    .registers 5
    .parameter

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/google/commerce/wireless/topiary/f;->f(Lcom/google/commerce/wireless/topiary/S;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 264
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->b:Lcom/google/commerce/wireless/topiary/D;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/D;->e()Lcom/google/commerce/wireless/topiary/B;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/commerce/wireless/topiary/S;->d:Z

    iget-object v2, p1, Lcom/google/commerce/wireless/topiary/S;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/commerce/wireless/topiary/B;->a(ZLjava/util/List;)V

    .line 267
    :cond_13
    return-void
.end method

.method b(Lcom/google/commerce/wireless/topiary/g;)V
    .registers 3
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public c()Z
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/V;

    .line 115
    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/V;->a()Lcom/google/commerce/wireless/topiary/W;

    move-result-object v0

    sget-object v2, Lcom/google/commerce/wireless/topiary/W;->c:Lcom/google/commerce/wireless/topiary/W;

    if-ne v0, v2, :cond_a

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
