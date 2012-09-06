.class public abstract Lcom/google/googlenav/ui/bK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/r;
.implements Lcom/google/googlenav/common/h;


# instance fields
.field protected final a:Lat/p;

.field protected b:Z

.field protected c:Z

.field private d:Lcom/google/googlenav/ui/bL;


# direct methods
.method public constructor <init>(Lat/p;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/googlenav/ui/bK;->a:Lat/p;

    .line 46
    iput-boolean v0, p0, Lcom/google/googlenav/ui/bK;->c:Z

    .line 47
    iput-boolean v0, p0, Lcom/google/googlenav/ui/bK;->b:Z

    .line 48
    invoke-static {p0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/h;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/googlenav/ui/bK;->a:Lat/p;

    invoke-virtual {v0}, Lat/p;->c()Lat/Y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lat/Y;->a(I)I

    move-result v0

    return v0
.end method

.method protected abstract a()V
.end method

.method public a(Landroid/graphics/Point;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    return-void
.end method

.method public final a(Lat/Y;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bK;->a()V

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlenav/ui/bK;->b(Lat/Y;II)V

    .line 90
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bL;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/googlenav/ui/bK;->d:Lcom/google/googlenav/ui/bL;

    .line 54
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 123
    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract b(Lat/Y;II)V
.end method

.method public c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-boolean v0, p0, Lcom/google/googlenav/ui/bK;->c:Z

    if-nez v0, :cond_6

    .line 106
    :goto_5
    return-void

    .line 103
    :cond_6
    iput-boolean v1, p0, Lcom/google/googlenav/ui/bK;->c:Z

    .line 104
    iput-boolean v1, p0, Lcom/google/googlenav/ui/bK;->b:Z

    .line 105
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bK;->b()V

    goto :goto_5
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .registers 1

    .prologue
    .line 118
    invoke-static {p0}, Lcom/google/googlenav/common/j;->c(Lcom/google/googlenav/common/h;)V

    .line 119
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/googlenav/ui/bK;->b:Z

    return v0
.end method

.method public abstract g()Z
.end method
