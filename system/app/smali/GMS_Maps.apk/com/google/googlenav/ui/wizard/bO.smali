.class public Lcom/google/googlenav/ui/wizard/bO;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements Lax/ao;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput p2, p0, Lcom/google/googlenav/ui/wizard/bO;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lai/f;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Lai/f;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v0}, Lai/f;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_1a} :catch_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_24

    move-object v0, v1

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    const-string v1, "HISTORY_SUMMARY_WIZARD"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_22
    const/4 v0, 0x0

    goto :goto_1b

    :catch_24
    move-exception v0

    const-string v1, "HISTORY_SUMMARY_WIZARD"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method private a(Lcom/google/googlenav/ui/wizard/bU;Lam/b;)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/bR;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/google/googlenav/ui/wizard/bR;-><init>(Lcom/google/googlenav/ui/wizard/bO;Lap/c;Lam/b;Lcom/google/googlenav/ui/wizard/bU;)V

    invoke-virtual {v1}, Lap/b;->g()V

    return-void
.end method


# virtual methods
.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bO;->a()V

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x3

    goto :goto_11
.end method

.method public a(Lam/b;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    invoke-virtual {p1, v3}, Lam/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v1, Lbd/a;

    invoke-direct {v1, p1, p0}, Lbd/a;-><init>(Lam/b;Lcom/google/googlenav/ui/wizard/bO;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/bO;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bO;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/googlenav/ui/wizard/bU;

    sget-object v2, Lcom/google/googlenav/ui/wizard/bU;->a:Lcom/google/googlenav/ui/wizard/bU;

    aput-object v2, v1, v0

    sget-object v2, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/bU;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v3, Lcom/google/googlenav/ui/wizard/bU;->c:Lcom/google/googlenav/ui/wizard/bU;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/googlenav/ui/wizard/bU;->d:Lcom/google/googlenav/ui/wizard/bU;

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_2f
    if-ge v0, v2, :cond_49

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/bU;->a()I

    move-result v4

    invoke-static {p1, v4}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    invoke-direct {p0, v3, p1}, Lcom/google/googlenav/ui/wizard/bO;->a(Lcom/google/googlenav/ui/wizard/bU;Lam/b;)V

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_43
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bO;->a()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bO;->e()V

    :cond_49
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/hh;Lam/b;)V
    .registers 7

    const/4 v0, -0x1

    new-instance v2, Lam/b;

    sget-object v1, LbF/G;->c:Lam/e;

    invoke-direct {v2, v1}, Lam/b;-><init>(Lam/e;)V

    sget-object v1, Lcom/google/googlenav/ui/wizard/bT;->a:[I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/hh;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_40

    move v1, v0

    :goto_14
    const/4 v3, 0x4

    invoke-static {p2, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lam/b;->a(ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lam/b;->a(ILam/b;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bO;->b:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v3, Lcom/google/googlenav/ui/wizard/bQ;

    invoke-direct {v3, p0, p1}, Lcom/google/googlenav/ui/wizard/bQ;-><init>(Lcom/google/googlenav/ui/wizard/bO;Lcom/google/googlenav/ui/wizard/hh;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/googlenav/ui/wizard/hM;->a(Lam/b;Lcom/google/googlenav/ui/wizard/hh;ZLcom/google/googlenav/ui/wizard/hg;)V

    return-void

    :pswitch_30
    invoke-static {}, Lax/aA;->s()V

    const/16 v1, 0xe

    const/16 v0, 0x10

    goto :goto_14

    :pswitch_38
    invoke-static {}, Lax/aA;->t()V

    const/16 v1, 0xf

    const/16 v0, 0x11

    goto :goto_14

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_30
        :pswitch_38
    .end packed-switch
.end method

.method protected b()V
    .registers 8

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lax/an;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/google/googlenav/ui/wizard/bO;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lax/an;-><init>(Lax/ao;I)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x1a2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    invoke-static {}, Lax/aA;->k()V

    return-void
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x155

    new-instance v2, Lcom/google/googlenav/ui/wizard/bP;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/bP;-><init>(Lcom/google/googlenav/ui/wizard/bO;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILcom/google/googlenav/ui/wizard/cv;)V

    return-void
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bO;->a()V

    return-void
.end method
