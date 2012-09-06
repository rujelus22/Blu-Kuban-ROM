.class public Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x5aff10c793dbb70L


# instance fields
.field private final transient details:Lcom/google/api/client/googleapis/json/a;

.field private final transient jsonFactory:Lcom/google/api/client/json/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/api/client/json/c;Lcom/google/api/client/http/p;Lcom/google/api/client/googleapis/json/a;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p2, p4}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/p;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->jsonFactory:Lcom/google/api/client/json/c;

    .line 76
    iput-object p3, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->details:Lcom/google/api/client/googleapis/json/a;

    .line 77
    return-void
.end method

.method public static execute(Lcom/google/api/client/json/c;Lcom/google/api/client/http/l;)Lcom/google/api/client/http/p;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {p1}, Lcom/google/api/client/http/l;->g()Z

    move-result v0

    .line 179
    if-eqz v0, :cond_d

    .line 180
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/l;->b(Z)Lcom/google/api/client/http/l;

    .line 182
    :cond_d
    invoke-virtual {p1}, Lcom/google/api/client/http/l;->h()Lcom/google/api/client/http/p;

    move-result-object v1

    .line 183
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/l;->b(Z)Lcom/google/api/client/http/l;

    .line 184
    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Lcom/google/api/client/http/p;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 185
    :cond_1c
    return-object v1

    .line 187
    :cond_1d
    invoke-static {p0, v1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->from(Lcom/google/api/client/json/c;Lcom/google/api/client/http/p;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object v0

    throw v0
.end method

.method public static from(Lcom/google/api/client/json/c;Lcom/google/api/client/http/p;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->a()Ljava/lang/String;

    move-result-object v0

    .line 117
    :try_start_8
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->c()Z

    move-result v2

    if-nez v2, :cond_a6

    if-eqz v0, :cond_a6

    const-string v2, "application/json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-virtual {p1}, Lcom/google/api/client/http/p;->f()Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1b} :catch_ab

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 121
    :try_start_1e
    invoke-static {p0, p1}, Lcom/google/api/client/http/c/b;->a(Lcom/google/api/client/json/c;Lcom/google/api/client/http/p;)Lcom/google/api/client/json/e;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_91
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_78

    move-result-object v3

    .line 122
    :try_start_22
    invoke-virtual {v3}, Lcom/google/api/client/json/e;->d()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 124
    if-nez v0, :cond_2c

    .line 125
    invoke-virtual {v3}, Lcom/google/api/client/json/e;->c()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 128
    :cond_2c
    if-eqz v0, :cond_c6

    .line 130
    const-string v0, "error"

    invoke-virtual {v3, v0}, Lcom/google/api/client/json/e;->a(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, Lcom/google/api/client/json/e;->d()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v2, :cond_c6

    .line 132
    const-class v0, Lcom/google/api/client/googleapis/json/a;

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Lcom/google/api/client/json/e;->a(Ljava/lang/Class;Lcom/google/api/client/json/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/a;
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_b4
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_44} :catch_bc

    .line 133
    :try_start_44
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/a;->toPrettyString()Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_b7
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_c0

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 140
    :goto_4b
    if-nez v3, :cond_6d

    .line 141
    :try_start_4d
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->g()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_73

    .line 154
    :cond_50
    :goto_50
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/p;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    invoke-static {v0}, Lcom/google/common/base/al;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 156
    sget-object v3, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_63
    new-instance v0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;-><init>(Lcom/google/api/client/json/c;Lcom/google/api/client/http/p;Lcom/google/api/client/googleapis/json/a;Ljava/lang/String;)V

    return-object v0

    .line 142
    :cond_6d
    if-nez v1, :cond_50

    .line 143
    :try_start_6f
    invoke-virtual {v3}, Lcom/google/api/client/json/e;->b()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_50

    .line 149
    :catch_73
    move-exception v2

    .line 151
    :goto_74
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 136
    :catch_78
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    move-object v0, v1

    .line 138
    :goto_7c
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_b7

    .line 140
    if-nez v3, :cond_88

    .line 141
    :try_start_81
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->g()V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_50

    .line 142
    :cond_88
    if-nez v0, :cond_c2

    .line 143
    invoke-virtual {v3}, Lcom/google/api/client/json/e;->b()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8d} :catch_af

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_50

    .line 140
    :catchall_91
    move-exception v0

    move-object v3, v1

    move-object v2, v1

    :goto_94
    if-nez v3, :cond_a0

    .line 141
    :try_start_96
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->g()V

    .line 143
    :cond_99
    :goto_99
    throw v0

    .line 149
    :catch_9a
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_74

    .line 142
    :cond_a0
    if-nez v2, :cond_99

    .line 143
    invoke-virtual {v3}, Lcom/google/api/client/json/e;->b()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a5} :catch_9a

    goto :goto_99

    .line 147
    :cond_a6
    :try_start_a6
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->h()Ljava/lang/String;
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_ab

    move-result-object v0

    goto :goto_50

    .line 149
    :catch_ab
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_74

    :catch_af
    move-exception v2

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_74

    .line 140
    :catchall_b4
    move-exception v0

    move-object v2, v1

    goto :goto_94

    :catchall_b7
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_94

    .line 136
    :catch_bc
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_7c

    :catch_c0
    move-exception v2

    goto :goto_7c

    :cond_c2
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_50

    :cond_c6
    move-object v0, v1

    goto :goto_4b
.end method


# virtual methods
.method public final getDetails()Lcom/google/api/client/googleapis/json/a;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->details:Lcom/google/api/client/googleapis/json/a;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/c;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->jsonFactory:Lcom/google/api/client/json/c;

    return-object v0
.end method
