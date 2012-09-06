.class public LaO/g;
.super LaO/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, LaO/a;-><init>(LaM/i;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Lcom/google/googlenav/e;
    .registers 3
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
