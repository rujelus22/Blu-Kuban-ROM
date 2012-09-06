.class public Lcom/google/googlenav/friend/history/p;
.super Lcom/google/googlenav/friend/history/u;
.source "SourceFile"


# instance fields
.field a:Z

.field private final c:Lcom/google/googlenav/ui/view/dialog/aL;

.field private final d:Lcom/google/googlenav/friend/history/b;

.field private final e:Lcom/google/googlenav/friend/history/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/ui/view/dialog/aL;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/history/u;-><init>(Lcom/google/googlenav/friend/history/b;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/history/p;->a:Z

    .line 51
    iput-object p2, p0, Lcom/google/googlenav/friend/history/p;->c:Lcom/google/googlenav/ui/view/dialog/aL;

    .line 52
    iput-object p3, p0, Lcom/google/googlenav/friend/history/p;->d:Lcom/google/googlenav/friend/history/b;

    .line 53
    iput-object p4, p0, Lcom/google/googlenav/friend/history/p;->e:Lcom/google/googlenav/friend/history/b;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/history/p;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/history/p;->c(Landroid/view/View;)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 67
    const v0, 0x7f1001e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    const v0, 0x7f1001e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    const/16 v1, 0x267

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/history/p;->b(Landroid/view/View;)V

    .line 60
    const v0, 0x7f1002ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const v0, 0x7f100026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/history/p;->c(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method b(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/googlenav/friend/history/p;->a:Z

    if-nez v0, :cond_17

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/history/p;->a:Z

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/friend/history/p;->c:Lcom/google/googlenav/ui/view/dialog/aL;

    iget-object v1, p0, Lcom/google/googlenav/friend/history/p;->b:Lcom/google/googlenav/friend/history/b;

    iget-object v2, p0, Lcom/google/googlenav/friend/history/p;->d:Lcom/google/googlenav/friend/history/b;

    iget-object v3, p0, Lcom/google/googlenav/friend/history/p;->e:Lcom/google/googlenav/friend/history/b;

    new-instance v4, Lcom/google/googlenav/friend/history/q;

    invoke-direct {v4, p0, p1}, Lcom/google/googlenav/friend/history/q;-><init>(Lcom/google/googlenav/friend/history/p;Landroid/view/View;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/dialog/aL;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/ui/view/dialog/aM;)V

    .line 108
    :cond_17
    return-void
.end method
