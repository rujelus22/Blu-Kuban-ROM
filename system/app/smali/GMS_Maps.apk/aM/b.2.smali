.class public LaM/B;
.super LaM/bd;
.source "SourceFile"


# direct methods
.method public constructor <init>(LaM/C;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, LaM/bd;-><init>(LaM/m;)V

    .line 17
    return-void
.end method

.method private b()LaM/C;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, LaM/B;->a:LaM/i;

    check-cast v0, LaM/C;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/view/android/V;
    .registers 4
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, LaM/B;->b()LaM/C;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/google/googlenav/ui/view/android/ac;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/view/android/ac;-><init>(Lcom/google/googlenav/ai;LaM/C;)V

    return-object v1
.end method
