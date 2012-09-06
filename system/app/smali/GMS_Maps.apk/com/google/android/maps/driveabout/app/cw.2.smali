.class public Lcom/google/android/maps/driveabout/app/cW;
.super Lcom/google/android/maps/driveabout/vector/aM;
.source "SourceFile"


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lo/x;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p2}, Lo/x;->n()Ln/U;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-static {p2}, Lcom/google/android/maps/driveabout/app/cW;->a(Lo/x;)[I

    move-result-object v4

    const v0, 0x7f0b0015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/aM;-><init>(Ln/U;II[IF)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cW;->a:Z

    .line 41
    return-void
.end method

.method private static a(Lo/x;)[I
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0}, Lo/x;->d()I

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    const/4 v0, 0x0

    .line 78
    :goto_8
    return-object v0

    .line 47
    :cond_9
    invoke-virtual {p0}, Lo/x;->n()Ln/U;

    move-result-object v0

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    new-array v4, v0, [I

    .line 48
    invoke-virtual {p0}, Lo/x;->u()Ljava/util/Collection;

    move-result-object v0

    .line 49
    if-nez v0, :cond_24

    .line 50
    const/4 v0, 0x0

    :goto_1a
    array-length v1, v4

    if-ge v0, v1, :cond_22

    .line 51
    aput v2, v4, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_22
    move-object v0, v4

    .line 53
    goto :goto_8

    .line 55
    :cond_24
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/C;

    .line 57
    invoke-virtual {v0}, Lo/C;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_58

    move v1, v2

    .line 74
    :goto_3c
    invoke-virtual {v0}, Lo/C;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_42
    invoke-virtual {v0}, Lo/C;->c()I

    move-result v6

    if-gt v3, v6, :cond_28

    .line 75
    aput v1, v4, v3

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 59
    :pswitch_4d
    const/4 v1, 0x2

    .line 60
    goto :goto_3c

    .line 62
    :pswitch_4f
    const/4 v1, 0x3

    .line 63
    goto :goto_3c

    .line 65
    :pswitch_51
    const/4 v1, 0x4

    .line 66
    goto :goto_3c

    .line 68
    :pswitch_53
    const/4 v1, 0x5

    .line 69
    goto :goto_3c

    :cond_55
    move-object v0, v4

    .line 78
    goto :goto_8

    .line 57
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
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-lez v0, :cond_7

    .line 114
    :goto_6
    return-void

    .line 107
    :cond_7
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    if-eq v0, v1, :cond_17

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne v0, v1, :cond_20

    .line 109
    :cond_17
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cW;->b(I)V

    .line 113
    :goto_1c
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    goto :goto_6

    .line 111
    :cond_20
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cW;->b(I)V

    goto :goto_1c
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    .line 95
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/cW;->a:Z

    if-nez v1, :cond_e

    const/high16 v1, 0x4170

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_17

    :cond_e
    const/4 v0, 0x1

    .line 97
    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cW;->c(Z)V

    .line 99
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    move-result v0

    return v0

    .line 95
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/cW;->a:Z

    .line 90
    return-void
.end method
