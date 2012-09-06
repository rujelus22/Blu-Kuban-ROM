.class public LaQ/b;
.super LaQ/aR;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;LaM/C;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, LaQ/aR;-><init>(Lcom/google/googlenav/ai;LaM/i;IZ)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a(LaM/i;)LaQ/aS;
    .registers 9
    .parameter

    .prologue
    .line 28
    check-cast p1, LaM/C;

    iget-object v0, p0, LaQ/b;->a:Lcom/google/googlenav/ai;

    invoke-virtual {p1, v0}, LaM/C;->d(Lcom/google/googlenav/ai;)Z

    move-result v4

    .line 29
    if-eqz v4, :cond_10

    .line 30
    iget-object v0, p0, LaQ/b;->a:Lcom/google/googlenav/ai;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    .line 33
    :cond_10
    new-instance v0, LaQ/aS;

    const/16 v1, 0x59c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59d

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-char v3, Lcom/google/googlenav/ui/bn;->aY:C

    const/16 v5, 0x258

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, LaQ/aS;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;CZII)V

    return-object v0
.end method
