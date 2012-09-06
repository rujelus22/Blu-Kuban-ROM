.class public Lcom/google/googlenav/friend/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lcom/google/common/collect/Q;

.field public static final b:Lcom/google/common/collect/Q;


# instance fields
.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/googlenav/friend/aI;

.field private final j:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 55
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/friend/aI;->b:Lcom/google/googlenav/friend/aI;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/bp;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bp;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/friend/aF;->a:Lcom/google/common/collect/Q;

    .line 62
    sget-object v0, Lcom/google/googlenav/friend/aF;->a:Lcom/google/common/collect/Q;

    invoke-interface {v0}, Lcom/google/common/collect/Q;->b()Lcom/google/common/collect/Q;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/friend/aF;->b:Lcom/google/common/collect/Q;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JIILcom/google/googlenav/friend/aI;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-wide p1, p0, Lcom/google/googlenav/friend/aF;->c:J

    .line 143
    iput-object p3, p0, Lcom/google/googlenav/friend/aF;->d:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/google/googlenav/friend/aF;->e:Ljava/lang/String;

    .line 145
    iput-wide p5, p0, Lcom/google/googlenav/friend/aF;->j:J

    .line 146
    iput-object p9, p0, Lcom/google/googlenav/friend/aF;->i:Lcom/google/googlenav/friend/aI;

    .line 147
    iput p7, p0, Lcom/google/googlenav/friend/aF;->f:I

    .line 148
    iput p8, p0, Lcom/google/googlenav/friend/aF;->g:I

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/friend/aF;->h:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/googlenav/friend/aI;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-wide p1, p0, Lcom/google/googlenav/friend/aF;->c:J

    .line 156
    iput-object p3, p0, Lcom/google/googlenav/friend/aF;->d:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/google/googlenav/friend/aF;->e:Ljava/lang/String;

    .line 158
    iput-wide p5, p0, Lcom/google/googlenav/friend/aF;->j:J

    .line 159
    iput-object p8, p0, Lcom/google/googlenav/friend/aF;->i:Lcom/google/googlenav/friend/aI;

    .line 160
    iput-object p7, p0, Lcom/google/googlenav/friend/aF;->h:Ljava/lang/String;

    .line 161
    const v0, 0x7f020293

    iput v0, p0, Lcom/google/googlenav/friend/aF;->f:I

    .line 162
    const v0, 0x7f0200b5

    iput v0, p0, Lcom/google/googlenav/friend/aF;->g:I

    .line 163
    return-void
.end method

