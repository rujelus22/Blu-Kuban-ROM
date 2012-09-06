.class abstract LafV;
.super Lafh;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lafh",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final a:Lafl;

.field final a:Ljava/lang/CharSequence;

.field final a:Z

.field b:I


# direct methods
.method protected constructor <init>(LafR;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 488
    invoke-direct {p0}, Lafh;-><init>()V

    .line 485
    const/4 v0, 0x0

    iput v0, p0, LafV;->a:I

    .line 489
    invoke-static {p1}, LafR;->a(LafR;)Lafl;

    move-result-object v0

    iput-object v0, p0, LafV;->a:Lafl;

    .line 490
    invoke-static {p1}, LafR;->a(LafR;)Z

    move-result v0

    iput-boolean v0, p0, LafV;->a:Z

    .line 491
    invoke-static {p1}, LafR;->a(LafR;)I

    move-result v0

    iput v0, p0, LafV;->b:I

    .line 492
    iput-object p2, p0, LafV;->a:Ljava/lang/CharSequence;

    .line 493
    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method protected bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 466
    invoke-virtual {p0}, LafV;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 496
    :cond_1
    iget v0, p0, LafV;->a:I

    if-eq v0, v5, :cond_7f

    .line 497
    iget v1, p0, LafV;->a:I

    .line 500
    iget v0, p0, LafV;->a:I

    invoke-virtual {p0, v0}, LafV;->a(I)I

    move-result v0

    .line 501
    if-ne v0, v5, :cond_2a

    .line 502
    iget-object v0, p0, LafV;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 503
    iput v5, p0, LafV;->a:I

    .line 509
    :goto_17
    if-ge v1, v0, :cond_31

    iget-object v2, p0, LafV;->a:Lafl;

    iget-object v3, p0, LafV;->a:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lafl;->a(C)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 506
    :cond_2a
    invoke-virtual {p0, v0}, LafV;->b(I)I

    move-result v2

    iput v2, p0, LafV;->a:I

    goto :goto_17

    .line 512
    :cond_31
    :goto_31
    if-le v0, v1, :cond_46

    iget-object v2, p0, LafV;->a:Lafl;

    iget-object v3, p0, LafV;->a:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lafl;->a(C)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 513
    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    .line 516
    :cond_46
    iget-boolean v2, p0, LafV;->a:Z

    if-eqz v2, :cond_4c

    if-eq v1, v0, :cond_1

    .line 520
    :cond_4c
    iget v2, p0, LafV;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6e

    .line 524
    iget-object v0, p0, LafV;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 525
    iput v5, p0, LafV;->a:I

    .line 527
    :goto_59
    if-le v0, v1, :cond_74

    iget-object v2, p0, LafV;->a:Lafl;

    iget-object v3, p0, LafV;->a:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lafl;->a(C)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 528
    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    .line 531
    :cond_6e
    iget v2, p0, LafV;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LafV;->b:I

    .line 534
    :cond_74
    iget-object v2, p0, LafV;->a:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    :goto_7e
    return-object v0

    :cond_7f
    invoke-virtual {p0}, LafV;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_7e
.end method

.method abstract b(I)I
.end method
