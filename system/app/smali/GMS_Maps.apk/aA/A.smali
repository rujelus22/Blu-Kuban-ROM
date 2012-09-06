.class public LaA/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lat/B;

.field private final b:Ln/am;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ln/m;


# direct methods
.method public static a(Ln/l;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 156
    invoke-static {p0}, LaA/a;->c(Ln/l;)Ljava/util/List;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/E;

    .line 159
    if-eqz v0, :cond_d

    .line 160
    invoke-virtual {v0}, Ln/E;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 164
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ln/l;)Lat/B;
    .registers 4
    .parameter

    .prologue
    .line 201
    invoke-static {p0}, LaA/a;->d(Ln/l;)Ln/Q;

    move-result-object v1

    .line 202
    if-nez v1, :cond_8

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lat/B;

    invoke-virtual {v1}, Ln/Q;->a()I

    move-result v2

    invoke-virtual {v1}, Ln/Q;->c()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lat/B;-><init>(II)V

    goto :goto_7
.end method

.method private static c(Ln/l;)Ljava/util/List;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {p0}, Ln/l;->h()I

    move-result v2

    sparse-switch v2, :sswitch_data_44

    .line 189
    :cond_d
    :goto_d
    return-object v1

    .line 171
    :sswitch_e
    check-cast p0, Ln/R;

    .line 172
    invoke-virtual {p0}, Ln/R;->p()Ln/E;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p0}, Ln/R;->q()Ln/E;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 176
    :sswitch_1f
    check-cast p0, Ln/ac;

    .line 177
    :goto_21
    invoke-virtual {p0}, Ln/ac;->d()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 178
    invoke-virtual {p0, v0}, Ln/ac;->c(I)Ln/E;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 183
    :sswitch_31
    check-cast p0, Ln/H;

    .line 184
    :goto_33
    invoke-virtual {p0}, Ln/H;->c()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 185
    invoke-virtual {p0, v0}, Ln/H;->a(I)Ln/E;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 169
    nop

    :sswitch_data_44
    .sparse-switch
        0x2 -> :sswitch_1f
        0x7 -> :sswitch_e
        0x8 -> :sswitch_31
        0xb -> :sswitch_31
    .end sparse-switch
.end method

.method private static d(Ln/l;)Ln/Q;
    .registers 3
    .parameter

    .prologue
    const/high16 v1, 0x3f00

    .line 209
    invoke-interface {p0}, Ln/l;->h()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 221
    const/4 v0, 0x0

    :goto_a
    return-object v0

    .line 211
    :sswitch_b
    check-cast p0, Ln/R;

    .line 212
    invoke-virtual {p0}, Ln/R;->c()Ln/Q;

    move-result-object v0

    goto :goto_a

    .line 214
    :sswitch_12
    check-cast p0, Ln/ac;

    .line 215
    invoke-virtual {p0}, Ln/ac;->b()Ln/U;

    move-result-object v0

    invoke-virtual {v0, v1}, Ln/U;->a(F)Ln/Q;

    move-result-object v0

    goto :goto_a

    .line 218
    :sswitch_1d
    check-cast p0, Ln/H;

    .line 219
    invoke-virtual {p0}, Ln/H;->b()Ln/U;

    move-result-object v0

    invoke-virtual {v0, v1}, Ln/U;->a(F)Ln/Q;

    move-result-object v0

    goto :goto_a

    .line 209
    :sswitch_data_28
    .sparse-switch
        0x2 -> :sswitch_12
        0x7 -> :sswitch_b
        0x8 -> :sswitch_1d
        0xb -> :sswitch_1d
    .end sparse-switch
.end method


# virtual methods
.method public a(LaA/a;)I
    .registers 4
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, LaA/a;->b()I

    move-result v0

    invoke-virtual {p1}, LaA/a;->b()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 96
    invoke-virtual {p1}, LaA/a;->b()I

    move-result v0

    invoke-virtual {p0}, LaA/a;->b()I

    move-result v1

    sub-int/2addr v0, v1

    .line 103
    :goto_13
    return v0

    .line 98
    :cond_14
    invoke-virtual {p0}, LaA/a;->a()Ln/am;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, LaA/a;->a()Ln/am;

    move-result-object v1

    .line 100
    if-eqz v0, :cond_20

    if-nez v1, :cond_22

    .line 101
    :cond_20
    const/4 v0, 0x0

    goto :goto_13

    .line 103
    :cond_22
    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    invoke-virtual {v1}, Ln/am;->b()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_13
.end method

.method public a()Ln/am;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, LaA/a;->b:Ln/am;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, LaA/a;->d:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 26
    check-cast p1, LaA/a;

    invoke-virtual {p0, p1}, LaA/a;->a(LaA/a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    if-ne p0, p1, :cond_5

    .line 128
    :cond_4
    :goto_4
    return v0

    .line 124
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 125
    goto :goto_4

    .line 127
    :cond_13
    check-cast p1, LaA/a;

    .line 128
    iget-object v2, p0, LaA/a;->e:Ln/m;

    iget-object v3, p1, LaA/a;->e:Ln/m;

    invoke-static {v2, v3}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, LaA/a;->c:Ljava/lang/String;

    iget-object v3, p1, LaA/a;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, LaA/a;->a:Lat/B;

    iget-object v3, p1, LaA/a;->a:Lat/B;

    invoke-static {v2, v3}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget v2, p0, LaA/a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, LaA/a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, LaA/a;->b:Ln/am;

    iget-object v3, p1, LaA/a;->b:Ln/am;

    invoke-static {v2, v3}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_4f
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 110
    .line 112
    iget-object v0, p0, LaA/a;->e:Ln/m;

    if-nez v0, :cond_25

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 113
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, LaA/a;->c:Ljava/lang/String;

    if-nez v0, :cond_2c

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    .line 114
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, LaA/a;->a:Lat/B;

    if-nez v0, :cond_33

    move v0, v1

    :goto_17
    add-int/2addr v0, v2

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, LaA/a;->d:I

    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, LaA/a;->b:Ln/am;

    if-nez v2, :cond_3a

    :goto_23
    add-int/2addr v0, v1

    .line 117
    return v0

    .line 112
    :cond_25
    iget-object v0, p0, LaA/a;->e:Ln/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    .line 113
    :cond_2c
    iget-object v0, p0, LaA/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    .line 114
    :cond_33
    iget-object v0, p0, LaA/a;->a:Lat/B;

    invoke-virtual {v0}, Lat/B;->hashCode()I

    move-result v0

    goto :goto_17

    .line 116
    :cond_3a
    iget-object v1, p0, LaA/a;->b:Ln/am;

    invoke-virtual {v1}, Ln/am;->hashCode()I

    move-result v1

    goto :goto_23
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureInfo [mLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaA/a;->a:Lat/B;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTileCoords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaA/a;->b:Ln/am;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabelText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaA/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaA/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFeatureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaA/a;->e:Ln/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
