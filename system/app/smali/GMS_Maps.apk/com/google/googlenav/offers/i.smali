.class public Lcom/google/googlenav/offers/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/googlenav/aW;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v0

    .line 33
    invoke-static {p0, p1}, Lcom/google/googlenav/offers/i;->b(Lcom/google/googlenav/aW;Ljava/lang/String;)LL/g;

    move-result-object v1

    .line 34
    invoke-static {v0}, Lcom/google/googlenav/offers/k;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    .line 35
    invoke-static {}, Lcom/google/googlenav/offers/k;->h()Lcom/google/googlenav/offers/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/offers/k;->d()V

    .line 36
    invoke-static {v0}, Lcom/google/android/apps/common/offerslib/v;->a(Landroid/content/Context;)Lcom/google/android/apps/common/offerslib/v;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/v;->a(LL/g;Landroid/accounts/Account;)V

    .line 37
    return-void
.end method

.method private static b(Lcom/google/googlenav/aW;Ljava/lang/String;)LL/g;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-static {}, LL/d;->e()LL/f;

    move-result-object v0

    invoke-virtual {v0, p1}, LL/f;->a(Ljava/lang/String;)LL/f;

    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->aE()[Lcom/google/googlenav/ai;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_12
    if-ge v0, v4, :cond_50

    aget-object v5, v3, v0

    .line 44
    invoke-virtual {v5}, Lcom/google/googlenav/ai;->aX()I

    move-result v6

    if-lez v6, :cond_4d

    .line 45
    invoke-static {}, LL/a;->h()LL/c;

    move-result-object v6

    .line 46
    invoke-virtual {v5, v1}, Lcom/google/googlenav/ai;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 47
    invoke-virtual {v5, v1}, Lcom/google/googlenav/ai;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, LL/c;->a(Ljava/lang/String;)LL/c;

    .line 49
    :cond_35
    invoke-virtual {v5, v1}, Lcom/google/googlenav/ai;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 50
    invoke-virtual {v5, v1}, Lcom/google/googlenav/ai;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, LL/c;->b(Ljava/lang/String;)LL/c;

    .line 52
    :cond_4a
    invoke-virtual {v2, v6}, LL/f;->a(LL/c;)LL/f;

    .line 43
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 55
    :cond_50
    invoke-static {}, LL/g;->o()LL/i;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, LL/i;->a(LL/f;)LL/i;

    .line 57
    invoke-virtual {v0}, LL/i;->b()LL/g;

    move-result-object v0

    return-object v0
.end method
