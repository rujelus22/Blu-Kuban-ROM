.class public Lcom/google/googlenav/mylocationnotifier/i;
.super Lcom/google/googlenav/mylocationnotifier/a;
.source "SourceFile"


# instance fields
.field private final f:Z

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/mylocationnotifier/k;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/mylocationnotifier/i;-><init>(Lcom/google/googlenav/mylocationnotifier/k;ZLjava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/mylocationnotifier/k;ZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/googlenav/mylocationnotifier/a;-><init>(Lcom/google/googlenav/mylocationnotifier/k;)V

    .line 71
    iput-boolean p2, p0, Lcom/google/googlenav/mylocationnotifier/i;->f:Z

    .line 72
    iput-object p3, p0, Lcom/google/googlenav/mylocationnotifier/i;->g:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private a(Lan/s;)V
    .registers 5
    .parameter

    .prologue
    .line 190
    invoke-virtual {p1}, Lan/s;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 191
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/i;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/mylocationnotifier/j;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/mylocationnotifier/j;-><init>(Lcom/google/googlenav/mylocationnotifier/i;Lan/s;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 205
    :cond_15
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/i;->b:Lcom/google/googlenav/mylocationnotifier/k;

    iget-boolean v2, p0, Lcom/google/googlenav/mylocationnotifier/i;->f:Z

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/google/googlenav/mylocationnotifier/l;-><init>(Ljava/util/List;Lcom/google/googlenav/mylocationnotifier/k;Ljava/lang/String;Z)V

    .line 126
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/i;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lcom/google/googlenav/mylocationnotifier/a;)V

    .line 127
    return-void
.end method

.method protected b()V
    .registers 8

    .prologue
    const v6, 0x7f10001e

    const/4 v5, 0x1

    const v4, 0x7f1001ab

    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/i;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    if-nez v0, :cond_40

    .line 78
    sget-object v0, Lcom/google/googlenav/mylocationnotifier/i;->a:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/mylocationnotifier/HeaderView;

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/i;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    .line 80
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/i;->g:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/i;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    invoke-virtual {p0, v0, v6}, Lcom/google/googlenav/mylocationnotifier/i;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x299

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/i;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    invoke-virtual {p0, v0, v4}, Lcom/google/googlenav/mylocationnotifier/i;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :cond_40
    :goto_40
    return-void

    .line 85
    :cond_41
    const/16 v0, 0x4f5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/i;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "\n"

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/i;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    invoke-virtual {p0, v1, v6}, Lcom/google/googlenav/mylocationnotifier/i;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/i;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    invoke-virtual {p0, v1, v4}, Lcom/google/googlenav/mylocationnotifier/i;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/i;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    invoke-virtual {p0, v0, v4}, Lcom/google/googlenav/mylocationnotifier/i;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_40
.end method

.method protected c()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/i;->c:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x2d0

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/i;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/k;->c()V

    .line 138
    return-void
.end method

.method protected f()V
    .registers 3

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/i;->f:Z

    if-eqz v0, :cond_17

    .line 110
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/i;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lan/s;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 113
    invoke-direct {p0, v0}, Lcom/google/googlenav/mylocationnotifier/i;->a(Lan/s;)V

    .line 116
    :cond_17
    return-void
.end method
