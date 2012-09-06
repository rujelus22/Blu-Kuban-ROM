.class public Lcom/google/googlenav/ui/wizard/ca;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/google/googlenav/ui/wizard/cb;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 40
    return-void
.end method

.method private e()Z
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ca;->a:I

    if-nez v0, :cond_6

    .line 55
    const/4 v0, 0x1

    .line 58
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public T_()V
    .registers 3

    .prologue
    .line 91
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ca;->a:I

    .line 92
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ca;->b:Lcom/google/googlenav/ui/wizard/cb;

    .line 93
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ca;->a()V

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/ca;->a(ILcom/google/googlenav/ui/wizard/cb;)V

    .line 95
    return-void
.end method

.method public a(LZ/a;)I
    .registers 3
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x4

    return v0
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x4

    return v0
.end method

.method public a(ILcom/google/googlenav/ui/wizard/cb;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ca;->b:Lcom/google/googlenav/ui/wizard/cb;

    .line 45
    iput p1, p0, Lcom/google/googlenav/ui/wizard/ca;->a:I

    .line 46
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ca;->j()V

    .line 47
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/cc;)V
    .registers 3
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ca;->b:Lcom/google/googlenav/ui/wizard/cb;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/cb;->a(Lcom/google/googlenav/ui/wizard/cc;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ca;->a()V

    .line 118
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ca;->h()V

    .line 122
    if-eqz p1, :cond_e

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ca;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 125
    :cond_e
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ca;->e()Z

    move-result v0

    if-nez v0, :cond_15

    .line 69
    new-instance v0, Lcom/google/googlenav/ui/view/android/N;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/ca;->a:I

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/N;-><init>(Lcom/google/googlenav/ui/wizard/ca;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ca;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 76
    :goto_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ca;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 77
    return-void

    .line 73
    :cond_15
    new-instance v0, Lcom/google/googlenav/ui/view/android/B;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/B;-><init>(Lcom/google/googlenav/ui/wizard/ca;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ca;->h:Lcom/google/googlenav/ui/view/android/bb;

    goto :goto_f
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 83
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ca;->b:Lcom/google/googlenav/ui/wizard/cb;

    if-eqz v0, :cond_c

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ca;->b:Lcom/google/googlenav/ui/wizard/cb;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cb;->a()V

    .line 86
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ca;->b:Lcom/google/googlenav/ui/wizard/cb;

    .line 87
    return-void
.end method

.method public h()V
    .registers 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ca;->a()V

    .line 113
    return-void
.end method
