.class public Lcom/google/googlenav/ui/view/dialog/am;
.super Lcom/google/googlenav/ui/view/dialog/cO;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/ViewSwitcher;

.field private b:Lcom/google/googlenav/ui/view/dialog/aq;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/g;)V
    .registers 7
    .parameter

    .prologue
    .line 64
    const v0, 0x7f0f0018

    const/16 v1, 0x3d8

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x3c6

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02020d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/cO;-><init>(Lcom/google/googlenav/ui/g;ILjava/lang/CharSequence;I)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/am;)Lcom/google/googlenav/ui/view/dialog/aq;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/am;->b:Lcom/google/googlenav/ui/view/dialog/aq;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 79
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/am;->v()V

    .line 138
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/dialog/cO;->a(Landroid/view/View;)V

    .line 139
    const v0, 0x7f1001f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/am;->a:Landroid/widget/ViewSwitcher;

    .line 140
    const v0, 0x7f1001f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    const/16 v1, 0x3d7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/dialog/aq;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/am;->b:Lcom/google/googlenav/ui/view/dialog/aq;

    .line 94
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/ar;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/view/dialog/ar;-><init>(Lcom/google/googlenav/ui/view/dialog/aq;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/am;->a(Landroid/webkit/WebViewClient;)V

    .line 95
    return-void
.end method

.method public i()Landroid/widget/ViewSwitcher;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/am;->a:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 73
    const v0, 0x7f040088

    return v0
.end method

.method public m()V
    .registers 5

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/am;->show()V

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 105
    new-instance v1, LY/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/an;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/view/dialog/an;-><init>(Lcom/google/googlenav/ui/view/dialog/am;Landroid/os/Handler;)V

    invoke-direct {v1, v2, v3}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v1}, LY/b;->g()V

    .line 133
    return-void
.end method
