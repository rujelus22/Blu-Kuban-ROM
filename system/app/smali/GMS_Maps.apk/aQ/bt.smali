.class public LaQ/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/ui/aV;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_b

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, LaQ/bt;->a:Ljava/lang/CharSequence;

    .line 30
    iput p3, p0, LaQ/bt;->b:I

    .line 31
    return-void

    .line 29
    :cond_b
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 41
    new-instance v1, LaQ/bu;

    invoke-direct {v1}, LaQ/bu;-><init>()V

    .line 42
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/bu;->a:Landroid/widget/TextView;

    .line 43
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 35
    check-cast p2, LaQ/bu;

    .line 36
    iget-object v0, p2, LaQ/bu;->a:Landroid/widget/TextView;

    iget-object v1, p0, LaQ/bt;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 53
    const v0, 0x7f04017c

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, LaQ/bt;->b:I

    return v0
.end method
