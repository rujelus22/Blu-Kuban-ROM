.class public Lcom/google/googlenav/ui/android/q;
.super Lcom/google/googlenav/ui/bK;
.source "SourceFile"


# instance fields
.field private d:Lcom/google/googlenav/ui/android/p;


# direct methods
.method public constructor <init>(Lat/p;Lcom/google/googlenav/ui/android/p;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/bK;-><init>(Lat/p;)V

    .line 26
    iput-object p2, p0, Lcom/google/googlenav/ui/android/q;->d:Lcom/google/googlenav/ui/android/p;

    .line 27
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->d:Lcom/google/googlenav/ui/android/p;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/p;->a(I)I

    move-result v0

    return v0
.end method

.method protected a()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method public a(Landroid/graphics/Point;)V
    .registers 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->d:Lcom/google/googlenav/ui/android/p;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/p;->a(Landroid/graphics/Point;)V

    .line 76
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bL;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->d:Lcom/google/googlenav/ui/android/p;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/p;->a(Lcom/google/googlenav/ui/bL;)V

    .line 36
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->c:Z

    .line 66
    return-void
.end method

.method protected b(Lat/Y;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->d:Lcom/google/googlenav/ui/android/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/android/p;->a(Lat/Y;II)V

    .line 50
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method
