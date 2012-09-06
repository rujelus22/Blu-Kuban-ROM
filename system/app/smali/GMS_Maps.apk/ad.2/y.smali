.class public Lad/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field private static final b:Lad/y;


# instance fields
.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lat/B;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/googlenav/ai;

.field private final j:Ln/B;

.field private final k:Ljava/lang/Integer;

.field private final l:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-static {v0, v0}, Lad/y;->b(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    sput-object v0, Lad/y;->b:Lad/y;

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lad/y;->a:Z

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 13
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
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lad/y;->c:I

    .line 95
    iput-object p2, p0, Lad/y;->d:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lad/y;->e:Lat/B;

    .line 97
    iput-object p4, p0, Lad/y;->f:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Lad/y;->g:Ljava/lang/String;

    .line 99
    iput-object p6, p0, Lad/y;->h:Ljava/lang/String;

    .line 100
    iput-object p7, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    .line 104
    if-nez p8, :cond_29

    if-eqz p7, :cond_29

    .line 105
    invoke-virtual {p7}, Lcom/google/googlenav/ai;->b()Ljava/util/List;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_29

    .line 107
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    move-object p8, v0

    .line 110
    :cond_29
    iput-object p8, p0, Lad/y;->j:Ln/B;

    .line 111
    iput-object p9, p0, Lad/y;->k:Ljava/lang/Integer;

    .line 112
    iput-object p10, p0, Lad/y;->l:Ljava/lang/Integer;

    .line 113
    return-void
.end method

.method public static a()Lad/y;
    .registers 1

    .prologue
    .line 175
    sget-object v0, Lad/y;->b:Lad/y;

    return-object v0
.end method

.method private static a(ILcom/google/googlenav/ai;)Lad/y;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 247
    new-instance v0, Lad/y;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->X()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bq()Ljava/lang/String;

    move-result-object v6

    move v1, p0

    move-object v7, p1

    move-object v9, v8

    move-object v10, v8

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static a(ILcom/google/googlenav/ai;Ljava/lang/Integer;Ljava/lang/Integer;)Lad/y;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    new-instance v0, Lad/y;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->X()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bq()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move v1, p0

    move-object v7, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Lad/y;Ljava/lang/String;Ljava/lang/String;)Lad/y;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 274
    new-instance v0, Lad/y;

    iget v1, p0, Lad/y;->c:I

    iget-object v2, p0, Lad/y;->d:Ljava/lang/String;

    iget-object v3, p0, Lad/y;->e:Lat/B;

    iget-object v4, p0, Lad/y;->f:Ljava/lang/String;

    iget-object v7, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    invoke-virtual {p0}, Lad/y;->l()Ln/B;

    move-result-object v8

    move-object v5, p1

    move-object v6, p2

    move-object v10, v9

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Lad/y;Ln/B;)Lad/y;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 283
    new-instance v0, Lad/y;

    iget v1, p0, Lad/y;->c:I

    iget-object v2, p0, Lad/y;->d:Ljava/lang/String;

    iget-object v3, p0, Lad/y;->e:Lat/B;

    iget-object v4, p0, Lad/y;->f:Ljava/lang/String;

    iget-object v5, p0, Lad/y;->g:Ljava/lang/String;

    iget-object v6, p0, Lad/y;->h:Ljava/lang/String;

    iget-object v7, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    move-object v8, p1

    move-object v10, v9

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Lat/B;Ljava/lang/String;Ljava/lang/String;Ln/B;)Lad/y;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 143
    new-instance v0, Lad/y;

    const/4 v1, 0x1

    move-object v2, p2

    move-object v3, p0

    move-object v5, p1

    move-object v6, v4

    move-object v7, v4

    move-object v8, p3

    move-object v9, v4

    move-object v10, v4

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Lat/B;Ljava/lang/String;Ln/B;)Lad/y;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 134
    new-instance v0, Lad/y;

    const/4 v1, 0x1

    move-object v3, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, v2

    move-object v7, v2

    move-object v8, p2

    move-object v9, v2

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Lat/B;Ln/B;)Lad/y;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lad/y;->a(Lat/B;Ljava/lang/String;Ln/B;)Lad/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ai;)Lad/y;
    .registers 2
    .parameter

    .prologue
    .line 190
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lad/y;->a(ILcom/google/googlenav/ai;)Lad/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ai;II)Lad/y;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lad/y;->a(ILcom/google/googlenav/ai;Ljava/lang/Integer;Ljava/lang/Integer;)Lad/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;
    .registers 2
    .parameter

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lad/y;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v1, 0x3

    const/4 v5, 0x0

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 211
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lat/C;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v3

    .line 213
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 217
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 218
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v7

    .line 221
    :goto_2b
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 222
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Ln/B;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/B;

    move-result-object v8

    .line 224
    :goto_39
    new-instance v0, Lad/y;

    move-object v9, v5

    move-object v10, v5

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_41
    move-object v8, v5

    goto :goto_39

    :cond_43
    move-object v7, v5

    goto :goto_2b
