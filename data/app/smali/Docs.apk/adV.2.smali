.class LadV;
.super LadO;
.source "GsonGenerator.java"


# instance fields
.field private final a:LadU;

.field private final a:Lanb;


# direct methods
.method constructor <init>(LadU;Lanb;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, LadO;-><init>()V

    .line 42
    iput-object p1, p0, LadV;->a:LadU;

    .line 43
    iput-object p2, p0, LadV;->a:Lanb;

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lanb;->a(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0}, Lanb;->a()V

    .line 51
    return-void
.end method

.method public a(D)V
    .registers 4
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0, p1, p2}, Lanb;->a(D)Lanb;

    .line 116
    return-void
.end method

.method public a(F)V
    .registers 5
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, LadV;->a:Lanb;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lanb;->a(D)Lanb;

    .line 121
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, LadV;->a:Lanb;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lanb;->a(J)Lanb;

    .line 91
    return-void
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0, p1, p2}, Lanb;->a(J)Lanb;

    .line 96
    return-void
.end method

.method public a(LalC;)V
    .registers 3
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0, p1}, Lanb;->a(Ljava/lang/Number;)Lanb;

    .line 106
    return-void
.end method

.method public a(LalE;)V
    .registers 3
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0, p1}, Lanb;->a(Ljava/lang/Number;)Lanb;

    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0, p1}, Lanb;->a(Ljava/lang/String;)Lanb;

    .line 81
    return-void
.end method

.method public a(Ljava/math/BigDecimal;)V
    .registers 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0, p1}, Lanb;->a(Ljava/lang/Number;)Lanb;

    .line 126
    return-void
.end method

.method public a(Ljava/math/BigInteger;)V
    .registers 3
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0, p1}, Lanb;->a(Ljava/lang/Number;)Lanb;

    .line 101
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0, p1}, Lanb;->a(Z)Lanb;

    .line 66
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0}, Lanb;->a()Lanb;

    .line 176
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0, p1}, Lanb;->b(Ljava/lang/String;)Lanb;

    .line 186
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0}, Lanb;->b()Lanb;

    .line 71
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0}, Lanb;->c()Lanb;

    .line 181
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0}, Lanb;->d()Lanb;

    .line 76
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, LadV;->a:Lanb;

    invoke-virtual {v0}, Lanb;->e()Lanb;

    .line 86
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, LadV;->a:Lanb;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lanb;->a(Ljava/lang/String;)V

    .line 191
    return-void
.end method