.method private a(Lcom/google/googlenav/friend/aI;)I
    .registers 3
    .parameter

    .prologue
    .line 571
    sget-object v0, Lcom/google/googlenav/friend/aI;->b:Lcom/google/googlenav/friend/aI;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    if-ne p1, v0, :cond_a

    .line 572
    :cond_8
    const/4 v0, 0x0

    .line 574
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/aF;
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 240
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    const-wide v2, -0x35c1067b89114543L

    cmp-long v0, v0, v2

    if-nez v0, :cond_31

    .line 241
    invoke-static {}, Lcom/google/googlenav/friend/aF;->l()Lcom/google/googlenav/friend/aF;

    move-result-object v8

    .line 242
    new-instance v0, Lcom/google/googlenav/friend/aF;

    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v7}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v5

    invoke-virtual {v8}, Lcom/google/googlenav/friend/aF;->f()I

    move-result v7

    invoke-virtual {v8}, Lcom/google/googlenav/friend/aF;->g()I

    move-result v8

    sget-object v9, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/friend/aF;-><init>(JLjava/lang/String;Ljava/lang/String;JIILcom/google/googlenav/friend/aI;)V

    .line 259
    :goto_30
    return-object v0

    .line 249
    :cond_31
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    const-wide v2, -0x411daa5aff29b7b0L

    cmp-long v0, v0, v2

    if-nez v0, :cond_5e

    .line 250
    invoke-static {}, Lcom/google/googlenav/friend/aF;->k()Lcom/google/googlenav/friend/aF;

    move-result-object v8

    .line 251
    new-instance v0, Lcom/google/googlenav/friend/aF;

    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v7}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v5

    invoke-virtual {v8}, Lcom/google/googlenav/friend/aF;->f()I

    move-result v7

    invoke-virtual {v8}, Lcom/google/googlenav/friend/aF;->g()I

    move-result v8

    sget-object v9, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/friend/aF;-><init>(JLjava/lang/String;Ljava/lang/String;JIILcom/google/googlenav/friend/aI;)V

    goto :goto_30

    .line 259
    :cond_5e
    new-instance v0, Lcom/google/googlenav/friend/aF;

    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v7}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v5

    const v7, 0x7f020293

    const v8, 0x7f0200b5

    sget-object v9, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/friend/aF;-><init>(JLjava/lang/String;Ljava/lang/String;JIILcom/google/googlenav/friend/aI;)V

    goto :goto_30
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Lcom/google/googlenav/friend/aF;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 276
    new-instance v0, Lcom/google/googlenav/friend/aF;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, -0x1

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/friend/aF;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/googlenav/friend/aI;)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/friend/aF;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/friend/aI;->b:Lcom/google/googlenav/friend/aI;

    if-ne v2, v3, :cond_c

    move v0, v1

    .line 315
    :cond_b
    :goto_b
    return v0

    .line 307
    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    if-ne v2, v3, :cond_b

    .line 310
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aF;->a()J

    move-result-wide v2

    .line 311
    const-wide v4, -0x411daa5aff29b7b0L

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2a

    const-wide v4, -0x35c1067b89114543L

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    :cond_2a
    move v0, v1

    goto :goto_b
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;
    .registers 13
    .parameter

    .prologue
    .line 350
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v11

    .line 351
    if-nez p0, :cond_8

    move-object v0, v11

    .line 402
    :goto_7
    return-object v0

    .line 354
    :cond_8
    const/4 v0, 0x0

    move v10, v0

    :goto_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-ge v10, v0, :cond_c0

    .line 355
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 356
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 357
    packed-switch v0, :pswitch_data_c4

    .line 354
    :goto_1e
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_a

    .line 359
    :pswitch_22
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 360
    const/4 v1, 0x1

    if-ne v1, v0, :cond_32

    .line 361
    invoke-static {}, Lcom/google/googlenav/friend/aF;->i()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 363
    :cond_32
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3d

    .line 364
    invoke-static {}, Lcom/google/googlenav/friend/aF;->j()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 367
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized custom target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :pswitch_56
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    const-wide v4, -0x35c1067b89114543L

    cmp-long v0, v0, v4

    if-nez v0, :cond_6c

    .line 374
    invoke-static {}, Lcom/google/googlenav/friend/aF;->l()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 376
    :cond_6c
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    const-wide v4, -0x411daa5aff29b7b0L

    cmp-long v0, v0, v4

    if-nez v0, :cond_82

    .line 377
    invoke-static {}, Lcom/google/googlenav/friend/aF;->k()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 380
    :cond_82
    new-instance v0, Lcom/google/googlenav/friend/aF;

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const v7, 0x7f020293

    const v8, 0x7f0200b5

    sget-object v9, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/friend/aF;-><init>(JLjava/lang/String;Ljava/lang/String;JIILcom/google/googlenav/friend/aI;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 392
    :pswitch_a1
    new-instance v0, Lcom/google/googlenav/friend/aF;

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const v7, 0x7f020293

    const v8, 0x7f0200b5

    sget-object v9, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/friend/aF;-><init>(JLjava/lang/String;Ljava/lang/String;JIILcom/google/googlenav/friend/aI;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :cond_c0
    move-object v0, v11

    .line 402
    goto/16 :goto_7

    .line 357
    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_22
        :pswitch_56
        :pswitch_a1
    .end packed-switch
.end method

.method public static final i()Lcom/google/googlenav/friend/aF;
    .registers 1

    .prologue
    .line 322
    invoke-static {}, Lcom/google/googlenav/friend/aG;->a()Lcom/google/googlenav/friend/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aG;->b()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    return-object v0
.end method

.method public static final j()Lcom/google/googlenav/friend/aF;
    .registers 1

    .prologue
    .line 329
    invoke-static {}, Lcom/google/googlenav/friend/aG;->a()Lcom/google/googlenav/friend/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aG;->c()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    return-object v0
.end method

.method public static final k()Lcom/google/googlenav/friend/aF;
    .registers 1

    .prologue
    .line 336
    invoke-static {}, Lcom/google/googlenav/friend/aG;->a()Lcom/google/googlenav/friend/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aG;->e()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    return-object v0
.end method

.method public static final l()Lcom/google/googlenav/friend/aF;
    .registers 1

    .prologue
    .line 343
    invoke-static {}, Lcom/google/googlenav/friend/aG;->a()Lcom/google/googlenav/friend/aG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aG;->d()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/google/googlenav/friend/aF;->c:J

    return-wide v0
.end method

.method public b(Lcom/google/googlenav/friend/aF;)I
    .registers 5
    .parameter

    .prologue
    .line 533
    .line 536
    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/aF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 537
    :cond_8
    const/4 v0, 0x0

    .line 564
    :goto_9
    return v0

    .line 540
    :cond_a
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v0

    .line 541
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v1

    .line 544
    sget-object v2, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    if-ne v0, v2, :cond_27

    sget-object v2, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    if-ne v1, v2, :cond_27

    .line 546
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_9

    .line 547
    :cond_27
    sget-object v2, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    if-eq v0, v2, :cond_2f

    sget-object v2, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    if-ne v1, v2, :cond_39

    .line 549
    :cond_2f
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/aF;->a(Lcom/google/googlenav/friend/aI;)I

    move-result v0

    invoke-direct {p0, v1}, Lcom/google/googlenav/friend/aF;->a(Lcom/google/googlenav/friend/aI;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_9

    .line 553
    :cond_39
    invoke-static {p0}, Lcom/google/googlenav/friend/aF;->a(Lcom/google/googlenav/friend/aF;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {p1}, Lcom/google/googlenav/friend/aF;->a(Lcom/google/googlenav/friend/aF;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 554
    const/4 v0, -0x1

    goto :goto_9

    .line 555
    :cond_47
    invoke-static {p0}, Lcom/google/googlenav/friend/aF;->a(Lcom/google/googlenav/friend/aF;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {p1}, Lcom/google/googlenav/friend/aF;->a(Lcom/google/googlenav/friend/aF;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 556
    const/4 v0, 0x1

    goto :goto_9

    .line 557
    :cond_55
    invoke-static {p0}, Lcom/google/googlenav/friend/aF;->a(Lcom/google/googlenav/friend/aF;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {p1}, Lcom/google/googlenav/friend/aF;->a(Lcom/google/googlenav/friend/aF;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 559
    invoke-static {}, Lcom/google/googlenav/friend/aG;->a()Lcom/google/googlenav/friend/aG;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/aG;->a(Lcom/google/googlenav/friend/aF;)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/friend/aG;->a()Lcom/google/googlenav/friend/aG;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/friend/aG;->a(Lcom/google/googlenav/friend/aF;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_9

    .line 564
    :cond_73
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/googlenav/friend/aF;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/googlenav/friend/aF;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 28
    check-cast p1, Lcom/google/googlenav/friend/aF;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/aF;->b(Lcom/google/googlenav/friend/aF;)I

    move-result v0

    return v0
.end method

.method public d()Lcom/google/googlenav/friend/aI;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/googlenav/friend/aF;->i:Lcom/google/googlenav/friend/aI;

    return-object v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/google/googlenav/friend/aF;->j:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    if-ne p0, p1, :cond_5

    .line 182
    :cond_4
    :goto_4
    return v0

    .line 175
    :cond_5
    instance-of v2, p1, Lcom/google/googlenav/friend/aF;

    if-nez v2, :cond_b

    move v0, v1

    .line 176
    goto :goto_4

    .line 180
    :cond_b
    check-cast p1, Lcom/google/googlenav/friend/aF;

    .line 182
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aF;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/friend/aI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public f()I
    .registers 2

    .prologue
    .line 223
    iget v0, p0, Lcom/google/googlenav/friend/aF;->f:I

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lcom/google/googlenav/friend/aF;->g:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/googlenav/friend/aF;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 187
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aF;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/K;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PostTarget:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/aF;->i:Lcom/google/googlenav/friend/aI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/googlenav/friend/aF;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/aF;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
