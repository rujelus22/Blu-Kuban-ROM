.class public Lcom/google/googlenav/ui/wizard/cq;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/cs;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cq;)Lcom/google/googlenav/ui/wizard/cs;
    .registers 2
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cq;->a:Lcom/google/googlenav/ui/wizard/cs;

    return-object v0
.end method


# virtual methods
.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 70
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cq;->h()V

    .line 72
    :cond_b
    const/4 v0, 0x3

    return v0
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/cs;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cq;->a:Lcom/google/googlenav/ui/wizard/cs;

    .line 43
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cq;->j()V

    .line 44
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 48
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/am;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/am;-><init>(Lcom/google/googlenav/ui/g;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cq;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 50
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cq;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/am;

    .line 51
    new-instance v1, Lcom/google/googlenav/ui/wizard/cr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/cr;-><init>(Lcom/google/googlenav/ui/wizard/cq;Lcom/google/googlenav/ui/view/dialog/am;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/am;->a(Lcom/google/googlenav/ui/view/dialog/aq;)V

    .line 64
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/am;->m()V

    .line 65
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cq;->a:Lcom/google/googlenav/ui/wizard/cs;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cs;->b()V

    .line 78
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cq;->a()V

    .line 79
    return-void
.end method
