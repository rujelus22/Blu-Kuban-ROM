.class public abstract Lcom/google/commerce/wireless/topiary/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/commerce/wireless/topiary/I;

.field private final b:[Lcom/google/commerce/wireless/topiary/L;

.field private final c:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Lcom/google/commerce/wireless/topiary/Q;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->b()Ljava/lang/String;

    move-result-object v0

    .line 30
    if-nez v0, :cond_6d

    .line 34
    :goto_9
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 35
    new-instance v0, Lcom/google/commerce/wireless/topiary/i;

    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GoogleLogin auth="

    invoke-direct {v0, v1, v2, v3}, Lcom/google/commerce/wireless/topiary/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/commerce/wireless/topiary/Q;->a(Lcom/google/commerce/wireless/topiary/L;)Lcom/google/commerce/wireless/topiary/Q;

    .line 45
    :cond_21
    :goto_21
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->d()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 46
    new-instance v0, Lcom/google/commerce/wireless/topiary/Y;

    invoke-direct {v0}, Lcom/google/commerce/wireless/topiary/Y;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/commerce/wireless/topiary/Q;->a(Lcom/google/commerce/wireless/topiary/L;)Lcom/google/commerce/wireless/topiary/Q;

    .line 48
    :cond_2f
    new-instance v0, Lcom/google/commerce/wireless/topiary/I;

    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/google/commerce/wireless/topiary/I;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/N;->a:Lcom/google/commerce/wireless/topiary/I;

    .line 49
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/commerce/wireless/topiary/L;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/commerce/wireless/topiary/L;

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/N;->b:[Lcom/google/commerce/wireless/topiary/L;

    .line 50
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->c()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/N;->c:Landroid/accounts/Account;

    .line 51
    return-void

    .line 39
    :cond_54
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 40
    new-instance v0, Lcom/google/commerce/wireless/topiary/i;

    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/Q;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bearer "

    invoke-direct {v0, v1, v2, v3}, Lcom/google/commerce/wireless/topiary/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/commerce/wireless/topiary/Q;->a(Lcom/google/commerce/wireless/topiary/L;)Lcom/google/commerce/wireless/topiary/Q;

    goto :goto_21

    :cond_6d
    move-object p2, v0

    goto :goto_9
.end method

.method private a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/J;[BLbk/p;)Lbk/p;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 139
    sget-object v1, Lcom/google/commerce/wireless/topiary/M;->a:Lcom/google/commerce/wireless/topiary/M;

    invoke-virtual {p2, v1}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/M;)V

    .line 142
    :try_start_6
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/N;->a:Lcom/google/commerce/wireless/topiary/I;

    invoke-virtual {v1, p2, p1}, Lcom/google/commerce/wireless/topiary/I;->a(Lcom/google/commerce/wireless/topiary/J;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_62
    .catch Lcom/google/commerce/wireless/topiary/n; {:try_start_6 .. :try_end_b} :catch_24
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_46

    move-result-object v2

    .line 143
    :try_start_c
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/N;->a:Lcom/google/commerce/wireless/topiary/I;

    invoke-virtual {v1, p2, v2, p3}, Lcom/google/commerce/wireless/topiary/I;->a(Lcom/google/commerce/wireless/topiary/J;Ljava/net/HttpURLConnection;[B)[B

    move-result-object v1

    .line 144
    invoke-interface {p4}, Lbk/p;->j()Lbk/q;

    move-result-object v3

    invoke-interface {v3, v1}, Lbk/q;->b([B)Lbk/q;

    move-result-object v1

    invoke-interface {v1}, Lbk/q;->f()Lbk/p;
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_3f
    .catch Lcom/google/commerce/wireless/topiary/n; {:try_start_c .. :try_end_1d} :catch_68
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1d} :catch_66

    move-result-object v0

    .line 162
    if-eqz v2, :cond_23

    .line 163
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    :cond_23
    :goto_23
    return-object v0

    .line 145
    :catch_24
    move-exception v1

    move-object v2, v0

    .line 146
    :goto_26
    :try_start_26
    invoke-virtual {v1}, Lcom/google/commerce/wireless/topiary/n;->a()I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_39

    .line 147
    sget-object v1, Lcom/google/commerce/wireless/topiary/M;->f:Lcom/google/commerce/wireless/topiary/M;

    invoke-virtual {p2, v1}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/M;)V
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_3f

    .line 162
    :goto_33
    if-eqz v2, :cond_23

    .line 163
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_23

    .line 149
    :cond_39
    :try_start_39
    sget-object v3, Lcom/google/commerce/wireless/topiary/M;->c:Lcom/google/commerce/wireless/topiary/M;

    invoke-virtual {p2, v3, v1}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/M;Ljava/lang/Exception;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3f

    goto :goto_33

    .line 162
    :catchall_3f
    move-exception v0

    :goto_40
    if-eqz v2, :cond_45

    .line 163
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_45
    throw v0

    .line 151
    :catch_46
    move-exception v1

    move-object v2, v0

    .line 153
    :goto_48
    :try_start_48
    sget-object v3, Lcom/google/commerce/wireless/topiary/P;->a:[I

    invoke-virtual {p2}, Lcom/google/commerce/wireless/topiary/J;->d()Lcom/google/commerce/wireless/topiary/M;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/commerce/wireless/topiary/M;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_6a

    .line 158
    sget-object v3, Lcom/google/commerce/wireless/topiary/M;->e:Lcom/google/commerce/wireless/topiary/M;

    invoke-virtual {p2, v3, v1}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/M;Ljava/lang/Exception;)V
    :try_end_5c
    .catchall {:try_start_48 .. :try_end_5c} :catchall_3f

    .line 162
    :pswitch_5c
    if-eqz v2, :cond_23

    .line 163
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_23

    .line 162
    :catchall_62
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_40

    .line 151
    :catch_66
    move-exception v1

    goto :goto_48

    .line 145
    :catch_68
    move-exception v1

    goto :goto_26

    .line 153
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_5c
    .end packed-switch
.end method

.method private a(Lcom/google/commerce/wireless/topiary/J;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 118
    sget-object v1, Lcom/google/commerce/wireless/topiary/M;->b:Lcom/google/commerce/wireless/topiary/M;

    invoke-virtual {p1, v1}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/M;)V

    .line 120
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->a()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/N;->c:Landroid/accounts/Account;

    if-eqz v1, :cond_15

    .line 121
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/N;->c:Landroid/accounts/Account;

    invoke-virtual {p1, v1}, Lcom/google/commerce/wireless/topiary/J;->a(Landroid/accounts/Account;)Lcom/google/commerce/wireless/topiary/J;

    .line 124
    :cond_15
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/N;->b:[Lcom/google/commerce/wireless/topiary/L;

    array-length v3, v2

    move v1, v0

    :goto_19
    if-ge v1, v3, :cond_2c

    aget-object v4, v2, v1

    .line 125
    invoke-interface {v4, p1}, Lcom/google/commerce/wireless/topiary/L;->a(Lcom/google/commerce/wireless/topiary/J;)V

    .line 127
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->d()Lcom/google/commerce/wireless/topiary/M;

    move-result-object v4

    sget-object v5, Lcom/google/commerce/wireless/topiary/M;->b:Lcom/google/commerce/wireless/topiary/M;

    if-eq v4, v5, :cond_29

    .line 132
    :goto_28
    return v0

    .line 124
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 132
    :cond_2c
    const/4 v0, 0x1

    goto :goto_28
.end method

.method private b(Lcom/google/commerce/wireless/topiary/J;)V
    .registers 6
    .parameter

    .prologue
    .line 170
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/N;->b:[Lcom/google/commerce/wireless/topiary/L;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 171
    invoke-interface {v3, p1}, Lcom/google/commerce/wireless/topiary/L;->b(Lcom/google/commerce/wireless/topiary/J;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 173
    :cond_e
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/J;Lbk/p;Lbk/p;)Lbk/p;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p2}, Lcom/google/commerce/wireless/topiary/N;->a(Lcom/google/commerce/wireless/topiary/J;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 86
    const/4 v0, 0x0

    .line 98
    :cond_7
    :goto_7
    return-object v0

    .line 89
    :cond_8
    invoke-interface {p3}, Lbk/p;->r()[B

    move-result-object v0

    .line 92
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/commerce/wireless/topiary/N;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/J;[BLbk/p;)Lbk/p;

    move-result-object v0

    .line 93
    invoke-direct {p0, p2}, Lcom/google/commerce/wireless/topiary/N;->b(Lcom/google/commerce/wireless/topiary/J;)V

    .line 95
    invoke-virtual {p2}, Lcom/google/commerce/wireless/topiary/J;->d()Lcom/google/commerce/wireless/topiary/M;

    move-result-object v1

    sget-object v2, Lcom/google/commerce/wireless/topiary/M;->a:Lcom/google/commerce/wireless/topiary/M;

    if-eq v1, v2, :cond_7

    invoke-virtual {p2}, Lcom/google/commerce/wireless/topiary/J;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 96
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/commerce/wireless/topiary/N;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/J;Lbk/p;Lbk/p;)Lbk/p;

    move-result-object v0

    goto :goto_7
.end method

.method protected a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/J;Lbk/p;Lbk/p;Lcom/google/commerce/wireless/topiary/H;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Lcom/google/commerce/wireless/topiary/O;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/commerce/wireless/topiary/O;-><init>(Lcom/google/commerce/wireless/topiary/N;Ljava/lang/String;Lcom/google/commerce/wireless/topiary/J;Lbk/p;Lbk/p;Lcom/google/commerce/wireless/topiary/H;)V

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/O;->b()V

    .line 74
    return-void
.end method
