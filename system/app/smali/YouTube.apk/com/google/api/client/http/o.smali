.class public final Lcom/google/api/client/http/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final c:Lcom/google/api/client/http/i;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final d:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final e:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final g:Lcom/google/api/client/http/p;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final h:Lcom/google/api/client/http/k;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private j:Ljava/io/InputStream;

.field private k:J

.field private l:Lcom/google/api/client/http/t;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/k;Lcom/google/api/client/http/t;)V
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/google/api/client/http/o;->h:Lcom/google/api/client/http/k;

    .line 147
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/client/http/k;->g:Lcom/google/api/client/http/p;

    iput-object v1, p0, Lcom/google/api/client/http/o;->g:Lcom/google/api/client/http/p;

    .line 148
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/api/client/http/k;->c:Lcom/google/api/client/http/i;

    iput-object v1, p0, Lcom/google/api/client/http/o;->c:Lcom/google/api/client/http/i;

    .line 149
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/api/client/http/o;->l:Lcom/google/api/client/http/t;

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/t;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/api/client/http/o;->k:J

    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/t;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/o;->b:Ljava/lang/String;

    .line 152
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/t;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/o;->a:Ljava/lang/String;

    .line 153
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/t;->f()I

    move-result v2

    .line 154
    iput v2, p0, Lcom/google/api/client/http/o;->e:I

    .line 155
    invoke-static {v2}, Lcom/google/api/client/http/o;->a(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/api/client/http/o;->d:Z

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/t;->g()Ljava/lang/String;

    move-result-object v3

    .line 157
    iput-object v3, p0, Lcom/google/api/client/http/o;->f:Ljava/lang/String;

    .line 158
    sget-object v5, Lcom/google/api/client/http/p;->a:Ljava/util/logging/Logger;

    .line 159
    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    .line 160
    const/4 v1, 0x0

    .line 161
    if-eqz v6, :cond_160

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string v4, "-------------- RESPONSE --------------"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/google/api/client/util/u;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/t;->e()Ljava/lang/String;

    move-result-object v4

    .line 165
    if-eqz v4, :cond_ed

    .line 166
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_5f
    :goto_5f
    sget-object v2, Lcom/google/api/client/util/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v1

    .line 176
    :goto_65
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/http/t;->h()I

    move-result v7

    .line 177
    iget-object v1, p0, Lcom/google/api/client/http/o;->c:Lcom/google/api/client/http/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 178
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 179
    invoke-static {v1}, Lcom/google/api/client/util/h;->a(Ljava/lang/Class;)Lcom/google/api/client/util/h;

    move-result-object v9

    .line 180
    invoke-static {v1}, Lcom/google/api/client/http/i;->a(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v10

    .line 181
    new-instance v11, Lcom/google/api/client/util/e;

    iget-object v1, p0, Lcom/google/api/client/http/o;->c:Lcom/google/api/client/http/i;

    invoke-direct {v11, v1}, Lcom/google/api/client/util/e;-><init>(Ljava/lang/Object;)V

    .line 182
    const/4 v1, 0x0

    move v4, v1

    :goto_8a
    if-ge v4, v7, :cond_150

    .line 183
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/t;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/t;->b(I)Ljava/lang/String;

    move-result-object v12

    .line 185
    if-eqz v6, :cond_ba

    .line 186
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

    sget-object v13, Lcom/google/api/client/util/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_ba
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    if-nez v1, :cond_15d

    .line 193
    :goto_c2
    invoke-virtual {v9, v3}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v13

    .line 194
    if-eqz v13, :cond_138

    .line 195
    invoke-virtual {v13}, Lcom/google/api/client/util/o;->c()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/api/client/util/j;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 197
    invoke-static {v3}, Lcom/google/api/client/util/v;->a(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 199
    invoke-static {v3}, Lcom/google/api/client/util/v;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/api/client/util/v;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 201
    invoke-virtual {v13}, Lcom/google/api/client/util/o;->a()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v1, v8, v12}, Lcom/google/api/client/http/o;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v3, v1, v12}, Lcom/google/api/client/util/e;->a(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 182
    :goto_e9
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8a

    .line 168
    :cond_ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    if-eqz v3, :cond_5f

    .line 170
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5f

    .line 203
    :cond_fd
    invoke-static {v8, v3}, Lcom/google/api/client/util/v;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v14, Ljava/lang/Iterable;

    invoke-static {v1, v14}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 207
    iget-object v1, p0, Lcom/google/api/client/http/o;->c:Lcom/google/api/client/http/i;

    invoke-virtual {v13, v1}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 208
    if-nez v1, :cond_11c

    .line 209
    invoke-static {v3}, Lcom/google/api/client/util/j;->b(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v1

    .line 210
    iget-object v14, p0, Lcom/google/api/client/http/o;->c:Lcom/google/api/client/http/i;

    invoke-virtual {v13, v14, v1}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    :cond_11c
    const-class v13, Ljava/lang/Object;

    if-ne v3, v13, :cond_129

    const/4 v3, 0x0

    .line 213
    :goto_121
    invoke-static {v3, v8, v12}, Lcom/google/api/client/http/o;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 212
    :cond_129
    invoke-static {v3}, Lcom/google/api/client/util/v;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_121

    .line 216
    :cond_12e
    iget-object v1, p0, Lcom/google/api/client/http/o;->c:Lcom/google/api/client/http/i;

    invoke-static {v3, v8, v12}, Lcom/google/api/client/http/o;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e9

    .line 221
    :cond_138
    iget-object v1, p0, Lcom/google/api/client/http/o;->c:Lcom/google/api/client/http/i;

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 222
    if-nez v1, :cond_14c

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object v13, p0, Lcom/google/api/client/http/o;->c:Lcom/google/api/client/http/i;

    invoke-virtual {v13, v3, v1}, Lcom/google/api/client/http/i;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    :cond_14c
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 229
    :cond_150
    invoke-virtual {v11}, Lcom/google/api/client/util/e;->a()V

    .line 231
    if-eqz v6, :cond_15c

    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 234
    :cond_15c
    return-void

    :cond_15d
    move-object v3, v1

    goto/16 :goto_c2

    :cond_160
    move-object v2, v1

    goto/16 :goto_65
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-static {p1, p0}, Lcom/google/api/client/util/j;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 337
    invoke-static {v0, p2}, Lcom/google/api/client/util/j;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 484
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 349
    iget-object v1, p0, Lcom/google/api/client/http/o;->l:Lcom/google/api/client/http/t;

    .line 350
    if-nez v1, :cond_8

    .line 351
    iget-object v1, p0, Lcom/google/api/client/http/o;->j:Ljava/io/InputStream;

    .line 388
    :cond_7
    :goto_7
    return-object v1

    .line 353
    :cond_8
    iget-object v1, p0, Lcom/google/api/client/http/o;->l:Lcom/google/api/client/http/t;

    invoke-virtual {v1}, Lcom/google/api/client/http/t;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 354
    iput-object v0, p0, Lcom/google/api/client/http/o;->l:Lcom/google/api/client/http/t;

    .line 355
    if-eqz v1, :cond_7

    .line 357
    sget-object v4, Lcom/google/api/client/http/p;->a:Ljava/util/logging/Logger;

    .line 358
    iget-boolean v2, p0, Lcom/google/api/client/http/o;->i:Z

    if-nez v2, :cond_20

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_20
    sget-object v2, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_9b

    :cond_28
    const/4 v2, 0x1

    move v3, v2

    .line 360
    :goto_2a
    if-eqz v3, :cond_5a

    .line 361
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 362
    invoke-static {v1, v0}, Lcom/google/api/client/http/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 363
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 364
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " bytes"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 368
    :cond_5a
    iget-object v2, p0, Lcom/google/api/client/http/o;->a:Ljava/lang/String;

    .line 369
    if-eqz v2, :cond_82

    const-string v5, "gzip"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 370
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 371
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/google/api/client/http/o;->k:J

    .line 372
    if-eqz v3, :cond_9e

    .line 373
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 374
    invoke-static {v2, v0}, Lcom/google/api/client/http/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 375
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 376
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 379
    :cond_82
    :goto_82
    if-eqz v3, :cond_97

    .line 381
    iget-object v2, p0, Lcom/google/api/client/http/o;->b:Ljava/lang/String;

    .line 382
    array-length v3, v0

    if-eqz v3, :cond_97

    invoke-static {v2}, Lcom/google/api/client/http/r;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 383
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 386
    :cond_97
    iput-object v1, p0, Lcom/google/api/client/http/o;->j:Ljava/io/InputStream;

    goto/16 :goto_7

    .line 358
    :cond_9b
    const/4 v2, 0x0

    move v3, v2

    goto :goto_2a

    :cond_9e
    move-object v1, v2

    goto :goto_82
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/api/client/http/o;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_9

    .line 397
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 399
    :cond_9
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v2, 0x1000

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0}, Lcom/google/api/client/http/o;->a()Ljava/io/InputStream;

    move-result-object v4

    .line 454
    if-nez v4, :cond_c

    .line 455
    const-string v0, ""

    .line 476
    :goto_b
    return-object v0

    .line 458
    :cond_c
    :try_start_c
    iget-wide v5, p0, Lcom/google/api/client/http/o;->k:J

    .line 459
    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-nez v1, :cond_42

    .line 461
    :goto_14
    new-array v1, v2, [B

    .line 462
    const/16 v3, 0x1000

    new-array v5, v3, [B

    move v3, v0

    move v0, v2

    .line 464
    :goto_1c
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v2, -0x1

    if-eq v6, v2, :cond_44

    .line 465
    add-int v2, v3, v6

    if-le v2, v0, :cond_53

    .line 466
    shl-int/lit8 v0, v0, 0x1

    add-int v2, v3, v6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 467
    new-array v0, v2, [B

    .line 468
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v7, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    .line 471
    :goto_37
    const/4 v2, 0x0

    invoke-static {v5, v2, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    add-int v2, v3, v6

    move v3, v2

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto :goto_1c

    .line 459
    :cond_42
    long-to-int v2, v5

    goto :goto_14

    .line 474
    :cond_44
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_4e

    .line 476
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :catchall_4e
    move-exception v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_53
    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_37
.end method
