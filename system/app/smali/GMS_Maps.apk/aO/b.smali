.class public LaO/b;
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
    .line 24
    check-cast p1, Lcom/google/googlenav/ai;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->an()I

    move-result v0

    return v0
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 32
    check-cast p1, Lcom/google/googlenav/ai;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->am()I

    move-result v0

    return v0
.end method
