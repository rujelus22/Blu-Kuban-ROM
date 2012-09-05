.class public LaZ/j;
.super Lcom/google/android/maps/driveabout/vector/aA;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Ljava/util/List;

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(LaY/i;Lcom/google/googlenav/D;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIZ)V
    .registers 20

    invoke-interface {p2}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v1}, LaJ/B;->c()I

    move-result v1

    invoke-interface {p2}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v2

    invoke-virtual {v2}, LaJ/B;->e()I

    move-result v2

    invoke-static {v1, v2}, Lt/L;->b(II)Lt/L;

    move-result-object v2

    const-string v7, ""

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/vector/aA;-><init>(Lt/L;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p2}, Lcom/google/googlenav/D;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, LaZ/j;->e:Ljava/util/List;

    move/from16 v0, p7

    iput v0, p0, LaZ/j;->f:I

    move/from16 v0, p8

    iput v0, p0, LaZ/j;->g:I

    iget v1, p0, LaZ/j;->g:I

    invoke-virtual {p0, v1}, LaZ/j;->a(I)I

    move-result v1

    iput v1, p0, LaZ/j;->h:I

    invoke-interface {p2}, Lcom/google/googlenav/D;->f()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, LaZ/j;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/e;)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_c

    iget-object v0, p0, LaZ/j;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    move v0, v1

    :goto_9
    return v0

    :cond_a
    move v0, v2

    goto :goto_9

    :cond_c
    iget-object v0, p0, LaZ/j;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    move v0, v1

    goto :goto_9

    :cond_12
    iget-object v3, p0, LaZ/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/google/googlenav/e;->a()Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget v0, p0, LaZ/j;->b:I

    invoke-virtual {p1}, Lcom/google/googlenav/e;->b()I

    move-result v3

    if-ne v0, v3, :cond_34

    iget v0, p0, LaZ/j;->c:I

    invoke-virtual {p1}, Lcom/google/googlenav/e;->c()I

    move-result v3

    if-eq v0, v3, :cond_35

    :cond_34
    move v2, v1

    :cond_35
    move v0, v2

    goto :goto_9
.end method

.method public e()Lt/y;
    .registers 6

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->w()Z

    move-result v1

    if-nez v1, :cond_d

    :goto_c
    :pswitch_c
    return-object v0

    :cond_d
    iget-object v1, p0, LaZ/j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v0

    invoke-virtual {v0}, Lr/l;->f()Ljava/util/Set;

    move-result-object v1

    iget-object v0, p0, LaZ/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_c

    :pswitch_37
    iget-object v0, p0, LaZ/j;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    goto :goto_c

    :cond_40
    iget-object v0, p0, LaZ/j;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    goto :goto_c

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_37
    .end packed-switch
.end method

.method public f()I
    .registers 2

    iget v0, p0, LaZ/j;->h:I

    neg-int v0, v0

    return v0
.end method

.method public q_()I
    .registers 2

    iget v0, p0, LaZ/j;->f:I

    return v0
.end method

.method public r()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, LaZ/j;->d:Ljava/lang/Object;

    return-object v0
.end method
