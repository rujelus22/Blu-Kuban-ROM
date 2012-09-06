.class public LaQ/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, LaQ/v;->a:I

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 38
    new-instance v1, LaQ/x;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/x;-><init>(LaQ/w;)V

    .line 39
    const v0, 0x7f10046b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/x;->a(LaQ/x;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 40
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 27
    check-cast p2, LaQ/x;

    .line 28
    invoke-static {p2}, LaQ/x;->a(LaQ/x;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x4f3

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, LaQ/v;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 33
    const v0, 0x7f0401d6

    return v0
.end method
