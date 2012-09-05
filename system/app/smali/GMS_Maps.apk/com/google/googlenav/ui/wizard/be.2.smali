.class public Lcom/google/googlenav/ui/wizard/be;
.super Lcom/google/googlenav/ui/wizard/z;


# static fields
.field private static l:Laf/b;

.field private static m:Ljava/lang/String;


# instance fields
.field private a:Lau/b;

.field private g:Lau/b;

.field private final h:Lcom/google/googlenav/L;

.field private i:I

.field private final j:I

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/be;->l:Laf/b;

    const-string v0, ""

    sput-object v0, Lcom/google/googlenav/ui/wizard/be;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    const/16 v0, 0x36

    iput v0, p0, Lcom/google/googlenav/ui/wizard/be;->j:I

    const/16 v0, 0x34

    iput v0, p0, Lcom/google/googlenav/ui/wizard/be;->k:I

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/be;->h:Lcom/google/googlenav/L;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->a(I)I

    return-void
.end method

.method private B()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    invoke-virtual {v0}, Lau/b;->aN()Lau/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0}, Lau/b;->aR()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/android/ay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ay;->i()Lbb/f;

    move-result-object v0

    check-cast v0, Lbb/l;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/s;->a(Lau/b;Lbb/l;)V

    return-void
.end method

