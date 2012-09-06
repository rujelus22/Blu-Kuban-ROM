.class public Lcom/google/googlenav/o;
.super Lac/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/googlenav/h;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/r;

.field private final e:J

.field private f:Lcom/google/googlenav/a;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/r;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0}, Lac/b;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/google/googlenav/o;->b:Lcom/google/googlenav/h;

    .line 167
    iput-object p2, p0, Lcom/google/googlenav/o;->c:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lcom/google/googlenav/o;->a:Ljava/util/List;

    .line 169
    iput-object p4, p0, Lcom/google/googlenav/o;->d:Lcom/google/googlenav/r;

    .line 172
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/o;->e:J

    .line 173
    return-void
.end method

.method private declared-synchronized n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/o;->h:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 177
    const/16 v0, 0x65

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 197
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/hV;->u:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 200
    invoke-virtual {p0}, Lcom/google/googlenav/o;->i()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 203
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 206
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 207
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 245
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hV;->v:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 249
    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 250
    if-nez v0, :cond_25

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/google/googlenav/o;->g:Z

    .line 252
    iget-boolean v0, p0, Lcom/google/googlenav/o;->g:Z

    if-eqz v0, :cond_24

    .line 253
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 254
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 256
    new-instance v2, Lcom/google/googlenav/a;

    invoke-direct {v2, v0}, Lcom/google/googlenav/a;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v2, p0, Lcom/google/googlenav/o;->f:Lcom/google/googlenav/a;

    .line 263
    :cond_24
    return v1

    .line 250
    :cond_25
    const/4 v0, 0x0

    goto :goto_e
.end method

.method i()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 215
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/t;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 216
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 219
    iget-object v1, p0, Lcom/google/googlenav/o;->c:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 220
    iget-object v1, p0, Lcom/google/googlenav/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 225
    :cond_19
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlenav/o;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 228
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/o;->b:Lcom/google/googlenav/h;

    invoke-virtual {v2}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 231
    iget-object v1, p0, Lcom/google/googlenav/o;->a:Ljava/util/List;

    if-eqz v1, :cond_3c

    .line 232
    iget-object v1, p0, Lcom/google/googlenav/o;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/q;->a(Ljava/util/List;)Lcom/google/googlenav/q;

    move-result-object v1

    .line 233
    const/16 v2, 0xa

    invoke-virtual {v1}, Lcom/google/googlenav/q;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 237
    :cond_3c
    iget-object v1, p0, Lcom/google/googlenav/o;->h:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 238
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/googlenav/o;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 240
    :cond_4c
    return-object v0
.end method

.method protected j()Lcom/google/googlenav/s;
    .registers 3

    .prologue
    .line 308
    new-instance v0, Lcom/google/googlenav/s;

    invoke-direct {v0}, Lcom/google/googlenav/s;-><init>()V

    .line 309
    iget-boolean v1, p0, Lcom/google/googlenav/o;->g:Z

    iput-boolean v1, v0, Lcom/google/googlenav/s;->a:Z

    .line 310
    iget-object v1, p0, Lcom/google/googlenav/o;->f:Lcom/google/googlenav/a;

    iput-object v1, v0, Lcom/google/googlenav/s;->b:Lcom/google/googlenav/a;

    .line 311
    iget-object v1, p0, Lcom/google/googlenav/o;->b:Lcom/google/googlenav/h;

    iput-object v1, v0, Lcom/google/googlenav/s;->c:Lcom/google/googlenav/h;

    .line 312
    iget-object v1, p0, Lcom/google/googlenav/o;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/google/googlenav/s;->d:Ljava/util/List;

    .line 313
    return-object v0
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic k()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/googlenav/o;->j()Lcom/google/googlenav/s;

    move-result-object v0

    return-object v0
.end method

.method public l_()V
    .registers 6

    .prologue
    .line 268
    invoke-super {p0}, Lac/b;->l_()V

    .line 269
    iget-object v0, p0, Lcom/google/googlenav/o;->d:Lcom/google/googlenav/r;

    if-eqz v0, :cond_14

    .line 270
    iget-object v0, p0, Lcom/google/googlenav/o;->d:Lcom/google/googlenav/r;

    iget-boolean v1, p0, Lcom/google/googlenav/o;->g:Z

    iget-object v2, p0, Lcom/google/googlenav/o;->f:Lcom/google/googlenav/a;

    iget-object v3, p0, Lcom/google/googlenav/o;->b:Lcom/google/googlenav/h;

    iget-object v4, p0, Lcom/google/googlenav/o;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/googlenav/r;->a(ZLcom/google/googlenav/a;Lcom/google/googlenav/h;Ljava/util/List;)V

    .line 272
    :cond_14
    return-void
.end method
