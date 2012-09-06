.class public Lcom/google/googlenav/friend/history/O;
.super Lcom/google/googlenav/friend/history/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/history/b;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/history/u;-><init>(Lcom/google/googlenav/friend/history/b;)V

    .line 21
    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 32
    const v0, 0x7f1001e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    const v0, 0x7f1001e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    const/16 v1, 0x267

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 25
    const v0, 0x7f1002ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    const v0, 0x7f100026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/history/O;->b(Landroid/view/View;)V

    .line 29
    return-void
.end method
