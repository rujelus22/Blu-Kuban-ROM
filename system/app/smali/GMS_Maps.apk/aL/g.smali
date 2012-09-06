.class public LaL/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, LaL/g;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, LaL/g;->b:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 51
    new-instance v1, LaL/i;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaL/i;-><init>(LaL/h;)V

    .line 52
    const v0, 0x7f1000bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/i;->a(LaL/i;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 53
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 41
    check-cast p2, LaL/i;

    .line 42
    invoke-static {p2}, LaL/i;->a(LaL/i;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaL/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x5

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 63
    const v0, 0x7f040027

    return v0
.end method

.method public d()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, LaL/g;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method
