.class Lcom/google/googlenav/friend/history/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/aM;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/googlenav/friend/history/p;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/p;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/googlenav/friend/history/q;->b:Lcom/google/googlenav/friend/history/p;

    iput-object p2, p0, Lcom/google/googlenav/friend/history/q;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/friend/history/q;->b:Lcom/google/googlenav/friend/history/p;

    iput-boolean v2, v0, Lcom/google/googlenav/friend/history/p;->a:Z

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/friend/history/q;->a:Landroid/view/View;

    const v1, 0x7f1001e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/google/googlenav/friend/history/q;->a:Landroid/view/View;

    const v1, 0x7f1002cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/friend/history/q;->a:Landroid/view/View;

    const v1, 0x7f1002cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    const/16 v1, 0x279

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/google/googlenav/friend/history/q;->a:Landroid/view/View;

    const v1, 0x7f1002cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    const/16 v1, 0x278

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v1, Lcom/google/googlenav/friend/history/r;

    invoke-direct {v1, p0}, Lcom/google/googlenav/friend/history/r;-><init>(Lcom/google/googlenav/friend/history/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method
