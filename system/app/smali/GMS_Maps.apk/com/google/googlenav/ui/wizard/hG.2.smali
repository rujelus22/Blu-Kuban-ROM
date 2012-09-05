.class public Lcom/google/googlenav/ui/wizard/hG;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private g:Lat/d;

.field private h:Lcom/google/googlenav/ui/wizard/y;

.field private i:Z

.field private j:J

.field private k:J

.field private l:Lcom/google/googlenav/ui/wizard/hH;

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hG;->m:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hG;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hG;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/hG;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hG;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/util/List;
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->a:Ljava/lang/String;

    const-string v1, "\n"

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/google/googlenav/ui/bg;->ax:Lcom/google/googlenav/ui/bg;

    sget-object v3, Lcom/google/googlenav/ui/bg;->aA:Lcom/google/googlenav/ui/bg;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4, v0}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_1c
    array-length v4, v1

    if-ge v0, v4, :cond_2b

    aget-object v4, v1, v0

    invoke-static {v4, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2b
    return-object v2
.end method


# virtual methods
.method public W_()V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->g:Lat/d;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/wizard/y;

    iget-wide v3, p0, Lcom/google/googlenav/ui/wizard/hG;->j:J

    iget-boolean v5, p0, Lcom/google/googlenav/ui/wizard/hG;->i:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->g:Lat/d;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/wizard/y;

    iput-wide v3, p0, Lcom/google/googlenav/ui/wizard/hG;->j:J

    iput-boolean v5, p0, Lcom/google/googlenav/ui/wizard/hG;->i:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->l()V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->o()V

    :cond_b
    const/4 v0, 0x3

    return v0
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x3

    return v0
.end method

.method public a(II)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hG;->i:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->l:Lcom/google/googlenav/ui/wizard/hH;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->l:Lcom/google/googlenav/ui/wizard/hH;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/hH;->a(II)V

    goto :goto_8
.end method

.method public a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V
    .registers 7

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hG;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hG;->g:Lat/d;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/wizard/y;

    iput-wide p4, p0, Lcom/google/googlenav/ui/wizard/hG;->j:J

    iput-boolean p6, p0, Lcom/google/googlenav/ui/wizard/hG;->i:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->l()V

    return-void
.end method

.method protected b()V
    .registers 5

    new-instance v0, Lcom/google/googlenav/ui/wizard/hH;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/hH;-><init>(Lcom/google/googlenav/ui/wizard/hG;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->l:Lcom/google/googlenav/ui/wizard/hH;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->l:Lcom/google/googlenav/ui/wizard/hH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hH;->show()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(I)V

    iget-wide v0, p0, Lcom/google/googlenav/ui/wizard/hG;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/hG;->k:J

    :cond_28
    return-void
.end method

.method public c()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->l:Lcom/google/googlenav/ui/wizard/hH;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->l:Lcom/google/googlenav/ui/wizard/hH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hH;->dismiss()V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->l:Lcom/google/googlenav/ui/wizard/hH;

    :cond_10
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->g:Lat/d;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/hG;->j:J

    return-void
.end method

.method public e()V
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/ui/wizard/hG;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/googlenav/ui/wizard/hG;->j:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    new-instance v2, Lap/d;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lap/d;->b(I)V

    invoke-virtual {v2, v0, v1}, Lap/d;->a(J)V

    invoke-virtual {v2}, Lap/d;->g()V

    :goto_2c
    return-void

    :cond_2d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->a()V

    goto :goto_2c
.end method

.method public o()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->g:Lat/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->g:Lat/d;

    invoke-interface {v0}, Lat/d;->X()V

    :cond_9
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->r()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->h:Lcom/google/googlenav/ui/wizard/y;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->a()V

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hS;->i()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bu;->r()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hS;->i()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bu;->l()V

    :cond_3e
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_62

    goto :goto_f

    :sswitch_46
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hM;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;)V

    goto :goto_f

    :sswitch_4e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILaq/b;)V

    goto :goto_f

    :sswitch_56
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hG;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->b(I)V

    goto :goto_f

    nop

    :sswitch_data_62
    .sparse-switch
        0x6 -> :sswitch_46
        0xc -> :sswitch_4e
        0x10 -> :sswitch_56
    .end sparse-switch
.end method

.method public q()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hG;->a()V

    return-void
.end method
