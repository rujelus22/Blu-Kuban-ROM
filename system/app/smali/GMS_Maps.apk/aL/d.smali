.class public LaL/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, LaL/d;->a:Ljava/lang/String;

    .line 36
    iput p2, p0, LaL/d;->b:I

    .line 37
    iput-object p3, p0, LaL/d;->c:Landroid/view/View$OnClickListener;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 49
    new-instance v1, LaL/f;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaL/f;-><init>(LaL/e;)V

    .line 50
    const v0, 0x7f100268

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/f;->a(LaL/f;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 51
    const v0, 0x7f100267

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, LaL/f;->a(LaL/f;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 52
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 42
    check-cast p2, LaL/f;

    .line 43
    invoke-static {p2}, LaL/f;->a(LaL/f;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaL/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {p2}, LaL/f;->b(LaL/f;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, LaL/d;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x2

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 69
    const v0, 0x7f0400c0

    return v0
.end method

.method public d()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, LaL/d;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method
