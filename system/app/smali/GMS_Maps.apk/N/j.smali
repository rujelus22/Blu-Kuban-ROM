.class public Ln/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/l;


# instance fields
.field private a:Ln/ag;


# direct methods
.method public constructor <init>(Ln/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ln/j;->a:Ln/ag;

    .line 20
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILn/ah;)Ln/j;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 55
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_d

    .line 56
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 58
    :cond_d
    new-instance v0, Ln/j;

    invoke-static {}, Ln/ag;->a()Ln/ag;

    move-result-object v1

    invoke-direct {v0, v1}, Ln/j;-><init>(Ln/ag;)V

    return-object v0
.end method


# virtual methods
.method public a()Ln/m;
    .registers 2

    .prologue
    .line 44
    sget-object v0, Ln/m;->a:Ln/m;

    return-object v0
.end method

.method public e()Ln/ag;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Ln/j;->a:Ln/ag;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public l()[I
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
