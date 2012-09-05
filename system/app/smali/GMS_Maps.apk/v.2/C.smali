.class public Lv/C;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lv/A;

.field private final b:I

.field private final c:I

.field private final d:Lt/L;

.field private final e:Lt/L;

.field private final f:[Lw/f;

.field private final g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lv/A;IILt/L;Lt/L;[Lw/f;II)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/C;->a:Lv/A;

    iput p2, p0, Lv/C;->b:I

    iput p3, p0, Lv/C;->c:I

    iput-object p4, p0, Lv/C;->d:Lt/L;

    iput-object p5, p0, Lv/C;->e:Lt/L;

    iput-object p6, p0, Lv/C;->f:[Lw/f;

    iput p7, p0, Lv/C;->h:I

    iput p8, p0, Lv/C;->i:I

    iget-object v0, p1, Lv/A;->c:[Lw/e;

    aget-object v0, v0, p2

    invoke-static {v0}, Lv/C;->a(Lw/e;)I

    move-result v0

    iput v0, p0, Lv/C;->g:I

    return-void
.end method

.method public constructor <init>(Lw/b;Lv/A;I)V
    .registers 11

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv/C;->a:Lv/A;

    iput p3, p0, Lv/C;->b:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lv/C;->a:Lv/A;

    iget-object v4, v0, Lv/A;->c:[Lw/e;

    aget-object v0, v4, p3

    invoke-static {v0}, Lv/C;->a(Lw/e;)I

    move-result v0

    array-length v1, v4

    move v2, v0

    :goto_19
    if-ge p3, v1, :cond_96

    aget-object v0, v4, p3

    invoke-virtual {v0, v6}, Lw/e;->c(I)Lw/f;

    move-result-object v0

    sget-object v5, Lw/e;->a:Lw/f;

    if-eq v0, v5, :cond_2e

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    invoke-virtual {p0, p1, v2, p3}, Lv/C;->a(Lw/b;II)Z

    move-result v0

    if-nez v0, :cond_78

    add-int/lit8 v0, p3, 0x1

    :goto_36
    iput v2, p0, Lv/C;->g:I

    iput v0, p0, Lv/C;->c:I

    iget v0, p0, Lv/C;->b:I

    if-nez v0, :cond_82

    iget-object v0, p0, Lv/C;->a:Lv/A;

    iget-object v0, v0, Lv/A;->a:Lv/d;

    iget-object v0, v0, Lv/d;->b:Lt/L;

    :goto_44
    iput-object v0, p0, Lv/C;->d:Lt/L;

    iget v0, p0, Lv/C;->c:I

    if-ne v0, v1, :cond_8b

    iget-object v0, p0, Lv/C;->a:Lv/A;

    iget-object v0, v0, Lv/A;->b:Lv/d;

    iget-object v0, v0, Lv/d;->b:Lt/L;

    :goto_50
    iput-object v0, p0, Lv/C;->e:Lt/L;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lw/f;

    iput-object v0, p0, Lv/C;->f:[Lw/f;

    iget-object v0, p0, Lv/C;->f:[Lw/f;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v0, "Describer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created subPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_78
    aget-object v0, v4, p3

    invoke-static {v0}, Lv/C;->a(Lw/e;)I

    move-result v0

    add-int/lit8 p3, p3, 0x1

    move v2, v0

    goto :goto_19

    :cond_82
    iget v0, p0, Lv/C;->b:I

    aget-object v0, v4, v0

    invoke-virtual {v0, v6}, Lw/e;->b(I)Lt/L;

    move-result-object v0

    goto :goto_44

    :cond_8b
    iget v0, p0, Lv/C;->c:I

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Lw/e;->e()Lt/L;

    move-result-object v0

    goto :goto_50

    :cond_96
    move v0, v1

    goto :goto_36
.end method

.method static a(Lw/e;)I
    .registers 2

    invoke-virtual {p0}, Lw/e;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_9
    const/4 v0, 0x1

    goto :goto_8

    :pswitch_b
    const/4 v0, 0x2

    goto :goto_8

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method private a(Lw/e;Lw/e;Ljava/util/List;)I
    .registers 12

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lv/b;->a(Lw/e;Lw/e;)I

    move-result v4

    if-eqz p3, :cond_d

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move v0, v1

    :goto_e
    return v0

    :cond_f
    const/4 v3, 0x0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/e;

    invoke-static {p1, v0}, Lv/b;->a(Lw/e;Lw/e;)I

    move-result v2

    if-eqz v3, :cond_30

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v6, v7, :cond_3b

    :cond_30
    move-object v1, v0

    move v0, v2

    :goto_32
    move-object v3, v1

    move v1, v0

    goto :goto_14

    :cond_35
    if-le v4, v1, :cond_39

    const/4 v0, 0x2

    goto :goto_e

    :cond_39
    const/4 v0, 0x1

    goto :goto_e

    :cond_3b
    move v0, v1

    move-object v1, v3

    goto :goto_32
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "NORMAL"

    goto :goto_5

    :pswitch_9
    const-string v0, "RAMP"

    goto :goto_5

    :pswitch_c
    const-string v0, "ROUNDABOUT"

    goto :goto_5

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private a(Lw/b;Lw/e;Lw/e;I)Ljava/util/List;
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_5
    invoke-virtual {p2}, Lw/e;->d()I

    move-result v2

    if-ge v1, v2, :cond_2e

    invoke-virtual {p2, v1}, Lw/e;->a(I)Lw/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lw/a;->a(Lw/b;)Lw/e;

    move-result-object v2

    if-eqz v2, :cond_2b

    if-eq v2, p3, :cond_2b

    invoke-static {p2, v2}, Lv/b;->a(Lw/e;Lw/e;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, p4, :cond_2b

    if-nez v0, :cond_28

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2e
    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/e;

    invoke-static {v0}, Lv/C;->a(Lw/e;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_7
.end method

.method private a(Ljava/util/List;I)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/e;

    invoke-virtual {v0}, Lw/e;->h()I

    move-result v0

    if-ge v0, p2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_7
.end method

.method private a(Lw/b;Lw/e;Lw/e;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p3}, Lv/C;->a(Lw/e;)I

    move-result v2

    if-ne v2, v0, :cond_c

    invoke-direct {p0, p1, p2, p3}, Lv/C;->c(Lw/b;Lw/e;Lw/e;)V

    :goto_b
    return v1

    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lv/C;->e(Lw/b;Lw/e;Lw/e;)Z

    move-result v2

    if-nez v2, :cond_14

    :goto_12
    move v1, v0

    goto :goto_b

    :cond_14
    move v0, v1

    goto :goto_12
.end method

.method private a(Lw/e;Lw/e;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lv/C;->b(Lw/e;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lw/e;->h()I

    move-result v1

    invoke-virtual {p2}, Lw/e;->h()I

    move-result v2

    if-gt v1, v2, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private b(Lw/b;Lw/e;Lw/e;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p3}, Lv/C;->a(Lw/e;)I

    move-result v2

    if-eq v2, v0, :cond_11

    invoke-direct {p0, p1, p2, p3}, Lv/C;->e(Lw/b;Lw/e;Lw/e;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    invoke-direct {p0, p1, p2, p3}, Lv/C;->d(Lw/b;Lw/e;Lw/e;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method private b(Lw/e;)Z
    .registers 4

    invoke-virtual {p1}, Lw/e;->h()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    const/16 v1, 0x9

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private c(Lw/b;Lw/e;Lw/e;)V
    .registers 5

    const/16 v0, 0x2d

    invoke-direct {p0, p1, p2, p3, v0}, Lv/C;->a(Lw/b;Lw/e;Lw/e;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lv/C;->a(Lw/e;Lw/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lv/C;->i:I

    invoke-direct {p0, p2, p3}, Lv/C;->a(Lw/e;Lw/e;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x8

    iput v0, p0, Lv/C;->h:I

    :goto_16
    return-void

    :cond_17
    const/4 v0, 0x7

    iput v0, p0, Lv/C;->h:I

    goto :goto_16
.end method

.method private d(Lw/b;Lw/e;Lw/e;)Z
    .registers 5

    invoke-static {p2, p3}, Lv/b;->a(Lw/e;Lw/e;)I

    const/16 v0, 0x2d

    invoke-direct {p0, p1, p2, p3, v0}, Lv/C;->a(Lw/b;Lw/e;Lw/e;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lv/C;->a(Lw/e;Lw/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lv/C;->i:I

    iget v0, p0, Lv/C;->i:I

    if-eqz v0, :cond_19

    const/16 v0, 0x9

    iput v0, p0, Lv/C;->h:I

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private e(Lw/b;Lw/e;Lw/e;)Z
    .registers 14

    const/16 v9, 0x14

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lv/b;->a(Lw/e;Lw/e;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {p2, v3}, Lw/e;->c(I)Lw/f;

    move-result-object v0

    invoke-virtual {p3, v3}, Lw/e;->c(I)Lw/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lw/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    move v4, v2

    :goto_1c
    if-lez v5, :cond_72

    move v0, v1

    :goto_1f
    iput v0, p0, Lv/C;->i:I

    const/16 v0, 0x2d

    if-gt v6, v0, :cond_86

    add-int/lit8 v0, v6, 0x1e

    invoke-direct {p0, p1, p2, p3, v0}, Lv/C;->a(Lw/b;Lw/e;Lw/e;I)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lv/C;->a(Ljava/util/List;)V

    invoke-virtual {p2}, Lw/e;->h()I

    move-result v0

    invoke-virtual {p3}, Lw/e;->h()I

    move-result v8

    if-ne v0, v8, :cond_3f

    invoke-virtual {p2}, Lw/e;->h()I

    move-result v0

    invoke-direct {p0, v7, v0}, Lv/C;->a(Ljava/util/List;I)V

    :cond_3f
    if-eqz v7, :cond_74

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_74

    if-ge v6, v9, :cond_74

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/e;

    invoke-static {p2, v0}, Lv/b;->a(Lw/e;Lw/e;)I

    move-result v6

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/e;

    invoke-virtual {v0}, Lw/e;->h()I

    move-result v0

    invoke-virtual {p3}, Lw/e;->h()I

    move-result v8

    if-ne v0, v8, :cond_74

    if-ge v6, v9, :cond_74

    const/16 v0, 0x9

    iput v0, p0, Lv/C;->h:I

    invoke-direct {p0, p2, p3, v7}, Lv/C;->a(Lw/e;Lw/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lv/C;->i:I

    :goto_6f
    return v2

    :cond_70
    move v4, v3

    goto :goto_1c

    :cond_72
    move v0, v2

    goto :goto_1f

    :cond_74
    const/16 v0, 0x1e

    if-lt v5, v0, :cond_7a

    if-nez v4, :cond_82

    :cond_7a
    if-eqz v7, :cond_9c

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9c

    :cond_82
    const/4 v0, 0x3

    iput v0, p0, Lv/C;->h:I

    goto :goto_6f

    :cond_86
    const/16 v0, 0x87

    if-gt v6, v0, :cond_8e

    const/4 v0, 0x4

    iput v0, p0, Lv/C;->h:I

    goto :goto_6f

    :cond_8e
    const/16 v0, 0xb3

    if-gt v6, v0, :cond_96

    const/4 v0, 0x5

    iput v0, p0, Lv/C;->h:I

    goto :goto_6f

    :cond_96
    const/4 v0, 0x6

    iput v0, p0, Lv/C;->h:I

    iput v2, p0, Lv/C;->i:I

    goto :goto_6f

    :cond_9c
    if-eqz v4, :cond_a9

    invoke-virtual {p2}, Lw/e;->d()I

    move-result v0

    if-le v0, v2, :cond_a9

    iput v1, p0, Lv/C;->h:I

    iput v3, p0, Lv/C;->i:I

    goto :goto_6f

    :cond_a9
    move v2, v3

    goto :goto_6f
.end method


# virtual methods
.method public a(Lt/R;)D
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lv/C;->a:Lv/A;

    iget-object v8, v1, Lv/A;->c:[Lw/e;

    const/4 v4, 0x0

    new-instance v9, Lt/L;

    invoke-direct {v9}, Lt/L;-><init>()V

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lv/C;->b:I

    move v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v1, v16

    move-object v3, v4

    move v4, v15

    :goto_19
    move-object/from16 v0, p0

    iget v5, v0, Lv/C;->c:I

    if-ge v4, v5, :cond_8b

    aget-object v10, v8, v4

    invoke-virtual {v10}, Lw/e;->f()I

    move-result v6

    if-nez v4, :cond_6a

    move-object/from16 v0, p0

    iget-object v5, v0, Lv/C;->a:Lv/A;

    iget-object v5, v5, Lv/A;->a:Lv/d;

    iget v5, v5, Lv/d;->d:I

    :goto_2f
    add-int/lit8 v6, v6, -0x1

    array-length v7, v8

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_40

    move-object/from16 v0, p0

    iget-object v6, v0, Lv/C;->a:Lv/A;

    iget-object v6, v6, Lv/A;->b:Lv/d;

    iget v6, v6, Lv/d;->d:I

    add-int/lit8 v6, v6, 0x1

    :cond_40
    move v7, v5

    :goto_41
    if-gt v7, v6, :cond_88

    move-object/from16 v0, p0

    iget v11, v0, Lv/C;->b:I

    if-ne v4, v11, :cond_6c

    if-ne v7, v5, :cond_6c

    move-object/from16 v0, p0

    iget-object v11, v0, Lv/C;->d:Lt/L;

    invoke-virtual {v9, v11}, Lt/L;->b(Lt/L;)V

    :goto_52
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lt/R;->a(Lt/L;)Z

    if-eqz v3, :cond_82

    invoke-virtual {v3, v9}, Lt/L;->c(Lt/L;)F

    move-result v11

    float-to-double v11, v11

    invoke-virtual {v3}, Lt/L;->e()D

    move-result-wide v13

    div-double/2addr v11, v13

    add-double/2addr v1, v11

    :goto_64
    invoke-virtual {v3, v9}, Lt/L;->b(Lt/L;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    :cond_6a
    const/4 v5, 0x0

    goto :goto_2f

    :cond_6c
    move-object/from16 v0, p0

    iget v11, v0, Lv/C;->c:I

    add-int/lit8 v11, v11, -0x1

    if-ne v4, v11, :cond_7e

    if-ne v7, v6, :cond_7e

    move-object/from16 v0, p0

    iget-object v11, v0, Lv/C;->e:Lt/L;

    invoke-virtual {v9, v11}, Lt/L;->b(Lt/L;)V

    goto :goto_52

    :cond_7e
    invoke-virtual {v10, v7, v9}, Lw/e;->a(ILt/L;)V

    goto :goto_52

    :cond_82
    new-instance v3, Lt/L;

    invoke-direct {v3}, Lt/L;-><init>()V

    goto :goto_64

    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_8b
    return-wide v1
.end method

.method public a()I
    .registers 5

    iget-object v0, p0, Lv/C;->a:Lv/A;

    iget-object v2, v0, Lv/A;->d:[I

    const/4 v1, 0x0

    iget v0, p0, Lv/C;->b:I

    :goto_7
    iget v3, p0, Lv/C;->c:I

    if-ge v0, v3, :cond_11

    aget v3, v2, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    return v1
.end method

.method a(Lw/b;II)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lv/C;->a:Lv/A;

    iget-object v1, v1, Lv/A;->c:[Lw/e;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_11

    const/16 v1, 0x10

    iput v1, p0, Lv/C;->h:I

    iput v0, p0, Lv/C;->i:I

    :goto_10
    return v0

    :cond_11
    aget-object v0, v1, p3

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1f

    invoke-direct {p0, p1, v0, v1}, Lv/C;->b(Lw/b;Lw/e;Lw/e;)Z

    move-result v0

    goto :goto_10

    :cond_1f
    invoke-direct {p0, p1, v0, v1}, Lv/C;->a(Lw/b;Lw/e;Lw/e;)Z

    move-result v0

    goto :goto_10
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lv/C;->h:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lv/C;->i:I

    return v0
.end method

.method public d()[Lw/f;
    .registers 2

    iget-object v0, p0, Lv/C;->f:[Lw/f;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lv/C;->b:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lv/C;->c:I

    return v0
.end method

.method public g()Lw/e;
    .registers 3

    iget-object v0, p0, Lv/C;->a:Lv/A;

    iget-object v0, v0, Lv/A;->c:[Lw/e;

    iget v1, p0, Lv/C;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()Lw/e;
    .registers 3

    iget-object v0, p0, Lv/C;->a:Lv/A;

    iget-object v0, v0, Lv/A;->c:[Lw/e;

    iget v1, p0, Lv/C;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public i()Lt/L;
    .registers 2

    iget-object v0, p0, Lv/C;->d:Lt/L;

    return-object v0
.end method

.method public j()Lt/L;
    .registers 2

    iget-object v0, p0, Lv/C;->e:Lt/L;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lv/C;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " side: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lv/C;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " names: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lv/C;->f:[Lw/f;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_27
    if-ge v0, v3, :cond_3a

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lw/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v0, " start: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lv/C;->d:Lt/L;

    invoke-virtual {v2}, Lt/L;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " end: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lv/C;->e:Lt/L;

    invoke-virtual {v2}, Lt/L;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lv/C;->g:I

    invoke-static {v2}, Lv/C;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
