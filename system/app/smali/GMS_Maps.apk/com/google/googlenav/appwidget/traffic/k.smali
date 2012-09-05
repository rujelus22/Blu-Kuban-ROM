.class Lcom/google/googlenav/appwidget/traffic/k;
.super Lat/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/googlenav/appwidget/traffic/l;

.field private final c:Lau/r;

.field private final d:Lcom/google/googlenav/appwidget/traffic/h;

.field private final e:Lcom/google/googlenav/appwidget/traffic/c;

.field private final f:Laf/a;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/appwidget/traffic/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/appwidget/traffic/l;Lcom/google/googlenav/appwidget/traffic/c;Lau/j;Lcom/google/googlenav/appwidget/traffic/h;Laf/a;)V
    .registers 7

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/appwidget/traffic/k;->b:Lcom/google/googlenav/appwidget/traffic/l;

    new-instance v0, Lau/r;

    invoke-direct {v0, p3}, Lau/r;-><init>(Lau/k;)V

    iput-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    iput-object p4, p0, Lcom/google/googlenav/appwidget/traffic/k;->d:Lcom/google/googlenav/appwidget/traffic/h;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/traffic/k;->e:Lcom/google/googlenav/appwidget/traffic/c;

    iput-object p5, p0, Lcom/google/googlenav/appwidget/traffic/k;->f:Laf/a;

    iget v0, p2, Lcom/google/googlenav/appwidget/traffic/c;->a:I

    iput v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->g:I

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 6

    packed-switch p1, :pswitch_data_2e

    const/16 v0, 0x4e5

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    :pswitch_a
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/appwidget/traffic/k;->e:Lcom/google/googlenav/appwidget/traffic/c;

    iget-object v3, v3, Lcom/google/googlenav/appwidget/traffic/c;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_1f
    const/16 v0, 0x290

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_26
    const/16 v0, 0x294

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_a
        :pswitch_a
        :pswitch_1f
        :pswitch_26
    .end packed-switch
.end method

.method private a(II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id"

    invoke-static {v1, p1, v0}, Laf/m;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/k;->d:Lcom/google/googlenav/appwidget/traffic/h;

    invoke-virtual {v1}, Lcom/google/googlenav/appwidget/traffic/h;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const-string v2, "c"

    invoke-static {v2, v1, v0}, Laf/m;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const-string v1, "rc"

    invoke-static {v1, p2, v0}, Laf/m;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x48

    const-string v2, "wr"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public X()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->X()V

    return-void
.end method

.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0, p1}, Lau/r;->a(Ljava/io/DataOutput;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 14

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0, p1}, Lau/r;->a(Ljava/io/DataInput;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->z()I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/k;->d:Lcom/google/googlenav/appwidget/traffic/h;

    iget v2, p0, Lcom/google/googlenav/appwidget/traffic/k;->g:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/appwidget/traffic/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/appwidget/traffic/h;->a(ILjava/lang/String;)V

    iget v1, p0, Lcom/google/googlenav/appwidget/traffic/k;->g:I

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/appwidget/traffic/k;->a(II)V

    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->b:Lcom/google/googlenav/appwidget/traffic/l;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->b:Lcom/google/googlenav/appwidget/traffic/l;

    iget v1, p0, Lcom/google/googlenav/appwidget/traffic/k;->g:I

    invoke-interface {v0, v1}, Lcom/google/googlenav/appwidget/traffic/l;->a(I)V

    :cond_2e
    const/4 v0, 0x1

    goto :goto_9

    :pswitch_30
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->f:Laf/a;

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v5

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->aD()LaJ/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v1}, Lau/r;->aE()LaJ/B;

    move-result-object v9

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v1}, Lau/r;->Q()Z

    move-result v1

    if-eqz v1, :cond_ae

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->P()I

    move-result v0

    int-to-long v7, v0

    :goto_51
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->N()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v1}, Lau/r;->aW()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v10, 0x4059

    mul-double/2addr v2, v10

    add-int v4, v0, v1

    int-to-double v10, v4

    div-double/2addr v2, v10

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v2, v10

    double-to-int v4, v2

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v10, v0, v2

    add-long v2, v5, v10

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->d:Lcom/google/googlenav/appwidget/traffic/h;

    iget v1, p0, Lcom/google/googlenav/appwidget/traffic/k;->g:I

    invoke-virtual/range {v0 .. v8}, Lcom/google/googlenav/appwidget/traffic/h;->a(IJIJJ)V

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->e:Lcom/google/googlenav/appwidget/traffic/c;

    iget-wide v0, v0, Lcom/google/googlenav/appwidget/traffic/c;->l:J

    const-wide/32 v7, 0x3a980

    add-long/2addr v0, v7

    cmp-long v0, v2, v0

    if-lez v0, :cond_91

    add-long v0, v5, v10

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlenav/appwidget/traffic/k;->d:Lcom/google/googlenav/appwidget/traffic/h;

    iget v3, p0, Lcom/google/googlenav/appwidget/traffic/k;->g:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/appwidget/traffic/h;->b(IJ)V

    :cond_91
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->e:Lcom/google/googlenav/appwidget/traffic/c;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/c;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->e:Lcom/google/googlenav/appwidget/traffic/c;

    iget-object v0, v0, Lcom/google/googlenav/appwidget/traffic/c;->e:Ljava/lang/Integer;

    if-nez v0, :cond_23

    :cond_9d
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->d:Lcom/google/googlenav/appwidget/traffic/h;

    iget v1, p0, Lcom/google/googlenav/appwidget/traffic/k;->g:I

    invoke-virtual {v9}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {v9}, LaJ/B;->e()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/appwidget/traffic/h;->a(III)V

    goto/16 :goto_23

    :cond_ae
    invoke-virtual {v0, v9}, LaJ/B;->b(LaJ/B;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    goto :goto_51

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_30
    .end packed-switch
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c_()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->c_()Z

    move-result v0

    return v0
.end method

.method public g_()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->g_()Z

    move-result v0

    return v0
.end method

.method public h_()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->h_()Z

    move-result v0

    return v0
.end method

.method public l_()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->l_()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->r()Z

    move-result v0

    return v0
.end method

.method public z_()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/k;->c:Lau/r;

    invoke-virtual {v0}, Lau/r;->z_()Z

    move-result v0

    return v0
.end method
