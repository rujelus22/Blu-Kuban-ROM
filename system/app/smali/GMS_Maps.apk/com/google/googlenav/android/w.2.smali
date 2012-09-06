.class public Lcom/google/googlenav/android/w;
.super Lcom/google/googlenav/ui/aB;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/i;

.field private final b:LY/c;

.field private c:Lcom/google/googlenav/ui/ac;

.field private d:Lcom/google/googlenav/ui/aC;

.field private e:Lcom/google/googlenav/ui/android/p;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/i;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/i;

    invoke-direct {p0}, Lcom/google/googlenav/ui/aB;-><init>()V

    .line 1069
    iput-object p2, p0, Lcom/google/googlenav/android/w;->b:LY/c;

    .line 1070
    invoke-virtual {p2}, LY/c;->d()V

    .line 1071
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/aA;
    .registers 2

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->g(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/android/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lat/p;)Lcom/google/googlenav/ui/bK;
    .registers 4
    .parameter

    .prologue
    .line 1106
    new-instance v1, Lcom/google/googlenav/ui/android/q;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/android/w;->b(Lat/p;)Lcom/google/googlenav/ui/s;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/p;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/android/q;-><init>(Lat/p;Lcom/google/googlenav/ui/android/p;)V

    return-object v1
.end method

.method public b()Lcom/google/googlenav/ui/aC;
    .registers 3

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/googlenav/android/w;->d:Lcom/google/googlenav/ui/aC;

    if-nez v0, :cond_11

    .line 1081
    new-instance v0, Lcom/google/googlenav/ui/android/c;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/i;

    invoke-static {v1}, Lcom/google/googlenav/android/i;->d(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/android/w;->d:Lcom/google/googlenav/ui/aC;

    .line 1083
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/android/w;->d:Lcom/google/googlenav/ui/aC;

    return-object v0
.end method

.method public b(Lat/p;)Lcom/google/googlenav/ui/s;
    .registers 5
    .parameter

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/google/googlenav/android/w;->e:Lcom/google/googlenav/ui/android/p;

    if-nez v0, :cond_17

    .line 1132
    new-instance v0, Lcom/google/googlenav/ui/android/p;

    iget-object v1, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/i;

    invoke-static {v1}, Lcom/google/googlenav/android/i;->k(Lcom/google/googlenav/android/i;)Lat/p;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/i;

    invoke-static {v2}, Lcom/google/googlenav/android/i;->h(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/ui/android/L;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/android/p;-><init>(Lat/p;Lcom/google/googlenav/ui/android/L;)V

    iput-object v0, p0, Lcom/google/googlenav/android/w;->e:Lcom/google/googlenav/ui/android/p;

    .line 1134
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/android/w;->e:Lcom/google/googlenav/ui/android/p;

    return-object v0
.end method

.method public c()Lcom/google/googlenav/ui/ac;
    .registers 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/google/googlenav/android/w;->c:Lcom/google/googlenav/ui/ac;

    if-nez v0, :cond_b

    .line 1089
    new-instance v0, Lcom/google/googlenav/ui/android/d;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/d;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/w;->c:Lcom/google/googlenav/ui/ac;

    .line 1091
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/android/w;->c:Lcom/google/googlenav/ui/ac;

    return-object v0
.end method

.method public d()Lcom/google/googlenav/ui/android/L;
    .registers 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->h(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/ui/android/L;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/google/googlenav/android/Y;
    .registers 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->i(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/android/Y;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/googlenav/layer/r;
    .registers 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->j(Lcom/google/googlenav/android/i;)Lcom/google/googlenav/layer/r;

    move-result-object v0

    return-object v0
.end method

.method public g()LaD/k;
    .registers 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->a(Lcom/google/googlenav/android/i;)LaD/k;

    move-result-object v0

    return-object v0
.end method

.method public h()LaD/i;
    .registers 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/google/googlenav/android/w;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->b(Lcom/google/googlenav/android/i;)LaD/i;

    move-result-object v0

    return-object v0
.end method

.method public i()LY/c;
    .registers 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/google/googlenav/android/w;->b:LY/c;

    return-object v0
.end method
