.class public final Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 130
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 143
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    .line 212
    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setIntValues([I)V

    .line 174
    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 255
    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setEvaluator(Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;)V

    .line 256
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 301
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;-><init>()V

    .line 302
    iput-object p0, v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 303
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 304
    return-object v0
.end method


# virtual methods
.method final animateValue(F)V
    .registers 6
    .parameter

    .prologue
    .line 467
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    .line 468
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v0

    .line 469
    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_a

    .line 472
    return-void

    .line 470
    :cond_a
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public final clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 476
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 477
    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->clone()Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTarget()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method final initAnimation()V
    .registers 5

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mInitialized:Z

    if-nez v0, :cond_d

    .line 384
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v0

    .line 385
    const/4 v0, 0x0

    :goto_8
    if-lt v0, v1, :cond_e

    .line 388
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 390
    :cond_d
    return-void

    .line 386
    :cond_e
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public final setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    .registers 3
    .parameter

    .prologue
    .line 403
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 404
    return-object p0
.end method

.method public final bridge synthetic setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;
    .registers 4
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public final varargs setFloatValues([F)V
    .registers 5
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_19

    .line 330
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 335
    :goto_18
    return-void

    .line 333
    :cond_19
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_18
.end method

.method public final varargs setIntValues([I)V
    .registers 5
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_19

    .line 315
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 320
    :goto_18
    return-void

    .line 318
    :cond_19
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_18
.end method

.method public final varargs setObjectValues([Ljava/lang/Object;)V
    .registers 6
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_1a

    .line 345
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 350
    :goto_19
    return-void

    .line 348
    :cond_1a
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public final setPropertyName(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_1a

    .line 76
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v0, v3

    .line 77
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1a
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 84
    iput-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mInitialized:Z

    .line 85
    return-void
.end method

.method public final setTarget(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    if-eq v0, p1, :cond_16

    .line 425
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 426
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 427
    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_17

    .line 433
    :cond_16
    :goto_16
    return-void

    .line 431
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mInitialized:Z

    goto :goto_16
.end method

.method public final setupEndValues()V
    .registers 5

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->initAnimation()V

    .line 447
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v0

    .line 448
    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_a

    .line 451
    return-void

    .line 449
    :cond_a
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public final setupStartValues()V
    .registers 5

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->initAnimation()V

    .line 438
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v0

    .line 439
    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_a

    .line 442
    return-void

    .line 440
    :cond_a
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public final start()V
    .registers 1

    .prologue
    .line 364
    invoke-super {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->start()V

    .line 365
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_2d

    .line 485
    const/4 v0, 0x0

    :goto_28
    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-lt v0, v2, :cond_2e

    .line 489
    :cond_2d
    return-object v1

    .line 486
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_28
.end method
