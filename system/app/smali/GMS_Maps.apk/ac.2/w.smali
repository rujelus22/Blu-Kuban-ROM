.class public LaC/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, LaC/w;->b:I

    .line 26
    iput-object p2, p0, LaC/w;->c:Ljava/lang/String;

    .line 27
    iput-object p3, p0, LaC/w;->d:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 35
    const v0, 0x7f040139

    return v0
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x2

    return v0
.end method

.method public c()Landroid/view/View;
    .registers 5

    .prologue
    .line 39
    invoke-virtual {p0}, LaC/w;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaC/w;->a:Landroid/view/View;

    .line 40
    iget-object v0, p0, LaC/w;->a:Landroid/view/View;

    const v1, 0x7f100033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 41
    iget-object v1, p0, LaC/w;->a:Landroid/view/View;

    const v2, 0x7f10033e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    iget-object v2, p0, LaC/w;->a:Landroid/view/View;

    const v3, 0x7f10033f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    iget v3, p0, LaC/w;->b:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    invoke-virtual {v0}, Landroid/widget/ImageView;->forceLayout()V

    .line 46
    iget-object v0, p0, LaC/w;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, LaC/w;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 48
    iget-object v0, p0, LaC/w;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, LaC/w;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, LaC/w;->a:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    return-void
.end method
