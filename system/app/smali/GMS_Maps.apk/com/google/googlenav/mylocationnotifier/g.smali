.class Lcom/google/googlenav/mylocationnotifier/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:I

.field final synthetic d:Lcom/google/googlenav/mylocationnotifier/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/mylocationnotifier/d;ILjava/lang/CharSequence;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/g;->d:Lcom/google/googlenav/mylocationnotifier/d;

    iput p2, p0, Lcom/google/googlenav/mylocationnotifier/g;->a:I

    iput-object p3, p0, Lcom/google/googlenav/mylocationnotifier/g;->b:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/google/googlenav/mylocationnotifier/g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 443
    new-instance v1, Lcom/google/googlenav/mylocationnotifier/h;

    invoke-direct {v1}, Lcom/google/googlenav/mylocationnotifier/h;-><init>()V

    .line 444
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/mylocationnotifier/h;->a:Landroid/widget/TextView;

    .line 445
    const v0, 0x7f10001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/mylocationnotifier/h;->b:Landroid/widget/ImageView;

    .line 446
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 451
    check-cast p2, Lcom/google/googlenav/mylocationnotifier/h;

    .line 452
    iget-object v0, p2, Lcom/google/googlenav/mylocationnotifier/h;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/g;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p2, Lcom/google/googlenav/mylocationnotifier/h;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/googlenav/mylocationnotifier/g;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 454
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 433
    iget v0, p0, Lcom/google/googlenav/mylocationnotifier/g;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 438
    const v0, 0x7f0400bb

    return v0
.end method
