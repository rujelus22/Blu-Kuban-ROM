.class public LaL/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, LaL/a;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, LaL/a;->b:Landroid/view/View$OnClickListener;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 45
    new-instance v1, LaL/c;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaL/c;-><init>(LaL/b;)V

    .line 46
    const v0, 0x7f100269

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, LaL/c;->a(LaL/c;Landroid/widget/Button;)Landroid/widget/Button;

    .line 47
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p2, LaL/c;

    .line 39
    invoke-static {p2}, LaL/c;->a(LaL/c;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, LaL/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {p2}, LaL/c;->a(LaL/c;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, LaL/a;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x6

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 57
    const v0, 0x7f0400c1

    return v0
.end method
