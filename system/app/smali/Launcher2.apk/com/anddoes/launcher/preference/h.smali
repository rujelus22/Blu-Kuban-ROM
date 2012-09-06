.class public final Lcom/anddoes/launcher/preference/h;
.super Lcom/anddoes/launcher/preference/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/preference/g;-><init>(Landroid/content/Context;)V

    .line 88
    if-eqz p1, :cond_b

    .line 89
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/h;->b:Landroid/content/SharedPreferences;

    .line 91
    :cond_b
    return-void
.end method


# virtual methods
.method public final A()I
    .registers 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 250
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final B()I
    .registers 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 255
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final C()Ljava/lang/String;
    .registers 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .registers 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E()I
    .registers 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 270
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final F()Ljava/lang/String;
    .registers 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final G()Z
    .registers 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 280
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final H()Z
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 285
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final I()I
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 290
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public final J()Ljava/lang/String;
    .registers 4

    .prologue
    .line 295
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .registers 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final L()Z
    .registers 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 305
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final M()Z
    .registers 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 310
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final N()Z
    .registers 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 315
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final O()Z
    .registers 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 320
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final P()Ljava/lang/String;
    .registers 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Q()Ljava/lang/String;
    .registers 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final R()Z
    .registers 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 335
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final S()Ljava/lang/String;
    .registers 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final T()Z
    .registers 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060200

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 345
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final U()Z
    .registers 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060201

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 350
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final V()Z
    .registers 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060202

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 355
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final W()I
    .registers 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060203

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 360
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final X()I
    .registers 4

    .prologue
    .line 365
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060204

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 365
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final Y()Ljava/lang/String;
    .registers 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060205

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .registers 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060206

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()I
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f060195

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/anddoes/launcher/preference/h;->b(Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method public final aA()Ljava/lang/String;
    .registers 3

    .prologue
    .line 526
    const-string v0, "theme_iconpack_pkg"

    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aB()Ljava/lang/String;
    .registers 3

    .prologue
    .line 534
    const-string v0, "theme_skin_pkg"

    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aC()Ljava/lang/String;
    .registers 3

    .prologue
    .line 542
    const-string v0, "theme_font_pkg"

    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aD()Z
    .registers 4

    .prologue
    .line 550
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060225

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 550
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aE()Z
    .registers 4

    .prologue
    .line 555
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060226

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 555
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aF()Z
    .registers 4

    .prologue
    .line 560
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060227

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 560
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aG()Z
    .registers 4

    .prologue
    .line 565
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060228

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 565
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aH()Z
    .registers 4

    .prologue
    .line 570
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060229

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 570
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aI()Z
    .registers 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06022a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 575
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aJ()Z
    .registers 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06022b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 580
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aK()Z
    .registers 4

    .prologue
    .line 585
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06022c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 585
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aL()Z
    .registers 4

    .prologue
    .line 590
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06022d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 590
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aM()Z
    .registers 4

    .prologue
    .line 595
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06022e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 595
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aN()Z
    .registers 4

    .prologue
    .line 600
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06022f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 600
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aO()Z
    .registers 4

    .prologue
    .line 605
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060231

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 605
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aP()Ljava/lang/String;
    .registers 3

    .prologue
    .line 610
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060232

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 611
    const-string v1, "com.android.contacts-com.android.contacts.activities.DialtactsActivity"

    .line 610
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aQ()Z
    .registers 4

    .prologue
    .line 615
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060233

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 615
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aR()Ljava/lang/String;
    .registers 3

    .prologue
    .line 620
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060234

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    const-string v1, "com.android.mms-com.android.mms.ui.ConversationList"

    .line 620
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aS()Z
    .registers 4

    .prologue
    .line 625
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060235

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 625
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aT()Ljava/lang/String;
    .registers 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060236

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 631
    const-string v1, "com.google.android.gm-com.google.android.gm.ConversationListActivityGmail"

    .line 630
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aU()Z
    .registers 4

    .prologue
    .line 635
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060238

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 635
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aV()Z
    .registers 4

    .prologue
    .line 640
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060239

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 641
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 640
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aW()Z
    .registers 4

    .prologue
    .line 645
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06023a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 645
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aX()Ljava/lang/String;
    .registers 4

    .prologue
    .line 650
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06023c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aY()Z
    .registers 4

    .prologue
    .line 655
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06023d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 655
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aZ()Z
    .registers 4

    .prologue
    .line 660
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06023e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 660
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aa()Z
    .registers 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060207

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 380
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ab()Z
    .registers 4

    .prologue
    .line 385
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060208

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 385
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ac()Z
    .registers 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060209

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 390
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ad()I
    .registers 4

    .prologue
    .line 395
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06020a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 395
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public final ae()Z
    .registers 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06020b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 400
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final af()Z
    .registers 4

    .prologue
    .line 405
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06020c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 405
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ag()Z
    .registers 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06020d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 410
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ah()Ljava/lang/String;
    .registers 4

    .prologue
    .line 415
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06020f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ai()Ljava/lang/String;
    .registers 4

    .prologue
    .line 420
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060210

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aj()Z
    .registers 4

    .prologue
    .line 425
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060211

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 425
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ak()Z
    .registers 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060212

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 430
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final al()Z
    .registers 4

    .prologue
    .line 435
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060213

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 435
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final am()Ljava/lang/String;
    .registers 4

    .prologue
    .line 440
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060215

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final an()Ljava/lang/String;
    .registers 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060216

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ao()Z
    .registers 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060217

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 450
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ap()Z
    .registers 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060218

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 455
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aq()Ljava/lang/String;
    .registers 4

    .prologue
    .line 460
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06021a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ar()Ljava/lang/String;
    .registers 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06021b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final as()Ljava/lang/String;
    .registers 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06021c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final at()Ljava/lang/String;
    .registers 4

    .prologue
    .line 475
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06021d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final au()Ljava/lang/String;
    .registers 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06021e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final av()Ljava/lang/String;
    .registers 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06021f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aw()Ljava/lang/String;
    .registers 4

    .prologue
    .line 490
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060220

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ax()Z
    .registers 4

    .prologue
    .line 503
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060221

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 503
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ay()Z
    .registers 4

    .prologue
    .line 508
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060222

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 508
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final az()Z
    .registers 4

    .prologue
    .line 513
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060223

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 513
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f060198

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .registers 4
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/anddoes/launcher/preference/h;->b(Ljava/lang/String;I)V

    .line 117
    return-void
.end method

.method public final ba()Z
    .registers 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f06023f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 674
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bb()Ljava/lang/String;
    .registers 4

    .prologue
    .line 689
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f060246

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 689
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v3, 0x7f06019d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v3, 0x7f06019e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .registers 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f06019d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final e()I
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f06019e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v3, 0x7f06019f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v3, 0x7f0601a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f06019f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final h()I
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 147
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .registers 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .registers 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 177
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final n()I
    .registers 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public final o()Ljava/lang/String;
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Z
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final q()Ljava/lang/String;
    .registers 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Z
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 202
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final s()Ljava/lang/String;
    .registers 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v2, 0x7f0601a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Z
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final u()Ljava/lang/String;
    .registers 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .registers 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Z
    .registers 4

    .prologue
    .line 227
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 227
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .registers 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .registers 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    const v1, 0x7f0601e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/anddoes/launcher/preference/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final z()Ljava/lang/String;
    .registers 4

    .prologue
    .line 242
    const-string v0, "drawer_hidden_apps"

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
