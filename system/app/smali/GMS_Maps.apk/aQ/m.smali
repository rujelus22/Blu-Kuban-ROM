.class public LaQ/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, LaQ/m;->b:Ljava/lang/CharSequence;

    .line 27
    iput p2, p0, LaQ/m;->a:I

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 47
    new-instance v1, LaQ/o;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/o;-><init>(LaQ/n;)V

    .line 48
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/o;->a(LaQ/o;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 49
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 54
    check-cast p2, LaQ/o;

    .line 55
    invoke-static {p2}, LaQ/o;->a(LaQ/o;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaQ/m;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, LaQ/m;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 32
    const v0, 0x7f0401e1

    return v0
.end method
