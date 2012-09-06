.class public Lcom/google/googlenav/friend/history/M;
.super Lcom/google/googlenav/friend/history/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/history/b;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/history/u;-><init>(Lcom/google/googlenav/friend/history/b;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 28
    const v0, 0x7f100026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 31
    const v0, 0x7f1001e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    const v0, 0x7f1002ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    const v0, 0x7f1002cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    const/16 v1, 0x27d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/friend/history/M;->b:Lcom/google/googlenav/friend/history/b;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/history/b;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
