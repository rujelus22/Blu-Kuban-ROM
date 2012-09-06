.class Laf/f;
.super Laf/k;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 342
    invoke-direct {p0}, Laf/k;-><init>()V

    .line 343
    iput p1, p0, Laf/f;->a:I

    .line 344
    return-void
.end method

.method synthetic constructor <init>(ILaf/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 339
    invoke-direct {p0, p1}, Laf/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 347
    iget v0, p0, Laf/f;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 352
    if-ne p0, p1, :cond_5

    .line 365
    :cond_4
    :goto_4
    return v0

    .line 355
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 356
    goto :goto_4

    .line 359
    :cond_13
    check-cast p1, Laf/f;

    .line 361
    iget v2, p0, Laf/f;->a:I

    iget v3, p1, Laf/f;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 362
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Laf/f;->a:I

    return v0
.end method
