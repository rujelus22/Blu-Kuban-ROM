.class public final Lcom/google/api/client/http/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private final b:Ljava/lang/String;

.field private c:J

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/api/client/http/j;

.field private f:Lcom/google/api/client/http/v;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/api/client/http/r;

.field private final j:Lcom/google/api/client/http/l;

.field private k:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private l:I


# direct methods
.method constructor <init>(Lcom/google/api/client/http/l;Lcom/google/api/client/http/v;)V
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const v1, 0x186a0

    iput v1, p0, Lcom/google/api/client/http/p;->l:I

    .line 115
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/google/api/client/http/p;->j:Lcom/google/api/client/http/l;

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/client/http/l;->a()Lcom/google/api/client/http/r;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/p;->i:Lcom/google/api/client/http/r;

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/client/http/l;->f()Lcom/google/api/client/http/j;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/p;->e:Lcom/google/api/client/http/j;

    .line 118
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/api/client/http/p;->f:Lcom/google/api/client/http/v;

    .line 119
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/v;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/api/client/http/p;->c:J

    .line 120
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/v;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/p;->d:Ljava/lang/String;

    .line 121
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/v;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/p;->b:Ljava/lang/String;

    .line 122
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/v;->f()I

    move-result v2

    .line 123
    iput v2, p0, Lcom/google/api/client/http/p;->g:I

    .line 124
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/v;->g()Ljava/lang/String;

    move-result-object v3

    .line 125
    iput-object v3, p0, Lcom/google/api/client/http/p;->h:Ljava/lang/String;

    .line 126
    sget-object v5, Lcom/google/api/client/http/r;->a:Ljava/util/logging/Logger;

    .line 127
    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    .line 128
    const/4 v1, 0x0

    .line 129
    if-eqz v6, :cond_15f

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    const-string v4, "-------------- RESPONSE --------------"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/v;->e()Ljava/lang/String;

    move-result-object v4

    .line 133
    if-eqz v4, :cond_ec

    .line 134
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_5e
    :goto_5e
    sget-object v2, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v1

    .line 144
    :goto_64
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/v;->h()I

    move-result v7

    .line 145
    iget-object v1, p0, Lcom/google/api/client/http/p;->e:Lcom/google/api/client/http/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 146
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 147
    invoke-static {v1}, Lcom/google/api/client/util/g;->a(Ljava/lang/Class;)Lcom/google/api/client/util/g;

    move-result-object v9

    .line 148
    invoke-static {v1}, Lcom/google/api/client/http/j;->a(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v10

    .line 149
    new-instance v11, Lcom/google/api/client/util/e;

    iget-object v1, p0, Lcom/google/api/client/http/p;->e:Lcom/google/api/client/http/j;

    invoke-direct {v11, v1}, Lcom/google/api/client/util/e;-><init>(Ljava/lang/Object;)V

    .line 150
    const/4 v1, 0x0

    move v4, v1

    :goto_89
    if-ge v4, v7, :cond_14f

    .line 151
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/v;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/v;->b(I)Ljava/lang/String;

    move-result-object v12

    .line 153
    if-eqz v6, :cond_b9

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, ": "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v13, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_b9
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    if-nez v1, :cond_15c

    .line 161
    :goto_c1
    invoke-virtual {v9, v3}, Lcom/google/api/client/util/g;->a(Ljava/lang/String;)Lcom/google/api/client/util/n;

    move-result-object v13

    .line 162
    if-eqz v13, :cond_137

    .line 163
    invoke-virtual {v13}, Lcom/google/api/client/util/n;->c()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/api/client/util/i;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 165
    invoke-static {v3}, Lcom/google/api/client/util/u;->a(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 167
    invoke-static {v3}, Lcom/google/api/client/util/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/api/client/util/u;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 169
    invoke-virtual {v13}, Lcom/google/api/client/util/n;->a()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v1, v8, v12}, Lcom/google/api/client/http/p;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v3, v1, v12}, Lcom/google/api/client/util/e;->a(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 150
    :goto_e8
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_89

    .line 136
    :cond_ec
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    if-eqz v3, :cond_5e

    .line 138
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5e

    .line 171
    :cond_fc
    invoke-static {v8, v3}, Lcom/google/api/client/util/u;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v14, Ljava/lang/Iterable;

    invoke-static {v1, v14}, Lcom/google/api/client/util/u;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 175
    iget-object v1, p0, Lcom/google/api/client/http/p;->e:Lcom/google/api/client/http/j;

    invoke-virtual {v13, v1}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 176
    if-nez v1, :cond_11b

    .line 177
    invoke-static {v3}, Lcom/google/api/client/util/i;->b(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v1

    .line 178
    iget-object v14, p0, Lcom/google/api/client/http/p;->e:Lcom/google/api/client/http/j;

    invoke-virtual {v13, v14, v1}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    :cond_11b
    const-class v13, Ljava/lang/Object;

    if-ne v3, v13, :cond_128

    const/4 v3, 0x0

    .line 181
    :goto_120
    invoke-static {v3, v8, v12}, Lcom/google/api/client/http/p;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    .line 180
    :cond_128
    invoke-static {v3}, Lcom/google/api/client/util/u;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_120

    .line 184
    :cond_12d
    iget-object v1, p0, Lcom/google/api/client/http/p;->e:Lcom/google/api/client/http/j;

    invoke-static {v3, v8, v12}, Lcom/google/api/client/http/p;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e8

    .line 189
    :cond_137
    iget-object v1, p0, Lcom/google/api/client/http/p;->e:Lcom/google/api/client/http/j;

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 190
    if-nez v1, :cond_14b

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v13, p0, Lcom/google/api/client/http/p;->e:Lcom/google/api/client/http/j;

    invoke-virtual {v13, v3, v1}, Lcom/google/api/client/http/j;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    :cond_14b
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    .line 197
    :cond_14f
    invoke-virtual {v11}, Lcom/google/api/client/util/e;->a()V

    .line 199
    if-eqz v6, :cond_15b

    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 202
    :cond_15b
    return-void

    :cond_15c
    move-object v3, v1

    goto/16 :goto_c1

    :cond_15f
    move-object v2, v1

    goto/16 :goto_64
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-static {p1, p0}, Lcom/google/api/client/util/i;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 356
    invoke-static {v0, p2}, Lcom/google/api/client/util/i;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Z)Lcom/google/api/client/http/p;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/p;->k:Z

    .line 253
    return-object p0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/api/client/http/p;->j:Lcom/google/api/client/http/l;

    iget-object v1, p0, Lcom/google/api/client/http/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/l;->a(Ljava/lang/String;)Lcom/google/api/client/http/k;

    move-result-object v0

    .line 457
    if-nez v0, :cond_2d

    .line 458
    iget-object v0, p0, Lcom/google/api/client/http/p;->d:Ljava/lang/String;

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_f
    const-string v1, "Missing Content-Type header in response"

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/Object;)V

    .line 459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No parser defined for Content-Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/api/client/http/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_2b
    const/4 v0, 0x0

    goto :goto_f

    .line 461
    :cond_2d
    invoke-interface {v0, p0, p1}, Lcom/google/api/client/http/k;->a(Lcom/google/api/client/http/p;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/api/client/http/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/api/client/http/j;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/api/client/http/p;->e:Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 315
    iget v0, p0, Lcom/google/api/client/http/p;->g:I

    invoke-static {v0}, Lcom/google/api/client/http/q;->a(I)Z

    move-result v0

    return v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Lcom/google/api/client/http/p;->g:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/api/client/http/p;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/io/InputStream;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lcom/google/api/client/http/p;->f:Lcom/google/api/client/http/v;

    .line 369
    if-nez v1, :cond_8

    .line 370
    iget-object v1, p0, Lcom/google/api/client/http/p;->a:Ljava/io/InputStream;

    .line 416
    :cond_7
    :goto_7
    return-object v1

    .line 372
    :cond_8
    iget-object v1, p0, Lcom/google/api/client/http/p;->f:Lcom/google/api/client/http/v;

    invoke-virtual {v1}, Lcom/google/api/client/http/v;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 373
    iput-object v0, p0, Lcom/google/api/client/http/p;->f:Lcom/google/api/client/http/v;

    .line 374
    if-eqz v1, :cond_7

    .line 376
    sget-object v4, Lcom/google/api/client/http/r;->a:Ljava/util/logging/Logger;

    .line 377
    iget-boolean v2, p0, Lcom/google/api/client/http/p;->k:Z

    if-nez v2, :cond_20

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_20
    sget-object v2, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_9e

    :cond_28
    const/4 v2, 0x1

    move v3, v2

    .line 379
    :goto_2a
    if-eqz v3, :cond_59

    .line 380
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 382
    :try_start_31
    invoke-static {v1, v2}, Lcom/google/api/client/http/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 383
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_a1

    move-result-object v0

    .line 385
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 387
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Response size: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " bytes"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 391
    :cond_59
    iget-object v2, p0, Lcom/google/api/client/http/p;->b:Ljava/lang/String;

    .line 392
    if-eqz v2, :cond_81

    const-string v5, "gzip"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 393
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 394
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/google/api/client/http/p;->c:J

    .line 395
    if-eqz v3, :cond_c7

    .line 396
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 397
    invoke-static {v2, v0}, Lcom/google/api/client/http/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 398
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 399
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 402
    :cond_81
    :goto_81
    if-eqz v3, :cond_9a

    .line 404
    iget-object v2, p0, Lcom/google/api/client/http/p;->d:Ljava/lang/String;

    .line 405
    array-length v3, v0

    if-eqz v3, :cond_9a

    invoke-static {v2}, Lcom/google/api/client/http/t;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 406
    array-length v2, v0

    iget v3, p0, Lcom/google/api/client/http/p;->l:I

    if-gt v2, v3, :cond_a6

    .line 407
    invoke-static {v0}, Lcom/google/api/client/util/t;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 414
    :cond_9a
    :goto_9a
    iput-object v1, p0, Lcom/google/api/client/http/p;->a:Ljava/io/InputStream;

    goto/16 :goto_7

    .line 377
    :cond_9e
    const/4 v2, 0x0

    move v3, v2

    goto :goto_2a

    .line 385
    :catchall_a1
    move-exception v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0

    .line 409
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Content will not be logged because the content length "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/api/client/http/p;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is greater than the content logging limit "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/api/client/http/p;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_9a

    :cond_c7
    move-object v1, v2

    goto :goto_81
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/google/api/client/http/p;->f()Ljava/io/InputStream;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_9

    .line 425
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 427
    :cond_9
    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v2, 0x1000

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p0}, Lcom/google/api/client/http/p;->f()Ljava/io/InputStream;

    move-result-object v4

    .line 475
    if-nez v4, :cond_c

    .line 476
    const-string v0, ""

    .line 497
    :goto_b
    return-object v0

    .line 479
    :cond_c
    :try_start_c
    iget-wide v5, p0, Lcom/google/api/client/http/p;->c:J

    .line 480
    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-nez v1, :cond_42

    .line 482
    :goto_14
    new-array v1, v2, [B

    .line 483
    const/16 v3, 0x1000

    new-array v5, v3, [B

    move v3, v0

    move v0, v2

    .line 485
    :goto_1c
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v2, -0x1

    if-eq v6, v2, :cond_44

    .line 486
    add-int v2, v3, v6

    if-le v2, v0, :cond_55

    .line 487
    shl-int/lit8 v0, v0, 0x1

    add-int v2, v3, v6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 488
    new-array v0, v2, [B

    .line 489
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v7, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    .line 492
    :goto_37
    const/4 v2, 0x0

    invoke-static {v5, v2, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    add-int v2, v3, v6

    move v3, v2

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto :goto_1c

    .line 480
    :cond_42
    long-to-int v2, v5

    goto :goto_14

    .line 495
    :cond_44
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "UTF-8"

    invoke-direct {v0, v1, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_c .. :try_end_4c} :catchall_50

    .line 497
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :catchall_50
    move-exception v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_55
    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_37
.end method
