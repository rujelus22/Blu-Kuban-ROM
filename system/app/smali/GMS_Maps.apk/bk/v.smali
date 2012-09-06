.class Lbk/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbk/e;


# instance fields
.field a:I

.field final synthetic b:Lbk/s;

.field private final c:Lbk/u;

.field private d:Lbk/e;


# direct methods
.method private constructor <init>(Lbk/s;)V
    .registers 4
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lbk/v;->b:Lbk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    new-instance v0, Lbk/u;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbk/u;-><init>(Lbk/d;Lbk/t;)V

    iput-object v0, p0, Lbk/v;->c:Lbk/u;

    .line 749
    iget-object v0, p0, Lbk/v;->c:Lbk/u;

    invoke-virtual {v0}, Lbk/u;->a()Lbk/m;

    move-result-object v0

    invoke-virtual {v0}, Lbk/m;->a()Lbk/e;

    move-result-object v0

    iput-object v0, p0, Lbk/v;->d:Lbk/e;

    .line 750
    invoke-virtual {p1}, Lbk/s;->b()I

    move-result v0

    iput v0, p0, Lbk/v;->a:I

    .line 751
    return-void
.end method

.method synthetic constructor <init>(Lbk/s;Lbk/t;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lbk/v;-><init>(Lbk/s;)V

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    .prologue
    .line 762
    iget-object v0, p0, Lbk/v;->d:Lbk/e;

    invoke-interface {v0}, Lbk/e;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    .line 763
    iget-object v0, p0, Lbk/v;->c:Lbk/u;

    invoke-virtual {v0}, Lbk/u;->a()Lbk/m;

    move-result-object v0

    invoke-virtual {v0}, Lbk/m;->a()Lbk/e;

    move-result-object v0

    iput-object v0, p0, Lbk/v;->d:Lbk/e;

    .line 765
    :cond_14
    iget v0, p0, Lbk/v;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbk/v;->a:I

    .line 766
    iget-object v0, p0, Lbk/v;->d:Lbk/e;

    invoke-interface {v0}, Lbk/e;->a()B

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/Byte;
    .registers 2

    .prologue
    .line 758
    invoke-virtual {p0}, Lbk/v;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 754
    iget v0, p0, Lbk/v;->a:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 741
    invoke-virtual {p0}, Lbk/v;->b()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 770
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
