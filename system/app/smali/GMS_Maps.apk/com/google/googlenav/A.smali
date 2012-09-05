.class public Lcom/google/googlenav/A;
.super Ljava/lang/Object;


# static fields
.field private static i:J


# instance fields
.field private final a:Lcom/google/googlenav/L;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lau/k;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private final j:LaE/h;

.field private k:LaJ/u;

.field private final l:Lcom/google/googlenav/ui/at;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2ee0

    sput-wide v0, Lcom/google/googlenav/A;->i:J

    return-void
.end method

.method public constructor <init>(LaE/h;LaJ/u;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/L;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/A;->m:Z

    iput-object p1, p0, Lcom/google/googlenav/A;->j:LaE/h;

    iput-object p2, p0, Lcom/google/googlenav/A;->k:LaJ/u;

    iput-object p3, p0, Lcom/google/googlenav/A;->l:Lcom/google/googlenav/ui/at;

    iput-object p4, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    return-void
.end method

.method private a(Lau/x;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lau/x;->c()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v0, "locationMemory"

    invoke-static {v0}, Lau/y;->b(Ljava/lang/String;)Lau/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lau/y;->a(Lau/x;)Z

    goto :goto_8
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LaJ/B;II)V
    .registers 15

    new-instance v0, Lcom/google/googlenav/ah;

    const/16 v6, 0xa

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ah;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/google/googlenav/A;->k:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->f()LaJ/H;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {v2, v0}, LaJ/H;->a(LaJ/B;)LaJ/H;

    move-result-object v0

    const/4 v2, -0x1

    if-ne p6, v2, :cond_29

    iget-object v2, p0, Lcom/google/googlenav/A;->k:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->a()I

    move-result p6

    :cond_29
    const/4 v2, -0x1

    if-ne p7, v2, :cond_32

    iget-object v2, p0, Lcom/google/googlenav/A;->k:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->b()I

    move-result p7

    :cond_32
    invoke-static {v1, v0, p6, p7}, Lcom/google/googlenav/aV;->a([Lcom/google/googlenav/ah;LaJ/H;II)Lcom/google/googlenav/aV;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/aV;Z)LaY/aG;

    move-result-object v0

    invoke-virtual {v0}, LaY/aG;->bI()V

    return-void
.end method

.method private static b(Lau/k;)Z
    .registers 2

    invoke-interface {p0}, Lau/k;->as()Lau/x;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lau/k;->as()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->q()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_10
    invoke-interface {p0}, Lau/k;->au()Lau/x;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Lau/k;->au()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->q()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private e()LaJ/H;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/A;->k:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->f()LaJ/H;

    move-result-object v1

    invoke-virtual {v1, v0}, LaJ/H;->a(LaJ/B;)LaJ/H;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/A;->m:Z

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/googlenav/A;->l:Lcom/google/googlenav/ui/at;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/at;->p()LaJ/Y;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v0, v1}, LaJ/H;->a(LaJ/Y;)LaJ/H;

    move-result-object v0

    :cond_20
    :goto_20
    return-object v0

    :cond_21
    const/16 v1, 0x16

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/H;->a(LaJ/Y;)LaJ/H;

    move-result-object v0

    goto :goto_20
.end method

