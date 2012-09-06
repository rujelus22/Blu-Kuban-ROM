.class public Lar/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lar/d;

.field private static k:Lar/c;

.field private static l:Z


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:J

.field private j:Lao/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lar/c;->l:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lar/c;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lao/b;->e()Lao/b;

    move-result-object v0

    iput-object v0, p0, Lar/c;->j:Lao/b;

    .line 141
    iput-object p1, p0, Lar/c;->b:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lar/c;->c:Ljava/lang/String;

    .line 143
    iput p3, p0, Lar/c;->d:I

    .line 144
    iput p4, p0, Lar/c;->e:I

    .line 145
    iput p5, p0, Lar/c;->f:I

    .line 147
    iput-object p6, p0, Lar/c;->g:Ljava/lang/String;

    .line 148
    iput-object p7, p0, Lar/c;->h:Ljava/lang/String;

    .line 150
    iput-wide p8, p0, Lar/c;->i:J

    .line 151
    return-void
.end method

.method public static a([Lar/c;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_1e

    .line 289
    if-eqz v0, :cond_12

    .line 290
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_12
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 294
    :cond_1e
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lar/d;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Lar/c;->l:Z

    .line 174
    if-nez p0, :cond_8

    .line 176
    invoke-static {}, Lar/c;->b()V

    .line 178
    :cond_8
    sput-object p0, Lar/c;->a:Lar/d;

    .line 183
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 184
    invoke-static {}, Lar/c;->c()Lar/c;

    .line 186
    :cond_13
    return-void
.end method

.method public static a(Lar/e;)V
    .registers 3
    .parameter

    .prologue
    .line 342
    sget-boolean v0, Lar/c;->l:Z

    if-nez v0, :cond_c

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wifi info must have been configured to call this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_c
    sget-object v0, Lar/c;->a:Lar/d;

    invoke-interface {v0, p0}, Lar/d;->a(Lar/e;)V

    .line 346
    return-void
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 154
    sget-boolean v0, Lar/c;->l:Z

    return v0
.end method

.method static b()V
    .registers 1

    .prologue
    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lar/c;->l:Z

    .line 159
    return-void
.end method

.method public static c()Lar/c;
    .registers 1

    .prologue
    .line 189
    sget-object v0, Lar/c;->a:Lar/d;

    if-nez v0, :cond_9

    .line 190
    invoke-static {}, Lar/c;->e()Lar/c;

    move-result-object v0

    .line 192
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lar/c;->a:Lar/d;

    invoke-interface {v0}, Lar/d;->a()Lar/c;

    move-result-object v0

    goto :goto_8
.end method

.method public static d()[Lar/c;
    .registers 3

    .prologue
    .line 196
    sget-object v0, Lar/c;->a:Lar/d;

    if-nez v0, :cond_f

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [Lar/c;

    const/4 v1, 0x0

    invoke-static {}, Lar/c;->e()Lar/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 200
    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lar/c;->a:Lar/d;

    invoke-interface {v0}, Lar/d;->b()[Lar/c;

    move-result-object v0

    goto :goto_e
.end method

.method public static e()Lar/c;
    .registers 8

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 204
    sget-object v0, Lar/c;->k:Lar/c;

    if-nez v0, :cond_12

    .line 205
    new-instance v0, Lar/c;

    move-object v2, v1

    move v4, v3

    move v5, v3

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lar/c;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lar/c;->k:Lar/c;

    .line 208
    :cond_12
    sget-object v0, Lar/c;->k:Lar/c;

    return-object v0
.end method

.method public static k()Z
    .registers 2

    .prologue
    .line 358
    sget-boolean v0, Lar/c;->l:Z

    if-eqz v0, :cond_8

    sget-object v0, Lar/c;->a:Lar/d;

    if-nez v0, :cond_10

    .line 359
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wifi info must have been configured to call this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_10
    sget-object v0, Lar/c;->a:Lar/d;

    invoke-interface {v0}, Lar/d;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    if-ne p0, p1, :cond_5

    .line 233
    :cond_4
    :goto_4
    return v0

    .line 228
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 229
    goto :goto_4

    .line 232
    :cond_13
    check-cast p1, Lar/c;

    .line 233
    iget-object v2, p0, Lar/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lar/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lar/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lar/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lar/c;->j:Lao/b;

    iget-object v3, p1, Lar/c;->j:Lao/b;

    invoke-virtual {v2, v3}, Lao/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_33
    move v0, v1

    goto :goto_4
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lar/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lar/c;->b:Ljava/lang/String;

    const-string v1, "00-00-00-00-00-00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lar/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .registers 3

    .prologue
    .line 266
    iget-wide v0, p0, Lar/c;->i:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lar/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lar/c;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget-object v1, p0, Lar/c;->j:Lao/b;

    invoke-virtual {v1}, Lao/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 303
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbf/R;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 305
    const/4 v0, 0x1

    .line 307
    iget-object v3, p0, Lar/c;->h:Ljava/lang/String;

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 308
    const/4 v0, 0x2

    iget-object v3, p0, Lar/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v0, v1

    .line 311
    :cond_18
    iget v3, p0, Lar/c;->e:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 312
    const/4 v0, 0x3

    iget v3, p0, Lar/c;->e:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 316
    :goto_23
    if-eqz v1, :cond_27

    const/4 v0, 0x0

    :goto_26
    return-object v0

    :cond_27
    move-object v0, v2

    goto :goto_26

    :cond_29
    move v1, v0

    goto :goto_23
.end method

.method public j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 321
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbf/aD;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 322
    iget-wide v1, p0, Lar/c;->i:J

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 323
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbf/aD;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 324
    iget-object v2, p0, Lar/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 325
    iget-object v2, p0, Lar/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 326
    const/4 v2, 0x4

    iget v3, p0, Lar/c;->f:I

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 327
    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 328
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiInfo[bssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lar/c;->i:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
