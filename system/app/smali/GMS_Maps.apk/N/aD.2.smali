.class public Ln/aD;
.super Ln/aC;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ln/l;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    or-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0, p1, v1, p3}, Ln/aC;-><init>(Ln/m;Ln/l;II)V

    .line 120
    return-void
.end method


# virtual methods
.method public a()Ln/l;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Ln/aD;->b:Ln/l;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Ln/aD;->c:I

    invoke-static {v0}, Ln/aC;->a(I)Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Ln/aD;->d:I

    return v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 135
    iget v0, p0, Ln/aD;->c:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method
