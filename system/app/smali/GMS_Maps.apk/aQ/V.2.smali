.class public LaQ/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, LaQ/V;->a:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 41
    new-instance v1, LaQ/X;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/X;-><init>(LaQ/W;)V

    .line 42
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/X;->a(LaQ/X;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 44
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 49
    check-cast p2, LaQ/X;

    .line 50
    invoke-static {p2}, LaQ/X;->a(LaQ/X;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaQ/V;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 36
    const/16 v0, 0x22

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 26
    const v0, 0x7f040110

    return v0
.end method
