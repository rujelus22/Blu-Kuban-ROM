.class public Lk/D;
.super Lk/C;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lk/D;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 549
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lk/D;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 539
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lk/C;-><init>(Ljava/lang/String;)V

    .line 533
    iput-object p2, p0, Lk/D;->a:Ljava/lang/String;

    .line 534
    iput p3, p0, Lk/D;->b:I

    .line 535
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 542
    if-eqz p2, :cond_8

    const-string v0, "true"

    :goto_4
    invoke-direct {p0, p1, v0}, Lk/D;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void

    .line 542
    :cond_8
    const-string v0, "false"

    goto :goto_4
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3
    .parameter

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lk/C;-><init>(Lorg/w3c/dom/Node;)V

    .line 553
    const-string v0, "param"

    invoke-static {p1, v0}, Lk/D;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/D;->a:Ljava/lang/String;

    .line 554
    const/4 v0, 0x0

    iput v0, p0, Lk/D;->b:I

    .line 555
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lk/D;->a:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 565
    iget v0, p0, Lk/D;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/D;->a:Ljava/lang/String;

    .line 567
    :cond_c
    iget-object v0, p0, Lk/D;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/io/Writer;)V
    .registers 4
    .parameter

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lk/D;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 560
    return-void
.end method
