.class public Lx/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;Lx/q;)Lx/v;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 60
    invoke-static {}, Lx/v;->a()Lx/v;

    move-result-object v0

    .line 106
    :cond_d
    :goto_d
    return-object v0

    .line 62
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    .line 66
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 67
    aput v1, v5, v3

    .line 68
    invoke-virtual {v0}, Ln/U;->b()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v1, v7

    .line 69
    invoke-virtual {v0}, Ln/U;->c()Ln/Q;

    move-result-object v7

    invoke-virtual {v0, v2}, Ln/U;->a(I)Ln/Q;

    move-result-object v0

    invoke-virtual {v7, v0}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    .line 70
    add-int/lit8 v0, v1, 0x1

    .line 72
    :goto_41
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1c

    .line 74
    :cond_46
    aput v1, v5, v3

    .line 76
    mul-int/lit8 v0, v1, 0x2

    new-array v3, v0, [D

    .line 78
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    invoke-static {v0, v2, v3, v2}, Lx/o;->a(Ln/U;Z[DI)V

    .line 80
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 81
    aget v6, v5, v1

    invoke-static {v0, v4, v3, v6}, Lx/o;->a(Ln/U;Z[DI)V

    .line 82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_62

    .line 85
    :cond_77
    new-instance v1, Lx/g;

    invoke-static {v3, v5}, Lx/r;->a([D[I)Lx/r;

    move-result-object v0

    invoke-direct {v1, v0}, Lx/g;-><init>(Lx/r;)V

    .line 86
    sget-object v0, Lx/q;->e:Lx/q;

    if-ne p1, v0, :cond_aa

    .line 87
    invoke-static {v1}, Lx/h;->b(Lx/g;)Lx/n;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_aa

    .line 89
    new-instance v1, Lx/k;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verification failed, the polygon violates "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lx/n;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Lx/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    invoke-virtual {v1, v0}, Lx/k;->a(Lx/n;)V

    .line 92
    throw v1

    .line 96
    :cond_aa
    :try_start_aa
    invoke-static {v1}, Lx/h;->a(Lx/g;)Lx/v;

    move-result-object v0

    .line 97
    sget-object v2, Lx/p;->a:[I

    invoke-virtual {p1}, Lx/q;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e2

    goto/16 :goto_d

    .line 101
    :pswitch_bb
    invoke-virtual {v0, v1}, Lx/v;->a(Lx/g;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 102
    new-instance v0, Lx/k;

    const-string v2, "Could not tessellate polygon, area not equal"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lx/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_ca
    .catch Lx/k; {:try_start_aa .. :try_end_ca} :catch_ca

    .line 107
    :catch_ca
    move-exception v0

    .line 108
    sget-object v2, Lx/p;->a:[I

    invoke-virtual {p1}, Lx/q;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ec

    .line 113
    :goto_d6
    :pswitch_d6
    throw v0

    .line 111
    :pswitch_d7
    invoke-static {v1}, Lx/h;->b(Lx/g;)Lx/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/k;->a(Lx/n;)V

    goto :goto_d6

    :cond_df
    move v0, v1

    goto/16 :goto_41

    .line 97
    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_bb
        :pswitch_bb
    .end packed-switch

    .line 108
    :pswitch_data_ec
    .packed-switch 0x2
        :pswitch_d7
        :pswitch_d6
        :pswitch_d7
    .end packed-switch
.end method

.method private static a(Ln/U;Z[DI)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 120
    new-instance v4, Ln/Q;

    invoke-direct {v4}, Ln/Q;-><init>()V

    .line 122
    if-eqz p1, :cond_49

    invoke-virtual {p0}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 123
    :goto_f
    if-eqz p1, :cond_4b

    const/4 v0, -0x1

    .line 124
    :goto_12
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v1

    .line 125
    invoke-virtual {p0}, Ln/U;->c()Ln/Q;

    move-result-object v5

    invoke-virtual {p0, v2}, Ln/U;->a(I)Ln/Q;

    move-result-object v6

    invoke-virtual {v5, v6}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    add-int/lit8 v1, v1, -0x1

    .line 127
    :cond_26
    :goto_26
    if-ge v2, v1, :cond_4d

    .line 128
    mul-int v5, v0, v2

    add-int/2addr v5, v3

    invoke-virtual {p0, v5, v4}, Ln/U;->a(ILn/Q;)V

    .line 129
    add-int v5, p3, v2

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4}, Ln/Q;->f()I

    move-result v6

    int-to-double v6, v6

    aput-wide v6, p2, v5

    .line 130
    add-int v5, p3, v2

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ln/Q;->g()I

    move-result v6

    int-to-double v6, v6

    aput-wide v6, p2, v5

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_49
    move v3, v2

    .line 122
    goto :goto_f

    .line 123
    :cond_4b
    const/4 v0, 0x1

    goto :goto_12

    .line 132
    :cond_4d
    return-void
.end method

.method public static a(Lx/v;Lcom/google/android/maps/driveabout/vector/bI;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->b()I

    move-result v0

    invoke-virtual {p0}, Lx/v;->d()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/bI;->b(I)V

    .line 165
    invoke-virtual {p0}, Lx/v;->d()I

    move-result v2

    move v0, v1

    .line 166
    :goto_14
    if-ge v0, v2, :cond_2d

    .line 167
    invoke-virtual {p0, v0, v1}, Lx/v;->a(II)I

    move-result v3

    add-int/2addr v3, p2

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lx/v;->a(II)I

    move-result v4

    add-int/2addr v4, p2

    const/4 v5, 0x2

    invoke-virtual {p0, v0, v5}, Lx/v;->a(II)I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bI;->a(III)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 170
    :cond_2d
    return-void
.end method

.method public static a(Lx/v;Lcom/google/android/maps/driveabout/vector/dY;Ln/Q;I)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    new-instance v1, Ln/Q;

    invoke-direct {v1}, Ln/Q;-><init>()V

    .line 146
    invoke-virtual {p0}, Lx/v;->e()I

    move-result v2

    .line 147
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/dY;->a(I)V

    .line 148
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_2a

    .line 149
    invoke-virtual {p0, v0}, Lx/v;->a(I)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p0, v0}, Lx/v;->b(I)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Ln/Q;->d(II)V

    .line 150
    invoke-static {v1, p2, v1}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 151
    invoke-virtual {p1, v1, p3}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 153
    :cond_2a
    return-void
.end method