.end method

.method public static a(Lcom/google/googlenav/friend/aK;)Lad/y;
    .registers 12
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 203
    new-instance v0, Lad/y;

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/googlenav/friend/aK;->e()Ln/B;

    move-result-object v8

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    move-object v9, v2

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lad/y;
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 116
    new-instance v0, Lad/y;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lat/B;)Lad/y;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 264
    new-instance v0, Lad/y;

    const/4 v1, 0x5

    move-object v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    move-object v10, v4

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln/B;)Lad/y;
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    new-instance v0, Lad/y;

    const/4 v1, 0x3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Lad/y;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 563
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aY;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 565
    if-nez p0, :cond_a

    .line 588
    :cond_9
    :goto_9
    return-object v0

    .line 569
    :cond_a
    invoke-virtual {p0}, Lad/y;->f()Lat/B;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 570
    const/4 v1, 0x2

    invoke-virtual {p0}, Lad/y;->f()Lat/B;

    move-result-object v2

    invoke-static {v2}, Lat/C;->d(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 575
    :cond_1c
    invoke-virtual {p0}, Lad/y;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 576
    const/4 v1, 0x1

    invoke-virtual {p0}, Lad/y;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 579
    :cond_2e
    invoke-virtual {p0}, Lad/y;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 580
    const/4 v1, 0x3

    invoke-virtual {p0}, Lad/y;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 584
    :cond_40
    invoke-virtual {p0}, Lad/y;->l()Ln/B;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 585
    const/16 v1, 0x8

    invoke-virtual {p0}, Lad/y;->l()Ln/B;

    move-result-object v2

    invoke-virtual {v2}, Ln/B;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_9
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 481
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 482
    const/4 v0, 0x1

    .line 489
    :goto_5
    return v0

    .line 485
    :cond_6
    if-nez p0, :cond_a

    .line 486
    const/4 v0, 0x0

    goto :goto_5

    .line 489
    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static b(Lat/B;Ln/B;)Lad/y;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 154
    new-instance v0, Lad/y;

    const/4 v1, 0x2

    move-object v3, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, p1

    move-object v9, v2

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static b(Lcom/google/googlenav/ai;)Lad/y;
    .registers 2
    .parameter

    .prologue
    .line 234
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lad/y;->a(ILcom/google/googlenav/ai;)Lad/y;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v6, 0x0

    .line 295
    const/4 v1, 0x0

    .line 298
    if-eqz p0, :cond_4a

    .line 299
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 300
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 301
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 302
    new-instance v7, Lcom/google/googlenav/ai;

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/google/googlenav/ai;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 305
    :goto_20
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 308
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lat/C;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v3

    .line 311
    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 312
    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Ln/B;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/B;

    move-result-object v8

    .line 315
    :goto_3e
    new-instance v0, Lad/y;

    move-object v9, v6

    move-object v10, v6

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_46
    move-object v8, v6

    goto :goto_3e

    :cond_48
    move-object v7, v6

    goto :goto_20

    :cond_4a
    move-object v7, v6

    move-object v5, v6

    goto :goto_20
.end method

.method public static c(Lcom/google/googlenav/ai;)Lad/y;
    .registers 2
    .parameter

    .prologue
    .line 260
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lad/y;->a(ILcom/google/googlenav/ai;)Lad/y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lat/B;)Lad/y;
    .registers 13
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 327
    new-instance v0, Lad/y;

    iget v1, p0, Lad/y;->c:I

    iget-object v2, p0, Lad/y;->d:Ljava/lang/String;

    iget-object v4, p0, Lad/y;->f:Ljava/lang/String;

    iget-object v5, p0, Lad/y;->g:Ljava/lang/String;

    iget-object v6, p0, Lad/y;->h:Ljava/lang/String;

    iget-object v8, p0, Lad/y;->j:Ln/B;

    move-object v3, p1

    move-object v9, v7

    move-object v10, v7

    invoke-direct/range {v0 .. v10}, Lad/y;-><init>(ILjava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ai;Ln/B;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 452
    if-ne p0, p1, :cond_5

    .line 473
    :cond_4
    :goto_4
    return v0

    .line 456
    :cond_5
    instance-of v2, p1, Lad/y;

    if-nez v2, :cond_b

    move v0, v1

    .line 457
    goto :goto_4

    .line 460
    :cond_b
    check-cast p1, Lad/y;

    .line 464
    iget-object v2, p0, Lad/y;->j:Ln/B;

    iget-object v3, p1, Lad/y;->j:Ln/B;

    invoke-static {v2, v3}, Lad/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    .line 465
    goto :goto_4

    .line 469
    :cond_19
    iget-object v2, p0, Lad/y;->e:Lat/B;

    if-eqz v2, :cond_31

    iget-object v2, p1, Lad/y;->e:Lat/B;

    if-eqz v2, :cond_31

    .line 470
    iget-object v2, p0, Lad/y;->e:Lat/B;

    iget-object v3, p1, Lad/y;->e:Lat/B;

    invoke-virtual {v2, v3}, Lat/B;->a(Lat/B;)J

    move-result-wide v2

    const-wide/16 v4, 0x19

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 473
    :cond_31
    iget-object v0, p0, Lad/y;->d:Ljava/lang/String;

    iget-object v1, p1, Lad/y;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lad/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 336
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 338
    const/4 v1, 0x1

    iget v2, p0, Lad/y;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 339
    iget-object v1, p0, Lad/y;->g:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 340
    const/4 v1, 0x2

    iget-object v2, p0, Lad/y;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 342
    :cond_1b
    iget-object v1, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bK()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 343
    const/4 v1, 0x3

    iget-object v2, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 345
    :cond_31
    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lad/y;->p()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lad/y;->q()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lad/y;->u()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lad/y;->r()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 365
    :goto_19
    return v0

    .line 356
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public d()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Lad/y;->c:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lad/y;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    if-ne p0, p1, :cond_5

    .line 504
    :cond_4
    :goto_4
    return v0

    .line 498
    :cond_5
    instance-of v2, p1, Lad/y;

    if-nez v2, :cond_b

    move v0, v1

    .line 499
    goto :goto_4

    .line 502
    :cond_b
    check-cast p1, Lad/y;

    .line 504
    iget v2, p0, Lad/y;->c:I

    iget v3, p1, Lad/y;->c:I

    if-ne v2, v3, :cond_59

    iget-object v2, p0, Lad/y;->d:Ljava/lang/String;

    iget-object v3, p1, Lad/y;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lad/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lad/y;->e:Lat/B;

    iget-object v3, p1, Lad/y;->e:Lat/B;

    invoke-static {v2, v3}, Lad/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lad/y;->f:Ljava/lang/String;

    iget-object v3, p1, Lad/y;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lad/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lad/y;->g:Ljava/lang/String;

    iget-object v3, p1, Lad/y;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lad/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lad/y;->h:Ljava/lang/String;

    iget-object v3, p1, Lad/y;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lad/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    iget-object v3, p1, Lad/y;->i:Lcom/google/googlenav/ai;

    invoke-static {v2, v3}, Lad/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lad/y;->j:Ln/B;

    iget-object v3, p1, Lad/y;->j:Ln/B;

    invoke-static {v2, v3}, Lad/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_59
    move v0, v1

    goto :goto_4
.end method

.method public f()Lat/B;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lad/y;->e:Lat/B;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lad/y;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lad/y;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 516
    .line 517
    iget v0, p0, Lad/y;->c:I

    add-int/lit8 v0, v0, 0x1f

    .line 518
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lad/y;->d:Ljava/lang/String;

    if-nez v0, :cond_3d

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    .line 519
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lad/y;->e:Lat/B;

    if-nez v0, :cond_44

    move v0, v1

    :goto_14
    add-int/2addr v0, v2

    .line 520
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lad/y;->f:Ljava/lang/String;

    if-nez v0, :cond_4b

    move v0, v1

    :goto_1c
    add-int/2addr v0, v2

    .line 521
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lad/y;->g:Ljava/lang/String;

    if-nez v0, :cond_52

    move v0, v1

    :goto_24
    add-int/2addr v0, v2

    .line 522
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lad/y;->h:Ljava/lang/String;

    if-nez v0, :cond_59

    move v0, v1

    :goto_2c
    add-int/2addr v0, v2

    .line 524
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    if-nez v0, :cond_60

    move v0, v1

    :goto_34
    add-int/2addr v0, v2

    .line 525
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lad/y;->j:Ln/B;

    if-nez v2, :cond_67

    :goto_3b
    add-int/2addr v0, v1

    .line 526
    return v0

    .line 518
    :cond_3d
    iget-object v0, p0, Lad/y;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_c

    .line 519
    :cond_44
    iget-object v0, p0, Lad/y;->e:Lat/B;

    invoke-virtual {v0}, Lat/B;->hashCode()I

    move-result v0

    goto :goto_14

    .line 520
    :cond_4b
    iget-object v0, p0, Lad/y;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1c

    .line 521
    :cond_52
    iget-object v0, p0, Lad/y;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_24

    .line 522
    :cond_59
    iget-object v0, p0, Lad/y;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2c

    .line 524
    :cond_60
    iget-object v0, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_34

    .line 525
    :cond_67
    iget-object v1, p0, Lad/y;->j:Ln/B;

    invoke-virtual {v1}, Ln/B;->hashCode()I

    move-result v1

    goto :goto_3b
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lad/y;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/google/googlenav/ai;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lad/y;->j()Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ln/B;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lad/y;->j:Ln/B;

    return-object v0
.end method

.method public m()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lad/y;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public n()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lad/y;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 413
    iget v0, p0, Lad/y;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public p()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 417
    iget v1, p0, Lad/y;->c:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public q()Z
    .registers 3

    .prologue
    .line 421
    iget v0, p0, Lad/y;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public r()Z
    .registers 3

    .prologue
    .line 429
    iget v0, p0, Lad/y;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public s()Z
    .registers 3

    .prologue
    .line 433
    iget v0, p0, Lad/y;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public t()Z
    .registers 3

    .prologue
    .line 437
    iget v0, p0, Lad/y;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    const-string v1, "Waypoint {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lad/y;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-object v1, p0, Lad/y;->d:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", query=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lad/y;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_44
    iget-object v1, p0, Lad/y;->e:Lat/B;

    if-eqz v1, :cond_60

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", coordinates="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lad/y;->e:Lat/B;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_60
    iget-object v1, p0, Lad/y;->f:Ljava/lang/String;

    if-eqz v1, :cond_82

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", fingerprint=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lad/y;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_82
    iget-object v1, p0, Lad/y;->g:Ljava/lang/String;

    if-eqz v1, :cond_a4

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lad/y;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_a4
    iget-object v1, p0, Lad/y;->h:Ljava/lang/String;

    if-eqz v1, :cond_c6

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", streetViewPanoramaId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lad/y;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_c6
    iget-object v1, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    if-eqz v1, :cond_e8

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", placemark=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lad/y;->i:Lcom/google/googlenav/ai;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_e8
    iget-object v1, p0, Lad/y;->j:Ln/B;

    if-eqz v1, :cond_10a

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", level=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lad/y;->j:Ln/B;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_10a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 3

    .prologue
    .line 441
    iget v0, p0, Lad/y;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public v()Ljava/lang/String;
    .registers 4

    .prologue
    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lad/y;->j()Lcom/google/googlenav/ai;

    move-result-object v1

    .line 597
    if-eqz v1, :cond_27

    .line 598
    invoke-virtual {v1}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v2

    .line 599
    if-eqz v2, :cond_1f

    .line 600
    invoke-virtual {v1}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 602
    :cond_1f
    invoke-virtual {p0}, Lad/y;->f()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 605
    :cond_27
    invoke-virtual {p0}, Lad/y;->f()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1a
.end method
