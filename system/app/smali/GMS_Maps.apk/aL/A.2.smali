.class public LaL/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, LaL/A;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, LaL/A;->b:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 45
    new-instance v1, LaL/C;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaL/C;-><init>(LaL/B;)V

    .line 46
    const v0, 0x7f100296

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/C;->a(LaL/C;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 47
    const v0, 0x7f100297

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/C;->b(LaL/C;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 48
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p2, LaL/C;

    .line 39
    invoke-static {p2}, LaL/C;->a(LaL/C;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaL/A;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {p2}, LaL/C;->b(LaL/C;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaL/A;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x2

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 58
    const v0, 0x7f0400e3

    return v0
.end method
