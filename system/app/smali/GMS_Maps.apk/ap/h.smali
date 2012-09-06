.class public abstract LaP/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lad/t;

.field protected final b:Lad/w;

.field protected final c:I

.field private final d:LaP/q;

.field private final e:Ljava/util/List;

.field private f:Lcom/google/common/collect/ImmutableList;

.field private g:[F

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:F


# direct methods
.method protected constructor <init>(LaP/q;Lad/w;Lad/t;ILjava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, -0x4080

    const/4 v0, -0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v1, p0, LaP/h;->h:F

    .line 101
    iput v0, p0, LaP/h;->i:I

    .line 106
    iput v0, p0, LaP/h;->j:I

    .line 111
    iput v0, p0, LaP/h;->k:I

    .line 116
    iput v1, p0, LaP/h;->l:F

    .line 120
    iput-object p1, p0, LaP/h;->d:LaP/q;

    .line 121
    iput-object p2, p0, LaP/h;->b:Lad/w;

    .line 122
    iput-object p3, p0, LaP/h;->a:Lad/t;

    .line 123
    iput p4, p0, LaP/h;->c:I

    .line 124
    if-eqz p5, :cond_21

    .line 125
    invoke-static {p5}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, LaP/h;->e:Ljava/util/List;

    .line 129
    :goto_20
    return-void

    .line 127
    :cond_21
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, LaP/h;->e:Ljava/util/List;

    goto :goto_20
.end method

.method private static A()F
    .registers 1

    .prologue
    .line 1129
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    iget v0, v0, LF/q;->y:F

    return v0
.end method

.method static synthetic a(Ljava/util/Date;Ljava/util/Date;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p0, p1}, LaP/h;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method static a(Lat/B;Lat/B;Ljava/util/List;F)Lcom/google/common/collect/ImmutableList;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-static {p2}, Lcom/google/common/collect/cx;->b(Ljava/lang/Iterable;)Ljava/util/LinkedList;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 341
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/B;

    .line 342
    invoke-static {p0, v0}, LF/g;->a(Lat/B;Lat/B;)F

    move-result v3

    cmpg-float v3, v3, p3

    if-gez v3, :cond_20

    .line 343
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_20
    move-object p0, v0

    .line 345
    goto :goto_8

    .line 348
    :cond_22
    :goto_22
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/B;

    invoke-static {v0, p1}, LF/g;->a(Lat/B;Lat/B;)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_3a

    .line 349
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_22

    .line 351
    :cond_3a
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lad/m;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1016
    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, LaP/h;->b:Lad/w;

    invoke-virtual {v0, p1}, Lad/w;->a(Lad/m;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static synthetic a(Lad/t;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 41
    invoke-static {p0}, LaP/h;->b(Lad/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lad/y;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 1011
    invoke-static {p0}, Lcom/google/googlenav/ui/bA;->b(Lad/y;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    invoke-static {v0}, Laa/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method static synthetic a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;
    .registers 2
    .parameter

    .prologue
    .line 41
    invoke-static {p0}, LaP/h;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static a(Lad/w;ILaP/h;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1094
    invoke-virtual {p0, p1}, Lad/w;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lad/m;

    .line 1095
    invoke-virtual {v0}, Lad/m;->y()I

    move-result v1

    .line 1096
    const/4 v3, 0x0

    .line 1100
    invoke-virtual {v0}, Lad/m;->r()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v0}, Lad/m;->n()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1101
    check-cast v0, Lad/a;

    .line 1102
    invoke-virtual {v0}, Lad/a;->j()I

    move-result v3

    .line 1103
    invoke-virtual {v0}, Lad/a;->i()I

    move-result v0

    int-to-float v1, v0

    .line 1116
    :cond_23
    cmpl-float v0, v1, v2

    if-lez v0, :cond_2a

    .line 1117
    invoke-virtual {p2, v1}, LaP/h;->a(F)V

    .line 1119
    :cond_2a
    if-lez v3, :cond_2f

    .line 1120
    invoke-virtual {p2, v3}, LaP/h;->a(I)V

    .line 1122
    :cond_2f
    return-void

    :cond_30
    move v0, v1

    move v1, v2

    .line 1106
    :goto_32
    invoke-virtual {p0}, Lad/w;->ae()I

    move-result v4

    if-ge v0, v4, :cond_23

    .line 1107
    invoke-virtual {p0, v0}, Lad/w;->n(I)Lad/t;

    move-result-object v4

    .line 1108
    invoke-virtual {v4}, Lad/t;->C()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_23

    .line 1111
    invoke-virtual {v4}, Lad/t;->v()I

    move-result v5

    add-int/2addr v3, v5

    .line 1112
    invoke-virtual {v4}, Lad/t;->t()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 1106
    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method private static b(Ljava/util/Date;Ljava/util/Date;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static b(Lad/t;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1032
    invoke-virtual {p0}, Lad/t;->x()Ljava/lang/String;

    move-result-object v0

    .line 1033
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1034
    invoke-virtual {p0}, Lad/t;->B()Ljava/lang/String;

    move-result-object v0

    .line 1036
    :cond_e
    return-object v0
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;
    .registers 2
    .parameter

    .prologue
    .line 1025
    if-nez p0, :cond_4

    .line 1026
    const/4 v0, 0x0

    .line 1028
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic b(Lad/w;ILaP/h;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, LaP/h;->c(Lad/w;ILaP/h;)V

    return-void
.end method

.method private static c(Lad/w;ILaP/h;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1073
    invoke-static {p0, p1, p2}, LaP/h;->a(Lad/w;ILaP/h;)V

    .line 1074
    invoke-virtual {p2}, LaP/h;->p()F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    .line 1075
    invoke-virtual {p2}, LaP/h;->w()F

    move-result v0

    invoke-virtual {p2, v0}, LaP/h;->a(F)V

    .line 1077
    :cond_14
    iget v0, p2, LaP/h;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 1078
    invoke-virtual {p2}, LaP/h;->q()V

    .line 1080
    :cond_1c
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;)J
    .registers 4
    .parameter

    .prologue
    .line 218
    invoke-virtual {p0}, LaP/h;->l()Ljava/util/Date;

    move-result-object v0

    .line 219
    if-nez v0, :cond_9

    .line 220
    const-wide/16 v0, 0x0

    .line 222
    :goto_8
    return-wide v0

    :cond_9
    invoke-static {p1, v0}, LaP/h;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_8
.end method

.method public a()Lad/t;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, LaP/h;->a:Lad/t;

    return-object v0
.end method

.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 241
    iput p1, p0, LaP/h;->l:F

    .line 242
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 230
    iput p1, p0, LaP/h;->k:I

    .line 231
    return-void
.end method

.method public b(F)I
    .registers 5
    .parameter

    .prologue
    .line 376
    invoke-virtual {p0}, LaP/h;->w()F

    move-result v0

    mul-float v1, p1, v0

    .line 377
    const/4 v0, 0x0

    .line 378
    :goto_7
    invoke-virtual {p0, v0}, LaP/h;->c(I)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_12

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 381
    :cond_12
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public b()LaP/q;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, LaP/h;->d:LaP/q;

    return-object v0
.end method

.method public b(I)Lat/B;
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 361
    invoke-virtual {p0}, LaP/h;->v()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 362
    if-gt v4, p1, :cond_2b

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-gt p1, v0, :cond_2b

    const/4 v0, 0x1

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index not in range:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    .line 363
    if-ne p1, v4, :cond_2d

    .line 364
    invoke-virtual {p0}, LaP/h;->s()Lat/B;

    move-result-object v0

    .line 368
    :goto_2a
    return-object v0

    .line 362
    :cond_2b
    const/4 v0, 0x0

    goto :goto_e

    .line 365
    :cond_2d
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne p1, v0, :cond_38

    .line 366
    invoke-virtual {p0}, LaP/h;->t()Lat/B;

    move-result-object v0

    goto :goto_2a

    .line 368
    :cond_38
    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/B;

    goto :goto_2a
.end method

.method public c(I)F
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 390
    invoke-virtual {p0}, LaP/h;->v()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    .line 392
    if-gt v6, p1, :cond_4f

    if-gt p1, v5, :cond_4f

    const/4 v0, 0x1

    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shapePointIndex not in range [0, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    .line 396
    iget-object v0, p0, LaP/h;->g:[F

    if-nez v0, :cond_51

    .line 398
    add-int/lit8 v0, v5, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, LaP/h;->g:[F

    .line 401
    invoke-virtual {p0}, LaP/h;->s()Lat/B;

    move-result-object v0

    move v4, v2

    .line 402
    :goto_3b
    if-gt v1, v5, :cond_51

    .line 403
    invoke-virtual {p0, v1}, LaP/h;->b(I)Lat/B;

    move-result-object v3

    .line 404
    invoke-static {v0, v3}, LF/g;->a(Lat/B;Lat/B;)F

    move-result v0

    .line 405
    add-float/2addr v0, v4

    .line 406
    iget-object v4, p0, LaP/h;->g:[F

    aput v0, v4, v1

    .line 402
    add-int/lit8 v1, v1, 0x1

    move v4, v0

    move-object v0, v3

    goto :goto_3b

    :cond_4f
    move v0, v1

    .line 392
    goto :goto_10

    .line 410
    :cond_51
    if-ne p1, v6, :cond_55

    move v0, v2

    :goto_54
    return v0

    :cond_55
    iget-object v0, p0, LaP/h;->g:[F

    aget v0, v0, p1

    goto :goto_54
.end method

.method public c(F)V
    .registers 2
    .parameter

    .prologue
    .line 1040
    iput p1, p0, LaP/h;->h:F

    .line 1041
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 143
    sget-object v0, LaP/i;->a:[I

    iget-object v1, p0, LaP/h;->d:LaP/q;

    invoke-virtual {v1}, LaP/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 148
    const/4 v0, 0x1

    :goto_e
    return v0

    .line 146
    :pswitch_f
    const/4 v0, 0x0

    goto :goto_e

    .line 143
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public d(I)F
    .registers 4
    .parameter

    .prologue
    .line 417
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, LaP/h;->c(I)F

    move-result v0

    invoke-virtual {p0, p1}, LaP/h;->c(I)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, LaP/h;->c:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, LaP/h;->b:Lad/w;

    iget v1, p0, LaP/h;->c:I

    invoke-virtual {v0, v1}, Lad/w;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lad/m;

    .line 158
    invoke-direct {p0, v0}, LaP/h;->a(Lad/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .registers 2
    .parameter

    .prologue
    .line 1048
    iput p1, p0, LaP/h;->i:I

    .line 1049
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, LaP/h;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .registers 2
    .parameter

    .prologue
    .line 1052
    iput p1, p0, LaP/h;->j:I

    .line 1053
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, LaP/h;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, LaP/h;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, LaP/h;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, LaP/h;->a:Lad/t;

    invoke-virtual {v0}, Lad/t;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public abstract l()Ljava/util/Date;
.end method

.method public abstract m()Ljava/util/Date;
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 234
    iget v0, p0, LaP/h;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public o()I
    .registers 2

    .prologue
    .line 255
    invoke-virtual {p0}, LaP/h;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    iget v0, p0, LaP/h;->k:I

    .line 258
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public p()F
    .registers 2

    .prologue
    .line 266
    iget v0, p0, LaP/h;->l:F

    return v0
.end method

.method protected q()V
    .registers 3

    .prologue
    .line 277
    invoke-virtual {p0}, LaP/h;->l()Ljava/util/Date;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, LaP/h;->m()Ljava/util/Date;

    move-result-object v1

    .line 279
    if-eqz v0, :cond_c

    if-nez v1, :cond_d

    .line 283
    :cond_c
    :goto_c
    return-void

    .line 282
    :cond_d
    invoke-virtual {p0}, LaP/h;->l()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, LaP/h;->m()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, LaP/h;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    iput v0, p0, LaP/h;->k:I

    goto :goto_c
.end method

.method protected r()Z
    .registers 2

    .prologue
    .line 286
    invoke-virtual {p0}, LaP/h;->s()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, LaP/h;->t()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public abstract s()Lat/B;
.end method

.method public abstract t()Lat/B;
.end method

.method public abstract u()Ljava/lang/String;
.end method

.method public v()Lcom/google/common/collect/ImmutableList;
    .registers 5

    .prologue
    .line 318
    iget-object v0, p0, LaP/h;->f:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_18

    .line 319
    invoke-virtual {p0}, LaP/h;->s()Lat/B;

    move-result-object v0

    invoke-virtual {p0}, LaP/h;->t()Lat/B;

    move-result-object v1

    iget-object v2, p0, LaP/h;->e:Ljava/util/List;

    invoke-static {}, LaP/h;->A()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, LaP/h;->a(Lat/B;Lat/B;Ljava/util/List;F)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, LaP/h;->f:Lcom/google/common/collect/ImmutableList;

    .line 322
    :cond_18
    iget-object v0, p0, LaP/h;->f:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public w()F
    .registers 2

    .prologue
    .line 425
    invoke-virtual {p0}, LaP/h;->v()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LaP/h;->c(I)F

    move-result v0

    return v0
.end method

.method public x()F
    .registers 2

    .prologue
    .line 1044
    iget v0, p0, LaP/h;->h:F

    return v0
.end method

.method public y()I
    .registers 2

    .prologue
    .line 1056
    iget v0, p0, LaP/h;->i:I

    return v0
.end method

.method public z()I
    .registers 2

    .prologue
    .line 1060
    iget v0, p0, LaP/h;->j:I

    return v0
.end method