.method private f()V
    .registers 5

    const/16 v3, 0x4e6

    iget-object v1, p0, Lcom/google/googlenav/A;->d:Lau/k;

    invoke-virtual {p0}, Lcom/google/googlenav/A;->c()V

    iget-object v0, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    invoke-interface {v0}, Lcom/google/googlenav/L;->a()V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v2}, LaE/h;->j()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v2}, LaE/h;->m()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v2}, LaE/h;->A()Lt/y;

    move-result-object v2

    invoke-static {v0, v2}, Lau/x;->b(LaJ/B;Lt/y;)Lau/x;

    move-result-object v0

    :cond_2d
    invoke-interface {v1}, Lau/k;->as()Lau/x;

    move-result-object v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Lau/k;->as()Lau/x;

    move-result-object v2

    invoke-virtual {v2}, Lau/x;->q()Z

    move-result v2

    if-eqz v2, :cond_68

    if-nez v0, :cond_48

    iget-object v2, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    :cond_48
    invoke-interface {v1, v0}, Lau/k;->a(Lau/x;)V

    :cond_4b
    :goto_4b
    instance-of v0, v1, Lau/b;

    if-nez v0, :cond_8f

    new-instance v0, Lau/r;

    invoke-direct {v0, v1}, Lau/r;-><init>(Lau/k;)V

    :goto_54
    invoke-interface {v0}, Lau/k;->as()Lau/x;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Lau/k;->au()Lau/x;

    move-result-object v1

    if-nez v1, :cond_87

    :cond_60
    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    check-cast v0, Lau/b;

    invoke-interface {v1, v0}, Lcom/google/googlenav/L;->c(Lau/b;)V

    :goto_67
    return-void

    :cond_68
    invoke-interface {v1}, Lau/k;->au()Lau/x;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Lau/k;->au()Lau/x;

    move-result-object v2

    invoke-virtual {v2}, Lau/x;->q()Z

    move-result v2

    if-eqz v2, :cond_4b

    if-nez v0, :cond_83

    iget-object v2, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    :cond_83
    invoke-interface {v1, v0}, Lau/k;->b(Lau/x;)V

    goto :goto_4b

    :cond_87
    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    check-cast v0, Lau/b;

    invoke-interface {v1, v0}, Lcom/google/googlenav/L;->a(Lau/b;)V

    goto :goto_67

    :cond_8f
    move-object v0, v1

    goto :goto_54
.end method


# virtual methods
.method public a(LaJ/u;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/A;->k:LaJ/u;

    return-void
.end method

.method public a(Lau/k;)V
    .registers 8

    invoke-virtual {p0}, Lcom/google/googlenav/A;->c()V

    iput-object p1, p0, Lcom/google/googlenav/A;->d:Lau/k;

    invoke-interface {p1}, Lau/k;->as()Lau/x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/A;->a(Lau/x;)V

    invoke-interface {p1}, Lau/k;->au()Lau/x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/A;->a(Lau/x;)V

    iget-object v0, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v0}, LaE/h;->j()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p1}, Lcom/google/googlenav/A;->b(Lau/k;)Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_29
    invoke-direct {p0}, Lcom/google/googlenav/A;->f()V

    :goto_2c
    return-void

    :cond_2d
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    sget-wide v2, Lcom/google/googlenav/A;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/A;->h:J

    iget-object v0, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    const/16 v1, 0x242

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/L;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V

    goto :goto_2c
.end method

.method public a(Lcom/google/googlenav/ah;)V
    .registers 10

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/google/googlenav/A;->f:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v2

    :goto_d
    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v3

    :goto_13
    iget-object v1, p0, Lcom/google/googlenav/A;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/googlenav/A;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v5

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/A;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LaJ/B;II)V

    return-void

    :cond_21
    iget-object v2, p0, Lcom/google/googlenav/A;->f:Ljava/lang/String;

    goto :goto_d

    :cond_24
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;IIZZZ)V
    .registers 16

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/A;->c:Ljava/lang/String;

    if-ne p4, v1, :cond_c

    if-eq p5, v1, :cond_58

    :cond_c
    iget-object v1, p0, Lcom/google/googlenav/A;->k:LaJ/u;

    invoke-virtual {v1, p4, p5}, LaJ/u;->d(II)V

    iput-boolean v5, p0, Lcom/google/googlenav/A;->m:Z

    :goto_13
    invoke-virtual {p3}, Lcom/google/googlenav/c;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_c2

    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    if-nez v1, :cond_57

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/google/googlenav/bc;->a(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/google/googlenav/bc;->c(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/google/googlenav/bc;->f(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    const/16 v1, 0x40a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    :cond_4e
    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    :cond_57
    return-void

    :cond_58
    iput-boolean v6, p0, Lcom/google/googlenav/A;->m:Z

    goto :goto_13

    :pswitch_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/googlenav/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :pswitch_77
    iget-object v1, p0, Lcom/google/googlenav/A;->k:LaJ/u;

    invoke-virtual {p3}, Lcom/google/googlenav/c;->b()LaJ/B;

    move-result-object v2

    invoke-virtual {v1, v2}, LaJ/u;->c(LaJ/B;)V

    goto :goto_1a

    :pswitch_81
    iget-object v1, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v1}, LaE/h;->j()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v1}, LaE/h;->k()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v1}, LaE/h;->m()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-direct {p0}, Lcom/google/googlenav/A;->e()LaJ/H;

    move-result-object v0

    goto/16 :goto_1a

    :cond_9f
    iput-object p1, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/A;->c:Ljava/lang/String;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    sget-wide v3, Lcom/google/googlenav/A;->i:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/googlenav/A;->h:J

    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    const/16 v2, 0x242

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto/16 :goto_1a

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_77
        :pswitch_81
    .end packed-switch
