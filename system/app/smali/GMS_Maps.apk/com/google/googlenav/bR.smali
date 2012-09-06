.class public Lcom/google/googlenav/br;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field public final i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field public j:Z

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
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
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean p1, p0, Lcom/google/googlenav/br;->a:Z

    .line 63
    iput-object p2, p0, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/google/googlenav/br;->c:Ljava/lang/String;

    .line 65
    iput-boolean p4, p0, Lcom/google/googlenav/br;->j:Z

    .line 66
    iput-object p5, p0, Lcom/google/googlenav/br;->d:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/google/googlenav/br;->e:Ljava/lang/String;

    .line 68
    iput p7, p0, Lcom/google/googlenav/br;->f:I

    .line 69
    iput p8, p0, Lcom/google/googlenav/br;->g:I

    .line 70
    iput-object p9, p0, Lcom/google/googlenav/br;->k:Ljava/lang/String;

    .line 71
    iput-object p10, p0, Lcom/google/googlenav/br;->h:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 72
    iput-object p11, p0, Lcom/google/googlenav/br;->i:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 73
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/br;
    .registers 14
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    if-nez p0, :cond_8

    .line 174
    :cond_7
    :goto_7
    return-object v4

    .line 94
    :cond_8
    new-instance v0, Lcom/google/googlenav/friend/W;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 98
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 99
    invoke-virtual {v0, v8}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 100
    invoke-virtual {v0, v5}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 101
    if-nez v6, :cond_1e

    if-eqz v7, :cond_7

    .line 106
    :cond_1e
    invoke-static {v0, v5}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v1

    .line 110
    if-eqz v1, :cond_a0

    .line 111
    invoke-static {v0, v10}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 113
    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v3

    .line 125
    :goto_2d
    if-eqz v6, :cond_64

    invoke-virtual {v6, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {v6, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 128
    invoke-virtual {v6, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    new-instance v0, Lcom/google/googlenav/bs;

    invoke-virtual {v6, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/google/googlenav/bs;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 137
    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v9

    move-object v11, v4

    move-object v10, v4

    move-object v6, v4

    move v12, v5

    move-object v5, v4

    move v4, v12

    .line 167
    :goto_55
    if-eqz v0, :cond_94

    iget v7, v0, Lcom/google/googlenav/bs;->c:I

    .line 168
    :goto_59
    if-eqz v0, :cond_5d

    iget v8, v0, Lcom/google/googlenav/bs;->a:I

    .line 170
    :cond_5d
    new-instance v0, Lcom/google/googlenav/br;

    invoke-direct/range {v0 .. v11}, Lcom/google/googlenav/br;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    move-object v4, v0

    .line 174
    goto :goto_7

    .line 141
    :cond_64
    if-eqz v7, :cond_98

    .line 143
    invoke-virtual {v7, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 152
    new-instance v5, Lcom/google/googlenav/bs;

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/googlenav/bs;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 154
    invoke-virtual {v5}, Lcom/google/googlenav/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 155
    invoke-virtual {v7, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_80
    invoke-static {v7, v10}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v6

    .line 160
    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v10

    .line 161
    const/4 v9, 0x6

    invoke-virtual {v7, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v11

    move-object v9, v4

    move v4, v8

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    goto :goto_55

    :cond_94
    move v7, v8

    .line 167
    goto :goto_59

    :cond_96
    move-object v0, v4

    goto :goto_80

    :cond_98
    move-object v0, v4

    move-object v9, v4

    move-object v11, v4

    move-object v10, v4

    move-object v6, v4

    move-object v5, v4

    move v4, v8

    goto :goto_55

    :cond_a0
    move-object v3, v4

    move-object v2, v4

    goto :goto_2d
.end method

.method public static a(Lcom/google/googlenav/br;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/googlenav/br;->a(Lcom/google/googlenav/br;I)V

    .line 265
    return-void
.end method

.method protected static a(Lcom/google/googlenav/br;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 269
    if-nez p0, :cond_8

    .line 270
    invoke-static {}, Lcom/google/googlenav/br;->d()V

    .line 313
    :goto_7
    return-void

    .line 274
    :cond_8
    new-instance v3, LW/b;

    invoke-direct {v3}, LW/b;-><init>()V

    .line 276
    :try_start_d
    invoke-virtual {v3, p1}, LW/b;->writeInt(I)V

    .line 277
    iget-boolean v2, p0, Lcom/google/googlenav/br;->a:Z

    invoke-virtual {v3, v2}, LW/b;->writeBoolean(Z)V

    .line 278
    iget-object v2, p0, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    if-eqz v2, :cond_96

    move v2, v0

    :goto_1a
    invoke-virtual {v3, v2}, LW/b;->writeBoolean(Z)V

    .line 279
    iget-object v2, p0, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    if-eqz v2, :cond_26

    .line 280
    iget-object v2, p0, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, LW/b;->writeUTF(Ljava/lang/String;)V

    .line 282
    :cond_26
    iget-object v2, p0, Lcom/google/googlenav/br;->c:Ljava/lang/String;

    if-eqz v2, :cond_98

    move v2, v0

    :goto_2b
    invoke-virtual {v3, v2}, LW/b;->writeBoolean(Z)V

    .line 283
    iget-object v2, p0, Lcom/google/googlenav/br;->c:Ljava/lang/String;

    if-eqz v2, :cond_37

    .line 284
    iget-object v2, p0, Lcom/google/googlenav/br;->c:Ljava/lang/String;

    invoke-virtual {v3, v2}, LW/b;->writeUTF(Ljava/lang/String;)V

    .line 286
    :cond_37
    iget-boolean v2, p0, Lcom/google/googlenav/br;->j:Z

    invoke-virtual {v3, v2}, LW/b;->writeBoolean(Z)V

    .line 287
    iget-object v2, p0, Lcom/google/googlenav/br;->d:Ljava/lang/String;

    if-eqz v2, :cond_9a

    move v2, v0

    :goto_41
    invoke-virtual {v3, v2}, LW/b;->writeBoolean(Z)V

    .line 288
    iget-object v2, p0, Lcom/google/googlenav/br;->d:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 289
    iget-object v2, p0, Lcom/google/googlenav/br;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, LW/b;->writeUTF(Ljava/lang/String;)V

    .line 291
    :cond_4d
    iget-object v2, p0, Lcom/google/googlenav/br;->e:Ljava/lang/String;

    if-eqz v2, :cond_9c

    move v2, v0

    :goto_52
    invoke-virtual {v3, v2}, LW/b;->writeBoolean(Z)V

    .line 292
    iget-object v2, p0, Lcom/google/googlenav/br;->e:Ljava/lang/String;

    if-eqz v2, :cond_5e

    .line 293
    iget-object v2, p0, Lcom/google/googlenav/br;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, LW/b;->writeUTF(Ljava/lang/String;)V

    .line 295
    :cond_5e
    iget v2, p0, Lcom/google/googlenav/br;->f:I

    invoke-virtual {v3, v2}, LW/b;->writeInt(I)V

    .line 296
    iget v2, p0, Lcom/google/googlenav/br;->g:I

    invoke-virtual {v3, v2}, LW/b;->writeInt(I)V

    .line 299
    iget-object v2, p0, Lcom/google/googlenav/br;->k:Ljava/lang/String;

    if-eqz v2, :cond_9e

    :goto_6c
    invoke-virtual {v3, v0}, LW/b;->writeBoolean(Z)V

    .line 300
    iget-object v0, p0, Lcom/google/googlenav/br;->k:Ljava/lang/String;

    if-eqz v0, :cond_78

    .line 301
    iget-object v0, p0, Lcom/google/googlenav/br;->k:Ljava/lang/String;

    invoke-virtual {v3, v0}, LW/b;->writeUTF(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_78} :catch_a0

    .line 311
    :cond_78
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "SPICY_BOWL_FEATURE_PROVIDER_OPT_IN_SETTING"

    invoke-virtual {v3}, LW/b;->a()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 312
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    goto/16 :goto_7

    :cond_96
    move v2, v1

    .line 278
    goto :goto_1a

    :cond_98
    move v2, v1

    .line 282
    goto :goto_2b

    :cond_9a
    move v2, v1

    .line 287
    goto :goto_41

    :cond_9c
    move v2, v1

    .line 291
    goto :goto_52

    :cond_9e
    move v0, v1

    .line 299
    goto :goto_6c

    .line 305
    :catch_a0
    move-exception v0

    goto/16 :goto_7
.end method

.method public static c()Lcom/google/googlenav/br;
    .registers 13

    .prologue
    const/4 v12, 0x0

    .line 205
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "SPICY_BOWL_FEATURE_PROVIDER_OPT_IN_SETTING"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v0

    .line 206
    if-nez v0, :cond_13

    move-object v0, v12

    .line 259
    :goto_12
    return-object v0

    .line 210
    :cond_13
    new-instance v9, LW/a;

    invoke-direct {v9, v0}, LW/a;-><init>([B)V

    .line 212
    :try_start_18
    invoke-virtual {v9}, LW/a;->readInt()I

    move-result v0

    .line 213
    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    .line 216
    invoke-static {}, Lcom/google/googlenav/br;->d()V

    move-object v0, v12

    .line 217
    goto :goto_12

    .line 219
    :cond_24
    invoke-virtual {v9}, LW/a;->readBoolean()Z

    move-result v1

    .line 220
    invoke-virtual {v9}, LW/a;->readBoolean()Z

    move-result v0

    .line 222
    if-eqz v0, :cond_79

    .line 223
    invoke-virtual {v9}, LW/a;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 225
    :goto_32
    invoke-virtual {v9}, LW/a;->readBoolean()Z

    move-result v0

    .line 227
    if-eqz v0, :cond_77

    .line 228
    invoke-virtual {v9}, LW/a;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 230
    :goto_3c
    invoke-virtual {v9}, LW/a;->readBoolean()Z

    move-result v4

    .line 231
    invoke-virtual {v9}, LW/a;->readBoolean()Z

    move-result v0

    .line 233
    if-eqz v0, :cond_75

    .line 234
    invoke-virtual {v9}, LW/a;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 236
    :goto_4a
    invoke-virtual {v9}, LW/a;->readBoolean()Z

    move-result v0

    .line 238
    if-eqz v0, :cond_73

    .line 239
    invoke-virtual {v9}, LW/a;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 241
    :goto_54
    invoke-virtual {v9}, LW/a;->readInt()I

    move-result v7

    .line 242
    invoke-virtual {v9}, LW/a;->readInt()I

    move-result v8

    .line 244
    invoke-virtual {v9}, LW/a;->readBoolean()Z

    move-result v0

    .line 246
    if-eqz v0, :cond_71

    .line 247
    invoke-virtual {v9}, LW/a;->readUTF()Ljava/lang/String;

    move-result-object v9

    .line 251
    :goto_66
    const/4 v10, 0x0

    .line 252
    const/4 v11, 0x0

    .line 254
    new-instance v0, Lcom/google/googlenav/br;

    invoke-direct/range {v0 .. v11}, Lcom/google/googlenav/br;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_6d} :catch_6e

    goto :goto_12

    .line 257
    :catch_6e
    move-exception v0

    move-object v0, v12

    .line 259
    goto :goto_12

    :cond_71
    move-object v9, v12

    goto :goto_66

    :cond_73
    move-object v6, v12

    goto :goto_54

    :cond_75
    move-object v5, v12

    goto :goto_4a

    :cond_77
    move-object v3, v12

    goto :goto_3c

    :cond_79
    move-object v2, v12

    goto :goto_32
.end method

.method public static d()V
    .registers 3

    .prologue
    .line 316
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "SPICY_BOWL_FEATURE_PROVIDER_OPT_IN_SETTING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 317
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 318
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/google/googlenav/br;->j:Z

    .line 77
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/googlenav/br;->j:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/google/googlenav/br;->g:I

    iget v1, p0, Lcom/google/googlenav/br;->f:I

    add-int/2addr v0, v1

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/googlenav/br;->a:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gplus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/br;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSpicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/br;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " needsMigration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/br;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
