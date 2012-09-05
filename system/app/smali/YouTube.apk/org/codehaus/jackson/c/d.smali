.class final Lorg/codehaus/jackson/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/codehaus/jackson/c/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/c/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Lorg/codehaus/jackson/c/d;->a:Ljava/lang/String;

    .line 525
    iput-object p2, p0, Lorg/codehaus/jackson/c/d;->b:Lorg/codehaus/jackson/c/d;

    .line 526
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, Lorg/codehaus/jackson/c/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a([CII)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    iget-object v1, p0, Lorg/codehaus/jackson/c/d;->a:Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lorg/codehaus/jackson/c/d;->b:Lorg/codehaus/jackson/c/d;

    .line 536
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_1c

    .line 537
    const/4 v2, 0x0

    .line 539
    :cond_b
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v2

    aget-char v4, p1, v4

    if-ne v3, v4, :cond_19

    .line 540
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_b

    .line 543
    :cond_19
    if-ne v2, p3, :cond_1c

    .line 553
    :goto_1b
    return-object v1

    .line 547
    :cond_1c
    if-eqz v0, :cond_23

    .line 548
    iget-object v1, v0, Lorg/codehaus/jackson/c/d;->a:Ljava/lang/String;

    .line 551
    iget-object v0, v0, Lorg/codehaus/jackson/c/d;->b:Lorg/codehaus/jackson/c/d;

    goto :goto_4

    .line 553
    :cond_23
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public final b()Lorg/codehaus/jackson/c/d;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lorg/codehaus/jackson/c/d;->b:Lorg/codehaus/jackson/c/d;

    return-object v0
.end method