.end method

.method public a()Z
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/A;->e:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/google/googlenav/A;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(Lcom/google/googlenav/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 16

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v8, 0x1

    if-ne p5, v1, :cond_7

    if-eq p6, v1, :cond_c

    :cond_7
    iget-object v1, p0, Lcom/google/googlenav/A;->k:LaJ/u;

    invoke-virtual {v1, p5, p6}, LaJ/u;->d(II)V

    :cond_c
    invoke-virtual {p1}, Lcom/google/googlenav/c;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_80

    :cond_13
    :goto_13
    :pswitch_13
    return v0

    :pswitch_14
    iput-object p2, p0, Lcom/google/googlenav/A;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/A;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/A;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/googlenav/bc;->a(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    move v0, v8

    goto :goto_13

    :pswitch_36
    invoke-virtual {p1}, Lcom/google/googlenav/c;->b()LaJ/B;

    move-result-object v5

    :goto_3a
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/A;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LaJ/B;II)V

    invoke-virtual {p0}, Lcom/google/googlenav/A;->d()V

    move v0, v8

    goto :goto_13

    :pswitch_49
    iget-object v0, p0, Lcom/google/googlenav/A;->k:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->c()LaJ/B;

    move-result-object v5

    goto :goto_3a

    :pswitch_50
    iget-object v1, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v1}, LaE/h;->j()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v5

    goto :goto_3a

    :cond_67
    iput-object p2, p0, Lcom/google/googlenav/A;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/A;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/A;->g:Ljava/lang/String;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    sget-wide v2, Lcom/google/googlenav/A;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/A;->h:J

    move v0, v8

    goto :goto_13

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_14
        :pswitch_36
        :pswitch_50
        :pswitch_49
        :pswitch_13
    .end packed-switch
.end method

.method public b()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/googlenav/A;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6e

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->c()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v4}, LaE/h;->m()Z

    move-result v4

    if-nez v4, :cond_24

    iget-wide v4, p0, Lcom/google/googlenav/A;->h:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_6e

    :cond_24
    iget-object v2, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    if-eqz v2, :cond_66

    new-instance v2, Lcom/google/googlenav/bc;

    invoke-direct {v2}, Lcom/google/googlenav/bc;-><init>()V

    iget-object v3, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    iget-object v3, p0, Lcom/google/googlenav/A;->c:Ljava/lang/String;

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    const/16 v3, 0x40a

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v5, p0, Lcom/google/googlenav/A;->c:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    :cond_4d
    iget-object v1, p0, Lcom/google/googlenav/A;->j:LaE/h;

    invoke-virtual {v1}, LaE/h;->m()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-direct {p0}, Lcom/google/googlenav/A;->e()LaJ/H;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    :cond_5c
    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/L;

    invoke-virtual {v2}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    :cond_65
    :goto_65
    return v0

    :cond_66
    iget-object v1, p0, Lcom/google/googlenav/A;->d:Lau/k;

    if-eqz v1, :cond_65

    invoke-direct {p0}, Lcom/google/googlenav/A;->f()V

    goto :goto_65

    :cond_6e
    move v0, v1

    goto :goto_65
.end method

.method public c()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/A;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/A;->d:Lau/k;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/A;->h:J

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/A;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/A;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/A;->g:Ljava/lang/String;

    return-void
.end method
