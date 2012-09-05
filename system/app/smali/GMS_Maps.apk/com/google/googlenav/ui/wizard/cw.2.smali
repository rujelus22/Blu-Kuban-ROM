.class Lcom/google/googlenav/ui/wizard/cw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cm;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ct;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/ct;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/ct;Lcom/google/googlenav/ui/wizard/cu;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cw;-><init>(Lcom/google/googlenav/ui/wizard/ct;)V

    return-void
.end method

.method private a(Lax/aB;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 9

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/ak;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/dialog/ak;-><init>()V

    const/16 v1, 0x236

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ak;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/ak;

    move-result-object v0

    const/16 v1, 0x23d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ak;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/ak;

    move-result-object v0

    const/16 v1, 0x23a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ak;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/ak;

    move-result-object v0

    const/16 v1, 0x23c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ak;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/ak;

    move-result-object v0

    const/16 v1, 0x239

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ak;->e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/ak;

    move-result-object v1

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/af;

    const v2, 0x7f0201cb

    const-string v3, "stats_graphic.png"

    new-instance v4, Lcom/google/googlenav/ui/wizard/cz;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/googlenav/ui/wizard/cz;-><init>(Lcom/google/googlenav/ui/wizard/cw;Lcom/google/googlenav/ui/wizard/cu;)V

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v5}, Lcom/google/googlenav/ui/wizard/ct;->d(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/L;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/L;->k()Lay/p;

    move-result-object v5

    invoke-virtual {v5}, Lay/p;->b()Lay/r;

    move-result-object v6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/af;-><init>(Lcom/google/googlenav/ui/view/dialog/ak;ILjava/lang/String;Lcom/google/googlenav/ui/view/dialog/aj;Lax/aB;Lay/r;)V

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/view/android/ap;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/ap;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ct;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ct;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/ct;->f:Lcom/google/googlenav/ui/view/android/bs;

    return-void
.end method

.method private b(Lax/aB;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 9

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/ak;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/dialog/ak;-><init>()V

    const/16 v1, 0x1f1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ak;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/ak;

    move-result-object v0

    const/16 v1, 0x251

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ak;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/ak;

    move-result-object v0

    const/16 v1, 0x24f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ak;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/ak;

    move-result-object v0

    const/16 v1, 0x250

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ak;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/ak;

    move-result-object v0

    const/16 v1, 0x24e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ak;->e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/dialog/ak;

    move-result-object v1

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/af;

    const v2, 0x7f0201cc

    const-string v3, "location_graphic.png"

    new-instance v4, Lcom/google/googlenav/ui/wizard/cz;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/googlenav/ui/wizard/cz;-><init>(Lcom/google/googlenav/ui/wizard/cw;Lcom/google/googlenav/ui/wizard/cu;)V

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v5}, Lcom/google/googlenav/ui/wizard/ct;->d(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/L;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/L;->k()Lay/p;

    move-result-object v5

    invoke-virtual {v5}, Lay/p;->b()Lay/r;

    move-result-object v6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/af;-><init>(Lcom/google/googlenav/ui/view/dialog/ak;ILjava/lang/String;Lcom/google/googlenav/ui/view/dialog/aj;Lax/aB;Lay/r;)V

    return-object v0
.end method

.method private c(Lax/aB;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/V;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cx;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/cx;-><init>(Lcom/google/googlenav/ui/wizard/cw;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/dialog/V;-><init>(Lcom/google/googlenav/ui/view/dialog/Z;)V

    return-object v0
.end method

.method private d(Lax/aB;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aa;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cy;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/cy;-><init>(Lcom/google/googlenav/ui/wizard/cw;)V

    invoke-direct {v0, v1, p1}, Lcom/google/googlenav/ui/view/dialog/aa;-><init>(Lcom/google/googlenav/ui/view/dialog/ae;Lax/aB;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/wizard/cn;Lax/aB;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/cw;->b(Lcom/google/googlenav/ui/wizard/cn;Lax/aB;)V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/wizard/cn;Lax/aB;)V
    .registers 10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ct;->a(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cn;

    move-result-object v0

    if-eq v0, p1, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/ct;->a(Lcom/google/googlenav/ui/wizard/ct;Lcom/google/googlenav/ui/wizard/cn;)Lcom/google/googlenav/ui/wizard/cn;

    sget-object v0, Lcom/google/googlenav/ui/wizard/cu;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ct;->a(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/cn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a8

    :cond_1e
    :goto_1e
    :pswitch_1e
    return-void

    :pswitch_1f
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/cw;->a(Lax/aB;)Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cw;->a(Lcom/google/googlenav/ui/view/android/ap;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ct;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    goto :goto_1e

    :pswitch_2e
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/cw;->c(Lax/aB;)Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cw;->a(Lcom/google/googlenav/ui/view/android/ap;)V

    goto :goto_1e

    :pswitch_36
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/cw;->b(Lax/aB;)Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cw;->a(Lcom/google/googlenav/ui/view/android/ap;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ct;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    goto :goto_1e

    :pswitch_45
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/cw;->d(Lax/aB;)Lcom/google/googlenav/ui/view/android/ap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cw;->a(Lcom/google/googlenav/ui/view/android/ap;)V

    goto :goto_1e

    :pswitch_4d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ct;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x14e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ct;->b(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cj;->d()V

    goto :goto_1e

    :pswitch_6a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ct;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ct;->c(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cv;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ct;->c(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cv;->b()V

    :cond_82
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ct;->a()V

    goto :goto_1e

    :pswitch_88
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ct;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ct;->c(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cv;

    move-result-object v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ct;->c(Lcom/google/googlenav/ui/wizard/ct;)Lcom/google/googlenav/ui/wizard/cv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cv;->a()V

    :cond_a0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cw;->a:Lcom/google/googlenav/ui/wizard/ct;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ct;->a()V

    goto/16 :goto_1e

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1f
        :pswitch_2e
        :pswitch_36
        :pswitch_45
        :pswitch_4d
        :pswitch_6a
        :pswitch_88
    .end packed-switch
.end method
