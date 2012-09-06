.class public LRW;
.super LarQ;
.source "FeedClient.java"

# interfaces
.implements LRX;


# instance fields
.field private final a:LIG;


# direct methods
.method public constructor <init>(LarP;LRY;LIG;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-virtual {p2}, LRY;->a()LarO;

    move-result-object v0

    invoke-direct {p0, v0, p1}, LarQ;-><init>(LarO;LarP;)V

    .line 53
    iput-object p3, p0, LRW;->a:LIG;

    .line 54
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lase;)Lase;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p2, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :try_start_8
    invoke-virtual {p0, p1, v0, p3}, LRW;->b(Ljava/lang/String;Ljava/lang/String;Lase;)Lase;
    :try_end_b
    .catch LarL; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 134
    :goto_c
    return-object v0

    .line 127
    :catch_d
    move-exception v0

    .line 129
    const-string v0, "FeedClient"

    const-string v1, "Authentication file"

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p2, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p2, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0, p1, v0, p3}, LRW;->b(Ljava/lang/String;Ljava/lang/String;Lase;)Lase;

    move-result-object v0

    goto :goto_c
.end method

.method private c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasm;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lase;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lasm;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p3, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :try_start_8
    invoke-virtual {p0, p1, p2, v0, p4}, LRW;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasm;
    :try_end_b
    .catch LarL; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 95
    :goto_c
    return-object v0

    .line 88
    :catch_d
    move-exception v0

    .line 90
    const-string v0, "FeedClient"

    const-string v1, "Authentication failed."

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p3, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p3, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0, p1, p2, v0, p4}, LRW;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasm;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method public a(Lase;Ljava/lang/String;)Lase;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p0, p1, p2}, LRW;->b(Lase;Ljava/lang/String;)Lase;
    :try_end_3
    .catch Lasc; {:try_start_0 .. :try_end_3} :catch_5
    .catch LarZ; {:try_start_0 .. :try_end_3} :catch_23
    .catch LarN; {:try_start_0 .. :try_end_3} :catch_41
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_3} :catch_5f
    .catch LJi; {:try_start_0 .. :try_end_3} :catch_7d
    .catch LarJ; {:try_start_0 .. :try_end_3} :catch_9b
    .catch Lasa; {:try_start_0 .. :try_end_3} :catch_b9
    .catch LarM; {:try_start_0 .. :try_end_3} :catch_d7

    move-result-object v0

    return-object v0

    .line 187
    :catch_5
    move-exception v0

    .line 188
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting feed data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lasc;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 189
    :catch_23
    move-exception v0

    .line 190
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarZ;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :catch_41
    move-exception v0

    .line 192
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarN;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 193
    :catch_5f
    move-exception v0

    .line 194
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 195
    :catch_7d
    move-exception v0

    .line 196
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LJi;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 197
    :catch_9b
    move-exception v0

    .line 198
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarJ;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :catch_b9
    move-exception v0

    .line 200
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lasa;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :catch_d7
    move-exception v0

    .line 202
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarM;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lase;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lase;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lase;"
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, LRW;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lase;
    :try_end_3
    .catch Lasc; {:try_start_0 .. :try_end_3} :catch_5
    .catch LarZ; {:try_start_0 .. :try_end_3} :catch_23
    .catch LarN; {:try_start_0 .. :try_end_3} :catch_41
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_3} :catch_5f
    .catch LJi; {:try_start_0 .. :try_end_3} :catch_7d

    move-result-object v0

    return-object v0

    .line 147
    :catch_5
    move-exception v0

    .line 148
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting feed data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lasc;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :catch_23
    move-exception v0

    .line 150
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarZ;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :catch_41
    move-exception v0

    .line 152
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarN;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 153
    :catch_5f
    move-exception v0

    .line 154
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :catch_7d
    move-exception v0

    .line 156
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LJi;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lase;)Lase;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, LRW;->c(Ljava/lang/String;Ljava/lang/String;Lase;)Lase;
    :try_end_3
    .catch LarZ; {:try_start_0 .. :try_end_3} :catch_5
    .catch LarN; {:try_start_0 .. :try_end_3} :catch_23
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_3} :catch_41
    .catch LJi; {:try_start_0 .. :try_end_3} :catch_5f
    .catch LarM; {:try_start_0 .. :try_end_3} :catch_7d
    .catch LarJ; {:try_start_0 .. :try_end_3} :catch_88
    .catch Lasa; {:try_start_0 .. :try_end_3} :catch_a6

    move-result-object v0

    return-object v0

    .line 103
    :catch_5
    move-exception v0

    .line 104
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarZ;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :catch_23
    move-exception v0

    .line 106
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarN;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 107
    :catch_41
    move-exception v0

    .line 108
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 109
    :catch_5f
    move-exception v0

    .line 110
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LJi;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 111
    :catch_7d
    move-exception v0

    .line 112
    new-instance v1, Lasn;

    invoke-virtual {v0}, LarM;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :catch_88
    move-exception v0

    .line 114
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting feed data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarJ;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 115
    :catch_a6
    move-exception v0

    .line 116
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lasa;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasm;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lase;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lasm;"
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, LRW;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasm;
    :try_end_3
    .catch Lasb; {:try_start_0 .. :try_end_3} :catch_5
    .catch Lasd; {:try_start_0 .. :try_end_3} :catch_23
    .catch LarZ; {:try_start_0 .. :try_end_3} :catch_41
    .catch LarN; {:try_start_0 .. :try_end_3} :catch_5f
    .catch LJi; {:try_start_0 .. :try_end_3} :catch_7d

    move-result-object v0

    return-object v0

    .line 64
    :catch_5
    move-exception v0

    .line 65
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting feed data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lasb;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 66
    :catch_23
    move-exception v0

    .line 67
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting feed data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lasd;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    :catch_41
    move-exception v0

    .line 69
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarZ;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :catch_5f
    move-exception v0

    .line 71
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarN;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :catch_7d
    move-exception v0

    .line 73
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LJi;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lasm;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Lasm;"
        }
    .end annotation

    .prologue
    .line 275
    :try_start_0
    invoke-static {p4}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LRW;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Enumeration;)Lasm;
    :try_end_7
    .catch LarZ; {:try_start_0 .. :try_end_7} :catch_9
    .catch LarN; {:try_start_0 .. :try_end_7} :catch_27
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_7} :catch_45
    .catch LJi; {:try_start_0 .. :try_end_7} :catch_63
    .catch LarM; {:try_start_0 .. :try_end_7} :catch_81

    move-result-object v0

    return-object v0

    .line 277
    :catch_9
    move-exception v0

    .line 278
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarZ;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :catch_27
    move-exception v0

    .line 280
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarN;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 281
    :catch_45
    move-exception v0

    .line 282
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 283
    :catch_63
    move-exception v0

    .line 284
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LJi;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 285
    :catch_81
    move-exception v0

    .line 286
    const-string v1, "FeedClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarM;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarM;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Enumeration;)Lasm;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Enumeration",
            "<TT;>;)",
            "Lasm;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p3, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    :try_start_8
    invoke-virtual {p0, p1, p2, v0, p4}, LRW;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Enumeration;)Lasm;
    :try_end_b
    .catch LarL; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 306
    :goto_c
    return-object v0

    .line 299
    :catch_d
    move-exception v0

    .line 301
    const-string v0, "FeedClient"

    const-string v1, "Authentication failed."

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p3, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p3, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p0, p1, p2, v0, p4}, LRW;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Enumeration;)Lasm;

    move-result-object v0

    goto :goto_c
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    const-string v0, "3.0"

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, LRW;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lasc; {:try_start_0 .. :try_end_3} :catch_4
    .catch LarZ; {:try_start_0 .. :try_end_3} :catch_22
    .catch LarN; {:try_start_0 .. :try_end_3} :catch_40
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_3} :catch_5e
    .catch LJi; {:try_start_0 .. :try_end_3} :catch_7c
    .catch LarJ; {:try_start_0 .. :try_end_3} :catch_9a
    .catch Lasa; {:try_start_0 .. :try_end_3} :catch_b8
    .catch LarM; {:try_start_0 .. :try_end_3} :catch_d6

    .line 246
    return-void

    .line 229
    :catch_4
    move-exception v0

    .line 230
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting feed data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lasc;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lasn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 231
    :catch_22
    move-exception v0

    .line 232
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarZ;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :catch_40
    move-exception v0

    .line 234
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarN;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 235
    :catch_5e
    move-exception v0

    .line 236
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 237
    :catch_7c
    move-exception v0

    .line 238
    new-instance v1, LarL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LJi;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LarL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 239
    :catch_9a
    move-exception v0

    .line 240
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarJ;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :catch_b8
    move-exception v0

    .line 242
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lasa;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :catch_d6
    move-exception v0

    .line 244
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarM;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected b(Lase;Ljava/lang/String;)Lase;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p2, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :try_start_8
    invoke-virtual {p0, p1, v0}, LRW;->c(Lase;Ljava/lang/String;)Lase;
    :try_end_b
    .catch LarL; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 221
    :goto_c
    return-object v0

    .line 214
    :catch_d
    move-exception v0

    .line 216
    const-string v0, "FeedClient"

    const-string v1, "Authentication failed."

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p2, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p2, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p0, p1, v0}, LRW;->c(Lase;Ljava/lang/String;)Lase;

    move-result-object v0

    goto :goto_c
.end method

.method protected b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lase;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lase;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lase;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p3, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    :try_start_8
    invoke-virtual {p0, p1, p2, v0, p4}, LRW;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lase;
    :try_end_b
    .catch LarL; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 176
    :goto_c
    return-object v0

    .line 169
    :catch_d
    move-exception v0

    .line 171
    const-string v0, "FeedClient"

    const-string v1, "Authentication failed."

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p3, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p3, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p0, p1, p2, v0, p4}, LRW;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lase;

    move-result-object v0

    goto :goto_c
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p2, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :try_start_8
    invoke-virtual {p0, p1, v0, p3}, LRW;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch LarL; {:try_start_8 .. :try_end_b} :catch_c

    .line 265
    :goto_b
    return-void

    .line 257
    :catch_c
    move-exception v0

    .line 259
    const-string v0, "FeedClient"

    const-string v1, "Authentication failed."

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p2, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, LRW;->a:LIG;

    const-string v1, "writely"

    invoke-interface {v0, p2, v1}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {p0, p1, v0, p3}, LRW;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
