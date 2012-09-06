.class public LaL/o;
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, LaL/o;->a:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 38
    new-instance v1, LaL/q;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaL/q;-><init>(LaL/p;)V

    .line 39
    const v0, 0x7f100277

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/q;->a(LaL/q;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 40
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p2, LaL/q;

    .line 33
    invoke-static {p2}, LaL/q;->a(LaL/q;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaL/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x3

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 50
    const v0, 0x7f0400cc

    return v0
.end method
