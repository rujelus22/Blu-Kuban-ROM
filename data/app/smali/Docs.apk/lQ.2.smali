.class public LlQ;
.super Ljava/lang/Object;
.source "MenuItemsState.java"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(ZZZZZZZZZZZ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-boolean p1, p0, LlQ;->a:Z

    .line 252
    iput-boolean p2, p0, LlQ;->b:Z

    .line 253
    iput-boolean p3, p0, LlQ;->c:Z

    .line 254
    iput-boolean p4, p0, LlQ;->d:Z

    .line 255
    iput-boolean p5, p0, LlQ;->e:Z

    .line 256
    iput-boolean p6, p0, LlQ;->f:Z

    .line 257
    iput-boolean p7, p0, LlQ;->g:Z

    .line 258
    iput-boolean p8, p0, LlQ;->h:Z

    .line 259
    iput-boolean p9, p0, LlQ;->i:Z

    .line 260
    iput-boolean p10, p0, LlQ;->j:Z

    .line 261
    iput-boolean p11, p0, LlQ;->k:Z

    .line 262
    return-void
.end method

.method public static a(LkT;LeZ;LFX;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    sget-object v0, LeV;->k:LeV;

    invoke-interface {p1, v0}, LeZ;->a(LeV;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 123
    instance-of v0, p0, LkR;

    if-eqz v0, :cond_13

    .line 124
    check-cast p0, LkR;

    invoke-virtual {p0}, LkR;->a()Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_12
    return-object v0

    .line 125
    :cond_13
    instance-of v0, p0, LkM;

    if-eqz v0, :cond_2e

    .line 126
    const-string v0, "folderSendLinkUrlPattern"

    const-string v1, "https://docs.google.com/folder/d/%1$s/edit"

    invoke-interface {p2, v0, v1}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, LkT;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 140
    :cond_2e
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static a(Landroid/content/Context;Ljava/util/Set;Llu;Lmi;LLz;Ljava/lang/String;LQN;LeZ;LFX;)LlQ;
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Llu;",
            "Lmi;",
            "LLz;",
            "Ljava/lang/String;",
            "LQN;",
            "LeZ;",
            "LFX;",
            ")",
            "LlQ;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v4

    .line 161
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a0

    .line 164
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    if-nez v4, :cond_8f

    if-eqz v2, :cond_8f

    const/4 v13, 0x0

    .line 168
    :goto_21
    if-eqz v13, :cond_a0

    .line 169
    invoke-static {p0}, LXH;->a(Landroid/content/Context;)Z

    move-result v2

    .line 170
    move-object/from16 v0, p3

    invoke-static {v0, p0}, Lmp;->a(Lmi;Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_96

    const/4 v3, 0x1

    .line 172
    :goto_30
    invoke-virtual {v13}, LkT;->k()Z

    move-result v4

    .line 173
    invoke-virtual {v13}, LkT;->g()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_98

    const/4 v5, 0x1

    .line 177
    :goto_3b
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, LkT;->a(LLz;)Z

    move-result v6

    if-eqz v6, :cond_9a

    sget-object v6, LeV;->b:LeV;

    move-object/from16 v0, p7

    invoke-interface {v0, v6}, LeZ;->a(LeV;)Z

    move-result v6

    if-eqz v6, :cond_9a

    const/4 v11, 0x1

    .line 179
    :goto_4e
    invoke-virtual {v13}, LkT;->f()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 180
    sget-object v6, LeD;->c:LeD;

    invoke-virtual {v13}, LkT;->a()LkU;

    move-result-object v7

    invoke-virtual {v6, v7}, LeD;->a(LkU;)LQM;

    move-result-object v7

    .line 181
    instance-of v6, v13, LkR;

    if-eqz v6, :cond_9c

    move-object v6, v13

    check-cast v6, LkR;

    move-object/from16 v0, p6

    invoke-interface {v0, v6, v7}, LQN;->c(LkR;LQM;)Z

    move-result v6

    if-eqz v6, :cond_9c

    const/4 v7, 0x1

    .line 184
    :goto_72
    invoke-virtual {v13}, LkT;->i()Z

    move-result v8

    .line 185
    invoke-virtual {v13}, LkT;->g()Z

    move-result v9

    .line 186
    invoke-virtual {v13}, LkT;->f()Z

    move-result v10

    .line 187
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-static {v13, v0, v1}, LlQ;->a(LkT;LeZ;LFX;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9e

    const/4 v13, 0x1

    :goto_89
    move v6, v4

    .line 189
    invoke-static/range {v2 .. v13}, LlQ;->a(ZZZZZZZZZZZZ)LlQ;

    move-result-object v2

    .line 209
    :goto_8e
    return-object v2

    .line 165
    :cond_8f
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v2}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v13

    goto :goto_21

    .line 170
    :cond_96
    const/4 v3, 0x0

    goto :goto_30

    .line 173
    :cond_98
    const/4 v5, 0x0

    goto :goto_3b

    .line 177
    :cond_9a
    const/4 v11, 0x0

    goto :goto_4e

    .line 181
    :cond_9c
    const/4 v7, 0x0

    goto :goto_72

    .line 187
    :cond_9e
    const/4 v13, 0x0

    goto :goto_89

    .line 197
    :cond_a0
    const/4 v3, 0x1

    .line 198
    if-eqz v4, :cond_d7

    .line 199
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v2}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v2

    .line 201
    if-eqz v2, :cond_a7

    invoke-virtual {v2}, LkT;->f()Z

    move-result v2

    if-nez v2, :cond_a7

    .line 202
    const/4 v2, 0x0

    .line 208
    :goto_c2
    if-nez v2, :cond_d5

    const/4 v4, 0x1

    .line 209
    :goto_c5
    new-instance v2, LlQ;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, LlQ;-><init>(ZZZZZZZZZZZ)V

    goto :goto_8e

    .line 208
    :cond_d5
    const/4 v4, 0x0

    goto :goto_c5

    :cond_d7
    move v2, v3

    goto :goto_c2
.end method

.method static a(ZZZZZZZZZZZZ)LlQ;
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    if-nez p3, :cond_4

    if-nez p6, :cond_3f

    :cond_4
    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 222
    if-eqz p0, :cond_41

    if-eqz p4, :cond_41

    const/4 v1, 0x1

    .line 223
    :goto_d
    if-eqz p0, :cond_43

    if-eqz p1, :cond_43

    if-nez p8, :cond_43

    const/4 v2, 0x1

    .line 224
    :goto_14
    if-eqz p0, :cond_45

    if-eqz p2, :cond_45

    const/4 v3, 0x1

    .line 225
    :goto_19
    if-eqz p3, :cond_47

    if-nez p0, :cond_1f

    if-eqz p5, :cond_47

    :cond_1f
    const/4 v4, 0x1

    .line 226
    :goto_20
    if-eqz p3, :cond_49

    if-nez p0, :cond_26

    if-eqz p5, :cond_49

    :cond_26
    const/4 v5, 0x1

    .line 227
    :goto_27
    if-eqz p11, :cond_4b

    if-nez p8, :cond_4b

    const/4 v6, 0x1

    .line 228
    :goto_2c
    if-eqz p1, :cond_4d

    if-eqz p2, :cond_4d

    const/4 v7, 0x1

    .line 232
    :goto_31
    new-instance v0, LlQ;

    move/from16 v8, p6

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, LlQ;-><init>(ZZZZZZZZZZZ)V

    return-object v0

    .line 221
    :cond_3f
    const/4 v0, 0x0

    goto :goto_5

    .line 222
    :cond_41
    const/4 v1, 0x0

    goto :goto_d

    .line 223
    :cond_43
    const/4 v2, 0x0

    goto :goto_14

    .line 224
    :cond_45
    const/4 v3, 0x0

    goto :goto_19

    .line 225
    :cond_47
    const/4 v4, 0x0

    goto :goto_20

    .line 226
    :cond_49
    const/4 v5, 0x0

    goto :goto_27

    .line 227
    :cond_4b
    const/4 v6, 0x0

    goto :goto_2c

    .line 228
    :cond_4d
    const/4 v7, 0x0

    goto :goto_31
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 265
    iget-boolean v0, p0, LlQ;->a:Z

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, LlQ;->b:Z

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 273
    iget-boolean v0, p0, LlQ;->c:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 277
    iget-boolean v0, p0, LlQ;->d:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 281
    iget-boolean v0, p0, LlQ;->e:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 285
    iget-boolean v0, p0, LlQ;->f:Z

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 289
    iget-boolean v0, p0, LlQ;->g:Z

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 293
    iget-boolean v0, p0, LlQ;->h:Z

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 297
    iget-boolean v0, p0, LlQ;->i:Z

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 301
    iget-boolean v0, p0, LlQ;->j:Z

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, LlQ;->k:Z

    return v0
.end method