.method private C()I
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    packed-switch v1, :pswitch_data_a

    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    const/4 v0, 0x0

    goto :goto_6

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private D()Ljava/util/Vector;
    .registers 7

    const/16 v5, 0x38

    const/4 v4, 0x4

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0}, Lau/b;->y()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v2, 0x379

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v2, 0xd7

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0}, Lau/b;->am()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/bg;->k:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_54
    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v2, 0x3e2

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->bU:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0}, Lau/b;->z()I

    move-result v0

    if-nez v0, :cond_93

    const/4 v0, 0x0

    :goto_7d
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v2}, Lau/b;->aC()I

    move-result v2

    if-ge v0, v2, :cond_93

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/be;->c:Lcom/google/googlenav/ui/bw;

    invoke-static {v2, v3, v0}, Lcom/google/googlenav/ui/wizard/gO;->a(Lau/b;Lcom/google/googlenav/ui/bw;I)Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    :cond_93
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0}, Lau/b;->az()Z

    move-result v0

    if-eqz v0, :cond_141

    const/16 v0, 0x4c2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->bU:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v2}, Lau/b;->T()Lau/l;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/be;->b(Lau/l;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/bh;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v2, 0xd8

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/be;->c:Lcom/google/googlenav/ui/bw;

    const v3, 0x7f0201d7

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bw;->a(I)Lah/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->b(Lah/f;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0x4e1

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v2, 0xdb

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0x4e0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v2, 0xda

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_141
    return-object v1
.end method

.method private a(I)I
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    return p1
.end method

.method public static a(Lcom/google/googlenav/ui/x;)Lau/b;
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/googlenav/ui/wizard/be;->l:Laf/b;

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->M()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "SAVED_DIRECTIONS"

    invoke-interface {v1, v2, v0}, Lak/m;->a(Ljava/lang/String;[B)Z

    const-string v2, "SAVED_DIRECTIONS_DB"

    invoke-interface {v1, v2}, Lak/m;->b(Ljava/lang/String;)Z

    :cond_1b
    const-string v2, "PROTO_SAVED_DIRECTIONS_DB"

    invoke-static {v1, v2}, Laf/l;->a(Lak/m;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    if-nez v1, :cond_24

    :goto_23
    return-object v0

    :cond_24
    :try_start_24
    invoke-static {v1, p0}, Lau/b;->a(Ljava/io/DataInput;Lcom/google/googlenav/ui/x;)Lau/b;

    move-result-object v1

    instance-of v2, v1, Lau/r;

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Lau/b;->H()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2f} :catch_31

    :cond_2f
    move-object v0, v1

    goto :goto_23

    :catch_31
    move-exception v1

    const-string v2, "UI-TDW"

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method private static a(Lau/l;Z)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x5

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0}, Lau/l;->c()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v5, v8, :cond_2d

    if-ne v4, v7, :cond_2d

    if-eq v0, v6, :cond_35

    :cond_2d
    move v0, v2

    :goto_2e
    if-eqz p1, :cond_37

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    :goto_34
    return-object v0

    :cond_35
    move v0, v1

    goto :goto_2e

    :cond_37
    if-eqz v0, :cond_52

    const/16 v0, 0x4c1

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_52
    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method private a(IZ)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->r()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->a(I)I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0, p1}, Lau/b;->s(I)V

    if-eqz p2, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/y;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/y;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->h:Lcom/google/googlenav/L;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->e(Lau/b;)LaY/G;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->a()V

    goto :goto_6
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v2}, Lau/b;->k()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/ui/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Lau/l;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lau/l;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xd7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    invoke-virtual {p0}, Lau/l;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    :goto_18
    invoke-virtual {p0}, Lau/l;->d()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_42

    move v1, v2

    :goto_20
    invoke-static {p0, v1}, Lcom/google/googlenav/ui/wizard/be;->a(Lau/l;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_2d
    const/16 v0, 0xd6

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :pswitch_34
    const/16 v0, 0x3b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :pswitch_3b
    const/16 v0, 0x1ec

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_42
    move v1, v3

    goto :goto_20

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method

.method private b(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    invoke-virtual {v0}, Lau/b;->aN()Lau/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    invoke-virtual {v1}, Lau/b;->q()Lam/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/b;->a(Lam/b;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    invoke-virtual {v1}, Lau/b;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lau/b;->e(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0, p1}, Lau/b;->o(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0}, Lau/b;->aR()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-static {}, Lau/l;->a()Lau/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/b;->a(Lau/l;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->L()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x4

    const-string v1, "sa"

    invoke-static {v0, v1, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x38

    const-string v1, "ir"

    invoke-static {v0, v1, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private j()V
    .registers 3

    sget-object v0, Lcom/google/googlenav/ui/wizard/be;->l:Laf/b;

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "PROTO_SAVED_DIRECTIONS_DB"

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 6

    const/16 v4, 0x26

    const/16 v3, 0x3d

    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Directions"

    invoke-static {v0}, Lac/a;->c(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://maps.google.com/?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->e()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->as()Lau/x;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v2, "saddr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lau/x;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->e()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->au()Lau/x;

    move-result-object v1

    if-eqz v1, :cond_4e

    const-string v2, "daddr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lau/x;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4e
    const-string v1, "dirflg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z_()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public a(Laq/b;)I
    .registers 6

    const/4 v3, 0x3

    const/16 v2, 0x36

    invoke-virtual {p1}, Laq/b;->b()I

    move-result v1

    if-eq v1, v2, :cond_d

    const/16 v0, 0x34

    if-ne v1, v0, :cond_22

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0}, Lau/b;->az()Z

    move-result v0

    if-eqz v0, :cond_22

    if-ne v1, v2, :cond_23

    const-string v0, "l"

    :goto_19
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->b(Ljava/lang/String;)V

    if-ne v1, v2, :cond_26

    const/4 v0, 0x1

    :goto_1f
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->b(I)V

    :cond_22
    return v3

    :cond_23
    const-string v0, "e"

    goto :goto_19

    :cond_26
    const/4 v0, -0x1

    goto :goto_1f
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lau/b;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Lau/b;->w()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->h:Lcom/google/googlenav/L;

    invoke-interface {v0}, Lcom/google/googlenav/L;->a()V

    :cond_10
    invoke-virtual {p1}, Lau/b;->z()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    if-eqz v0, :cond_1d

    iget-object p1, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    :cond_1d
    invoke-virtual {p1}, Lau/b;->al()I

    move-result v0

    if-gez v0, :cond_64

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->h:Lcom/google/googlenav/L;

    const/16 v1, 0x28c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {p1}, Lau/b;->ac()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "ha"

    invoke-static {v0}, LaY/G;->c(Ljava/lang/String;)V

    :cond_3e
    invoke-virtual {p1}, Lau/b;->D()[Lau/x;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string v0, "sa"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->c(Ljava/lang/String;)V

    :cond_49
    invoke-virtual {p1}, Lau/b;->E()[Lau/x;

    move-result-object v0

    if-eqz v0, :cond_54

    const-string v0, "ea"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->c(Ljava/lang/String;)V

    :cond_54
    invoke-virtual {p1}, Lau/b;->aH()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_60

    const-string v0, "a"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->a(Ljava/lang/String;)V

    :cond_60
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->g()V

    goto :goto_4

    :cond_64
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->h:Lcom/google/googlenav/L;

    const/16 v1, 0x28d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public a(Lau/l;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    if-nez v0, :cond_8

    invoke-static {}, Lar/r;->a()V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    invoke-virtual {v0}, Lau/b;->aN()Lau/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0}, Lau/b;->aR()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0, p1}, Lau/b;->a(Lau/l;)V

    goto :goto_7
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 14

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/o;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v1, Lcom/google/googlenav/ui/view/android/o;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/be;->h:Lcom/google/googlenav/L;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->i()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v5

    move v0, p1

    invoke-static/range {v0 .. v6}, LaY/G;->a(ILcom/google/googlenav/ui/view/android/o;Lcom/google/googlenav/L;Lau/b;Lcom/google/googlenav/ui/wizard/bu;Lcom/google/googlenav/ui/wizard/x;Z)Z

    move-result v0

    if-eqz v0, :cond_31

    packed-switch p1, :pswitch_data_c6

    :goto_2c
    :pswitch_2c
    return v6

    :pswitch_2d
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/be;->j()V

    goto :goto_2c

    :cond_31
    sparse-switch p1, :sswitch_data_d2

    const/4 v6, 0x0

    goto :goto_2c

    :sswitch_36
    const-string v0, "o"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->c(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->a(I)I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->h:Lcom/google/googlenav/L;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->d(Lau/b;)V

    goto :goto_2c

    :sswitch_4a
    const-string v0, "t"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->b(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->a(I)I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->h()Lcom/google/googlenav/ui/wizard/br;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v1}, Lau/b;->T()Lau/l;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/google/googlenav/ui/wizard/br;->a(Lau/l;Lcom/google/googlenav/ui/wizard/bs;)V

    goto :goto_2c

    :sswitch_6c
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/be;->j()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->e()Lau/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lau/b;->r(I)V

    invoke-direct {p0, p2, v6}, Lcom/google/googlenav/ui/wizard/be;->a(IZ)V

    goto :goto_2c

    :sswitch_81
    invoke-direct {p0, v7}, Lcom/google/googlenav/ui/wizard/be;->b(I)V

    goto :goto_2c

    :sswitch_85
    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/wizard/be;->b(I)V

    goto :goto_2c

    :sswitch_89
    const-string v0, "od"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->a(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/google/googlenav/ui/wizard/be;->a(I)I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->l()V

    goto :goto_2c

    :sswitch_9a
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/be;->B()V

    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/wizard/be;->a(I)I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->L()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->a()V

    goto :goto_2c

    :sswitch_a9
    iget v0, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    if-ne v0, v8, :cond_bd

    const-string v0, "nc"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    iput-object v9, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    :cond_bd
    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/wizard/be;->a(I)I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->l()V

    goto/16 :goto_2c

    nop

    :pswitch_data_c6
    .packed-switch 0xe8
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    :sswitch_data_d2
    .sparse-switch
        0xd7 -> :sswitch_36
        0xd8 -> :sswitch_4a
        0xd9 -> :sswitch_6c
        0xda -> :sswitch_81
        0xdb -> :sswitch_85
        0xdc -> :sswitch_89
        0xdd -> :sswitch_9a
        0x1f4 -> :sswitch_a9
    .end sparse-switch
.end method

.method protected b()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-static {v0}, LaY/G;->b(Lau/b;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0}, Lau/b;->aB()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v1}, Lau/b;->aU()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/be;->h:Lcom/google/googlenav/L;

    invoke-interface {v2, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lau/b;->b(Ljava/lang/String;)V

    :cond_24
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/wizard/be;->a(IZ)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    instance-of v0, v0, Lau/r;

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/wizard/be;->a(IZ)V

    goto :goto_2a

    :cond_36
    iget v0, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    const/16 v1, 0x268

    invoke-static {v0, v1, p0}, Lcom/google/googlenav/ui/s;->a(Lau/b;ILcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/H;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    goto :goto_2a

    :cond_4b
    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/wizard/be;->a(I)I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->W()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->h()Lcom/google/googlenav/ui/wizard/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/br;->a()V

    :cond_67
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_70
    new-instance v0, Lcom/google/googlenav/ui/view/android/n;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->i()Lbb/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/n;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    goto :goto_2a
.end method

.method protected c()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->L()V

    :cond_e
    return-void
.end method

.method public e()Lau/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    return-object v0
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lau/b;

    return-void
.end method

.method public g()V
    .registers 5

    sget-object v0, Lcom/google/googlenav/ui/wizard/be;->l:Laf/b;

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    if-eqz v1, :cond_2a

    :try_start_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v3, v2}, Lau/b;->b(Ljava/io/DataOutput;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "PROTO_SAVED_DIRECTIONS_DB"

    invoke-interface {v0, v1, v2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    const-string v1, "UI-DL save"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    :cond_2a
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/be;->j()V

    goto :goto_22

    :catch_2e
    move-exception v0

    goto :goto_22
.end method

.method public h()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected i()Lbb/o;
    .registers 6

    const/4 v4, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-static {v0, v4}, LaY/D;->a(Lau/b;I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-static {v2, v4, v1}, LaY/D;->a(Lau/b;ILjava/util/Vector;)Lcom/google/googlenav/ui/bl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-static {v3, v4}, LaY/D;->b(Lau/b;I)Lcom/google/googlenav/ui/bl;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-static {v0, v2, v3, v4, v1}, LaY/D;->a(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lau/b;LaY/G;)Lbb/j;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-static {v0}, Lcom/google/googlenav/ui/s;->a(Lau/b;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    new-array v0, v0, [Laq/a;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/googlenav/ui/n;->av:Laq/a;

    aput-object v4, v0, v3

    :goto_2a
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/be;->D()Ljava/util/Vector;

    move-result-object v3

    invoke-static {v2, v1, v3, v0}, Lbb/o;->a(Lbb/n;Lbb/p;Ljava/util/Vector;[Laq/a;)Lbb/o;

    move-result-object v0

    return-object v0

    :cond_33
    move-object v0, v1

    goto :goto_2a
.end method

.method public o()V
    .registers 4

    iget v0, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/16 v0, 0x1f4

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/be;->a(IILjava/lang/Object;)Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-string v0, "b"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/be;->C()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/be;->a(I)I

    iget v0, p0, Lcom/google/googlenav/ui/wizard/be;->i:I

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/be;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_54

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->h:Lcom/google/googlenav/L;

    invoke-static {v1, v0}, LaY/G;->a(Lcom/google/googlenav/L;Lcom/google/googlenav/ui/wizard/y;)Z

    goto :goto_c

    :sswitch_39
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/be;->a(IZ)V

    goto :goto_c

    :sswitch_48
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/be;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->g:Lau/b;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->c(Lau/b;)V

    goto :goto_c

    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_48
        0x5 -> :sswitch_39
    .end sparse-switch
.end method
