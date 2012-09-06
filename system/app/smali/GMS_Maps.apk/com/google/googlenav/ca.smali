.class public Lcom/google/googlenav/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:[Lcom/google/googlenav/ab;

.field private static final e:Lcom/google/googlenav/cg;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:J

.field protected final c:Ljava/util/List;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lat/B;

.field private i:J

.field private j:Z

.field private final k:Ljava/util/Set;

.field private l:[Lcom/google/googlenav/ca;

.field private m:[Lcom/google/googlenav/ck;

.field private n:Lcom/google/googlenav/cj;

.field private o:Lcom/google/googlenav/cl;

.field private p:Z

.field private q:Z

.field private r:[Lcom/google/googlenav/ab;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlenav/ab;

    sput-object v0, Lcom/google/googlenav/ca;->d:[Lcom/google/googlenav/ab;

    .line 73
    new-instance v0, Lcom/google/googlenav/cg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/cg;-><init>(Lcom/google/googlenav/cb;)V

    sput-object v0, Lcom/google/googlenav/ca;->e:Lcom/google/googlenav/cg;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 132
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hz;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    sget-object v1, Lcom/google/googlenav/ca;->e:Lcom/google/googlenav/cg;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ca;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBufType;Lcom/google/googlenav/ce;)V

    .line 133
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBufType;Lcom/google/googlenav/ce;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v4, p0, Lcom/google/googlenav/ca;->f:I

    .line 83
    iput-wide v5, p0, Lcom/google/googlenav/ca;->i:J

    .line 86
    iput-boolean v1, p0, Lcom/google/googlenav/ca;->j:Z

    .line 88
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    .line 90
    invoke-static {}, Lcom/google/common/collect/dm;->c()Ljava/util/TreeSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ca;->k:Ljava/util/Set;

    .line 93
    new-array v2, v1, [Lcom/google/googlenav/ck;

    iput-object v2, p0, Lcom/google/googlenav/ca;->m:[Lcom/google/googlenav/ck;

    .line 96
    iput-object v0, p0, Lcom/google/googlenav/ca;->o:Lcom/google/googlenav/cl;

    .line 112
    sget-object v2, Lcom/google/googlenav/ca;->d:[Lcom/google/googlenav/ab;

    iput-object v2, p0, Lcom/google/googlenav/ca;->r:[Lcom/google/googlenav/ab;

    .line 123
    iput v4, p0, Lcom/google/googlenav/ca;->s:I

    .line 143
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/hz;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-ne p2, v2, :cond_53

    .line 144
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ca;->a:Ljava/lang/String;

    .line 145
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ca;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ce;)V

    :goto_34
    move v0, v1

    .line 154
    :goto_35
    invoke-virtual {p0}, Lcom/google/googlenav/ca;->k()I

    move-result v1

    if-ge v0, v1, :cond_81

    .line 155
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ca;->a(I)Lcom/google/googlenav/cn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/cn;->i()J

    move-result-wide v1

    .line 156
    cmp-long v3, v1, v5

    if-eqz v3, :cond_50

    .line 157
    iget-object v3, p0, Lcom/google/googlenav/ca;->k:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 146
    :cond_53
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/hz;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-ne p2, v2, :cond_68

    .line 147
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 148
    if-nez v2, :cond_63

    :goto_5d
    iput-object v0, p0, Lcom/google/googlenav/ca;->a:Ljava/lang/String;

    .line 150
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/ca;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ce;)V

    goto :goto_34

    .line 148
    :cond_63
    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    .line 152
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ProtoBufType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_81
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ca;->b:J

    .line 161
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ca;)Lcom/google/googlenav/cl;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/googlenav/ca;->o:Lcom/google/googlenav/cl;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ca;Lcom/google/googlenav/cl;)Lcom/google/googlenav/cl;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/googlenav/ca;->o:Lcom/google/googlenav/cl;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ca;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/google/googlenav/ca;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ca;)Lcom/google/googlenav/cj;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/googlenav/ca;->n:Lcom/google/googlenav/cj;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x4

    const/4 v7, 0x0

    .line 349
    const/4 v0, 0x7

    invoke-static {p1, v0, v7}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    .line 355
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 358
    invoke-virtual {p1, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v9

    move v8, v7

    .line 359
    :goto_f
    if-ge v8, v9, :cond_60

    .line 360
    new-instance v3, Lcom/google/googlenav/cn;

    invoke-virtual {p1, v11, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v3, v0, p0, v1}, Lcom/google/googlenav/cn;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ca;Lcom/google/googlenav/ce;)V

    .line 362
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->g()Ljava/lang/String;

    move-result-object v1

    .line 363
    if-eqz v1, :cond_58

    move v6, v7

    .line 370
    :goto_22
    iget-object v0, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_58

    .line 371
    iget-object v0, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/googlenav/cn;

    .line 372
    invoke-virtual {v4}, Lcom/google/googlenav/cn;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 375
    iget-object v10, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    new-instance v0, Lcom/google/googlenav/cn;

    invoke-static {v4}, Lcom/google/googlenav/cn;->a(Lcom/google/googlenav/cn;)Lcom/google/googlenav/cm;

    move-result-object v1

    invoke-static {v3}, Lcom/google/googlenav/cn;->b(Lcom/google/googlenav/cn;)[Lcom/google/googlenav/cp;

    move-result-object v2

    invoke-static {v3}, Lcom/google/googlenav/cn;->c(Lcom/google/googlenav/cn;)Z

    move-result v3

    invoke-static {v4}, Lcom/google/googlenav/cn;->d(Lcom/google/googlenav/cn;)[I

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/cn;-><init>(Lcom/google/googlenav/cm;[Lcom/google/googlenav/cp;ZLcom/google/googlenav/ca;[I)V

    invoke-interface {v10, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_58
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_f

    .line 370
    :cond_5c
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_22

    .line 383
    :cond_60
    return-void
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ce;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 226
    const/4 v0, 0x7

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0, p2}, Lcom/google/googlenav/ca;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ce;)V

    .line 234
    iget-object v0, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    invoke-virtual {p1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    move v0, v1

    .line 236
    :goto_1b
    if-ge v0, v2, :cond_2e

    .line 237
    iget-object v3, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    new-instance v4, Lcom/google/googlenav/cn;

    invoke-virtual {p1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-direct {v4, v5, p0, p2}, Lcom/google/googlenav/cn;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ca;Lcom/google/googlenav/ce;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 241
    :cond_2e
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/ca;

    iput-object v0, p0, Lcom/google/googlenav/ca;->l:[Lcom/google/googlenav/ca;

    move v0, v1

    .line 242
    :goto_37
    iget-object v2, p0, Lcom/google/googlenav/ca;->l:[Lcom/google/googlenav/ca;

    array-length v2, v2

    if-ge v0, v2, :cond_4c

    .line 243
    iget-object v2, p0, Lcom/google/googlenav/ca;->l:[Lcom/google/googlenav/ca;

    new-instance v3, Lcom/google/googlenav/ca;

    invoke-virtual {p1, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/ca;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    aput-object v3, v2, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 247
    :cond_4c
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/ck;

    iput-object v0, p0, Lcom/google/googlenav/ca;->m:[Lcom/google/googlenav/ck;

    move v0, v1

    .line 249
    :goto_55
    iget-object v2, p0, Lcom/google/googlenav/ca;->m:[Lcom/google/googlenav/ck;

    array-length v2, v2

    if-ge v0, v2, :cond_6a

    .line 250
    iget-object v2, p0, Lcom/google/googlenav/ca;->m:[Lcom/google/googlenav/ck;

    new-instance v3, Lcom/google/googlenav/ck;

    invoke-virtual {p1, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/ck;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    aput-object v3, v2, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 254
    :cond_6a
    const/4 v0, 0x6

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/ca;->i:J

    .line 258
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_8c

    .line 260
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->T()Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ca;->c()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Set;)V

    .line 262
    :cond_8c
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/cn;
    .registers 3
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cn;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/google/googlenav/ca;->l()I

    move-result v0

    if-lez v0, :cond_4a

    move v0, v1

    :goto_9
    move v3, v2

    .line 166
    :goto_a
    invoke-virtual {p0}, Lcom/google/googlenav/ca;->k()I

    move-result v4

    if-ge v3, v4, :cond_1b

    .line 167
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ca;->a(I)Lcom/google/googlenav/cn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/cn;->a()Z

    move-result v4

    if-eqz v4, :cond_4c

    move v2, v1

    .line 172
    :cond_1b
    if-eqz v2, :cond_4f

    const-string v2, "d"

    move-object v3, v2

    .line 174
    :goto_20
    if-eqz v0, :cond_53

    const-string v2, "a"

    .line 176
    :goto_24
    invoke-virtual {p0}, Lcom/google/googlenav/ca;->k()I

    move-result v4

    if-ge v4, v1, :cond_56

    if-nez v0, :cond_56

    const-string v0, "e"

    .line 179
    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4a
    move v0, v2

    .line 164
    goto :goto_9

    .line 166
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 172
    :cond_4f
    const-string v2, ""

    move-object v3, v2

    goto :goto_20

    .line 174
    :cond_53
    const-string v2, ""

    goto :goto_24

    .line 176
    :cond_56
    const-string v0, ""

    goto :goto_2e
.end method

.method public a(Lcom/google/googlenav/cj;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/googlenav/ca;->n:Lcom/google/googlenav/cj;

    .line 190
    return-void
.end method

.method public a(Lcom/google/googlenav/cn;)V
    .registers 5
    .parameter

    .prologue
    .line 327
    if-eqz p1, :cond_29

    .line 328
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 329
    iget-object v0, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cn;

    .line 330
    invoke-virtual {v0}, Lcom/google/googlenav/cn;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/cn;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 331
    iput v1, p0, Lcom/google/googlenav/ca;->s:I

    .line 337
    :goto_24
    return-void

    .line 328
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 336
    :cond_29
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ca;->s:I

    goto :goto_24
.end method

.method a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 198
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 201
    if-nez v0, :cond_1b

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ca;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ce;)V

    .line 207
    :goto_c
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ca;->b:J

    .line 208
    return-void

    .line 204
    :cond_1b
    invoke-direct {p0, p1}, Lcom/google/googlenav/ca;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_c
.end method

.method protected a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ce;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x0

    .line 279
    if-eqz p1, :cond_4

    .line 283
    :cond_4
    if-nez p1, :cond_2c

    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/google/googlenav/ca;->g:Ljava/lang/String;

    .line 285
    if-nez p1, :cond_32

    move-object v0, v1

    .line 287
    :goto_c
    if-nez v0, :cond_38

    :goto_e
    iput-object v1, p0, Lcom/google/googlenav/ca;->h:Lat/B;

    .line 288
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 290
    if-lez v1, :cond_1a

    .line 291
    new-array v0, v1, [Lcom/google/googlenav/ab;

    iput-object v0, p0, Lcom/google/googlenav/ca;->r:[Lcom/google/googlenav/ab;

    .line 293
    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v1, :cond_3d

    .line 294
    invoke-virtual {p1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v2

    .line 296
    invoke-interface {p2, v2}, Lcom/google/googlenav/ce;->b(I)Lcom/google/googlenav/ab;

    move-result-object v2

    .line 297
    iget-object v3, p0, Lcom/google/googlenav/ca;->r:[Lcom/google/googlenav/ab;

    aput-object v2, v3, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 283
    :cond_2c
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 285
    :cond_32
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_c

    .line 287
    :cond_38
    invoke-static {v0}, Lat/B;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v1

    goto :goto_e

    .line 299
    :cond_3d
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/google/googlenav/ca;->p:Z

    .line 311
    return-void
.end method

.method public b(I)Lcom/google/googlenav/ck;
    .registers 3
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/googlenav/ca;->m:[Lcom/google/googlenav/ck;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 215
    iget-wide v1, p0, Lcom/google/googlenav/ca;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 216
    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/google/googlenav/ca;->q:Z

    .line 319
    return-void
.end method

.method public c(I)Lcom/google/googlenav/ca;
    .registers 3
    .parameter

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/googlenav/ca;->l:[Lcom/google/googlenav/ca;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c(Z)Lcom/google/googlenav/cn;
    .registers 13
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-object v0, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    if-nez v0, :cond_6

    .line 492
    :cond_5
    return-object v1

    .line 479
    :cond_6
    const-wide/16 v2, -0x1

    .line 481
    iget-object v0, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cn;

    .line 482
    invoke-virtual {v0, p1}, Lcom/google/googlenav/cn;->b(Z)J

    move-result-wide v4

    .line 485
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_e

    .line 487
    if-eqz v1, :cond_2a

    cmp-long v7, v4, v2

    if-gez v7, :cond_2f

    :cond_2a
    move-wide v1, v4

    :goto_2b
    move-wide v9, v1

    move-wide v2, v9

    move-object v1, v0

    .line 491
    goto :goto_e

    :cond_2f
    move-object v0, v1

    move-wide v9, v2

    move-wide v1, v9

    goto :goto_2b
.end method

.method public c()Ljava/util/Set;
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 266
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 267
    iget-object v0, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cn;

    .line 268
    invoke-virtual {v0}, Lcom/google/googlenav/cn;->i()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2b

    .line 269
    invoke-virtual {v0}, Lcom/google/googlenav/cn;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2b
    invoke-virtual {v0}, Lcom/google/googlenav/cn;->j()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    .line 272
    invoke-virtual {v0}, Lcom/google/googlenav/cn;->j()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 275
    :cond_3f
    return-object v1
.end method

.method public d()Ljava/util/Set;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/googlenav/ca;->k:Ljava/util/Set;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/google/googlenav/ca;->p:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/google/googlenav/ca;->q:Z

    return v0
.end method

.method public declared-synchronized g()V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 392
    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/google/googlenav/ca;->j:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_40

    if-eqz v0, :cond_9

    .line 419
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 395
    :cond_9
    :try_start_9
    iget-wide v0, p0, Lcom/google/googlenav/ca;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ca;->j:Z

    .line 397
    new-instance v0, LY/d;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/cb;

    invoke-direct {v2, p0}, Lcom/google/googlenav/cb;-><init>(Lcom/google/googlenav/ca;)V

    invoke-direct {v0, v1, v2}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    .line 415
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/googlenav/ca;->b:J

    sub-long/2addr v1, v3

    .line 416
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/google/googlenav/ca;->i:J

    sub-long v1, v5, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LY/d;->a(J)V

    .line 417
    invoke-virtual {v0}, LY/d;->g()V
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_40

    goto :goto_7

    .line 392
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/googlenav/ca;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/googlenav/ca;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lat/B;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/googlenav/ca;->h:Lat/B;

    return-object v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/googlenav/ca;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/googlenav/ca;->m:[Lcom/google/googlenav/ck;

    array-length v0, v0

    return v0
.end method

.method public m()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 450
    iget v0, p0, Lcom/google/googlenav/ca;->f:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2e

    move v0, v1

    .line 451
    :goto_8
    invoke-virtual {p0}, Lcom/google/googlenav/ca;->k()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 452
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ca;->a(I)Lcom/google/googlenav/cn;

    move-result-object v3

    .line 453
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v3}, Lcom/google/googlenav/cn;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 454
    :cond_26
    iput v1, p0, Lcom/google/googlenav/ca;->f:I

    .line 460
    :goto_28
    return v2

    .line 451
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 458
    :cond_2c
    iput v2, p0, Lcom/google/googlenav/ca;->f:I

    .line 460
    :cond_2e
    iget v0, p0, Lcom/google/googlenav/ca;->f:I

    if-nez v0, :cond_33

    move v1, v2

    :cond_33
    move v2, v1

    goto :goto_28
.end method

.method public n()I
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/googlenav/ca;->l:[Lcom/google/googlenav/ca;

    array-length v0, v0

    return v0
.end method
