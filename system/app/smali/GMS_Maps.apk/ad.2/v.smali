.class public Lad/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZIIILjava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;)V
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

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-boolean p1, p0, Lad/v;->a:Z

    .line 150
    iput p2, p0, Lad/v;->b:I

    .line 151
    iput p3, p0, Lad/v;->c:I

    .line 152
    iput p4, p0, Lad/v;->d:I

    .line 153
    iput-object p5, p0, Lad/v;->e:Ljava/lang/String;

    .line 154
    iput-object p6, p0, Lad/v;->f:Ljava/lang/String;

    .line 155
    iput-boolean p7, p0, Lad/v;->g:Z

    .line 156
    iput-wide p8, p0, Lad/v;->h:J

    .line 157
    iput-object p10, p0, Lad/v;->i:Ljava/lang/String;

    .line 158
    iput-object p11, p0, Lad/v;->j:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public static a(Lad/t;)Lad/v;
    .registers 2
    .parameter

    .prologue
    .line 168
    invoke-static {p0}, Lad/v;->b(Lad/t;)I

    move-result v0

    invoke-static {p0, v0}, Lad/v;->a(Lad/t;I)Lad/v;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lad/t;I)Lad/v;
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Lad/v;

    const/4 v1, 0x0

    invoke-static {p0}, Lad/v;->b(Lad/t;)I

    move-result v2

    invoke-virtual {p0}, Lad/t;->J()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p0}, Lad/t;->K()I

    move-result v4

    :goto_11
    invoke-virtual {p0}, Lad/t;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lad/t;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lad/t;->P()Z

    move-result v7

    invoke-virtual {p0}, Lad/t;->w()J

    move-result-wide v8

    invoke-virtual {p0}, Lad/t;->x()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lad/t;->y()Ljava/lang/String;

    move-result-object v11

    move v3, p1

    invoke-direct/range {v0 .. v11}, Lad/v;-><init>(ZIIILjava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2e
    const/4 v4, -0x1

    goto :goto_11
.end method

.method public static a(Lad/v;)Lad/v;
    .registers 13
    .parameter

    .prologue
    .line 162
    new-instance v0, Lad/v;

    const/4 v1, 0x0

    iget v2, p0, Lad/v;->b:I

    iget v3, p0, Lad/v;->b:I

    iget v4, p0, Lad/v;->d:I

    iget-object v5, p0, Lad/v;->e:Ljava/lang/String;

    iget-object v6, p0, Lad/v;->f:Ljava/lang/String;

    iget-boolean v7, p0, Lad/v;->g:Z

    iget-wide v8, p0, Lad/v;->h:J

    iget-object v10, p0, Lad/v;->i:Ljava/lang/String;

    iget-object v11, p0, Lad/v;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lad/v;-><init>(ZIIILjava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lad/v;
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 179
    new-instance v0, Lad/v;

    const/4 v1, 0x1

    const/16 v2, 0x66

    invoke-static {p0, v2}, Lad/v;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v2

    const/16 v3, 0x6c

    invoke-static {p0, v3}, Lad/v;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v4

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0xb

    invoke-static {p0, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x17

    invoke-static {p0, v3}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v7

    const/16 v3, 0xc

    invoke-static {p0, v3}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v8

    const/16 v3, 0xd

    invoke-static {p0, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v10

    const/16 v3, 0x1c

    invoke-static {p0, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v11

    move v3, p1

    invoke-direct/range {v0 .. v11}, Lad/v;-><init>(ZIIILjava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lad/t;)I
    .registers 2
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0}, Lad/t;->H()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lad/t;->I()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method
