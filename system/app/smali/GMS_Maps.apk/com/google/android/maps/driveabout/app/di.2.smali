.class public Lcom/google/android/maps/driveabout/app/di;
.super Lcom/google/android/maps/driveabout/vector/aM;


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lu/x;)V
    .registers 9

    invoke-virtual {p2}, Lu/x;->n()Lt/P;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-static {p2}, Lcom/google/android/maps/driveabout/app/di;->a(Lu/x;)[I

    move-result-object v4

    const v0, 0x7f090015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/aM;-><init>(Lt/P;II[IF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/di;->a:Z

    return-void
.end method

.method private static a(Lu/x;)[I
    .registers 8

    const/4 v2, 0x1

    invoke-virtual {p0}, Lu/x;->d()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lu/x;->n()Lt/P;

    move-result-object v0

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    new-array v4, v0, [I

    invoke-virtual {p0}, Lu/x;->u()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    :goto_1a
    array-length v1, v4

    if-ge v0, v1, :cond_22

    aput v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_22
    move-object v0, v4

    goto :goto_8

    :cond_24
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/C;

    invoke-virtual {v0}, Lu/C;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_58

    move v1, v2

    :goto_3c
    invoke-virtual {v0}, Lu/C;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_42
    invoke-virtual {v0}, Lu/C;->c()I

    move-result v6

    if-gt v3, v6, :cond_28

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :pswitch_4d
    const/4 v1, 0x2

    goto :goto_3c

    :pswitch_4f
    const/4 v1, 0x3

    goto :goto_3c

    :pswitch_51
    const/4 v1, 0x4

    goto :goto_3c

    :pswitch_53
    const/4 v1, 0x5

    goto :goto_3c

    :cond_55
    move-object v0, v4

    goto :goto_8

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4f
        :pswitch_51
        :pswitch_53
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 6

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-lez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    if-eq v0, v1, :cond_17

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-ne v0, v1, :cond_20

    :cond_17
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/di;->a(I)V

    :goto_1c
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    goto :goto_6

    :cond_20
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/di;->a(I)V

    goto :goto_1c
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/di;->a:Z

    if-nez v1, :cond_e

    const/high16 v1, 0x4170

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_17

    :cond_e
    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/di;->c(Z)V

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/aM;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/di;->a:Z

    return-void
.end method
