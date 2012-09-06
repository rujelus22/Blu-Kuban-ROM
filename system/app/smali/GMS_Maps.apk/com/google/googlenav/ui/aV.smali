.class public Lcom/google/googlenav/ui/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/ax;

.field private final b:Lcom/google/android/maps/MapsActivity;

.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/google/googlenav/ui/av;->c:Z

    .line 51
    iput-boolean v0, p0, Lcom/google/googlenav/ui/av;->d:Z

    .line 54
    iput-object p1, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/android/maps/MapsActivity;

    .line 55
    new-instance v0, Lcom/google/googlenav/ui/aw;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/aw;-><init>(Lcom/google/googlenav/ui/av;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ax;

    .line 71
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/ax;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ax;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/ax;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ax;

    .line 86
    invoke-virtual {p0}, Lcom/google/googlenav/ui/av;->b()V

    .line 87
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v0

    if-nez v0, :cond_a

    .line 144
    iput-boolean v1, p0, Lcom/google/googlenav/ui/av;->c:Z

    .line 161
    :cond_9
    :goto_9
    return-void

    .line 145
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/android/maps/MapsActivity;

    if-eqz v0, :cond_9

    .line 146
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bZ;->invalidateOptionsMenu()V

    goto :goto_9

    .line 150
    :cond_2a
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->f()Z

    move-result v0

    if-eqz v0, :cond_39

    if-nez p1, :cond_39

    .line 154
    iput-boolean v1, p0, Lcom/google/googlenav/ui/av;->d:Z

    goto :goto_9

    .line 156
    :cond_39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/av;->d:Z

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->invalidateOptionsMenu()V

    goto :goto_9
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/googlenav/ui/av;->c:Z

    if-eqz v0, :cond_13

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/av;->c:Z

    .line 111
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/av;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 114
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ax;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/ax;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ax;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/ui/ax;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ax;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/ax;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/av;->a(Z)V

    .line 135
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/googlenav/ui/av;->d:Z

    return v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 174
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ax;

    instance-of v0, v0, LaM/av;

    if-eqz v0, :cond_1f

    .line 176
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ax;

    check-cast v0, LaM/av;

    invoke-virtual {v0}, LaM/av;->a()Lcom/google/googlenav/actionbar/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/googlenav/actionbar/b;)V

    .line 180
    :cond_1f
    return-void
.end method
