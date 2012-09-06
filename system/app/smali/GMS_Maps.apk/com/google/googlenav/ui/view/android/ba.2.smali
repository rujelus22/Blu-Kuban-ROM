.class public Lcom/google/googlenav/ui/view/android/bA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/google/googlenav/ui/g;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bA;->f:Lcom/google/googlenav/ui/g;

    .line 61
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bA;->a:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bA;->b:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/bA;->c:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/bA;->d:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/google/googlenav/ui/view/android/bA;->e:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 81
    new-instance v1, Lcom/google/googlenav/ui/view/android/bC;

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/view/android/bC;-><init>(Lcom/google/googlenav/ui/view/android/bB;)V

    .line 82
    iput-object p1, v1, Lcom/google/googlenav/ui/view/android/bC;->a:Landroid/view/View;

    .line 83
    const v0, 0x7f1003fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bC;->b:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f1003ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bC;->c:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f100400

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bC;->d:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f100401

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bC;->e:Landroid/widget/TextView;

    .line 87
    new-instance v0, Lcom/google/googlenav/ui/view/android/bD;

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/view/android/bD;-><init>(Lcom/google/googlenav/ui/view/android/bB;)V

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bC;->f:Lcom/google/googlenav/ui/view/android/bD;

    .line 88
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 92
    check-cast p2, Lcom/google/googlenav/ui/view/android/bC;

    .line 93
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bA;->a:Ljava/lang/String;

    if-nez v0, :cond_34

    .line 94
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bC;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_d
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bC;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bA;->b:Ljava/lang/String;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bC;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bA;->c:Ljava/lang/String;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bC;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bA;->d:Ljava/lang/String;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bC;->f:Lcom/google/googlenav/ui/view/android/bD;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bA;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/bD;->a:Ljava/lang/String;

    .line 103
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bC;->f:Lcom/google/googlenav/ui/view/android/bD;

    iput-object p1, v0, Lcom/google/googlenav/ui/view/android/bD;->b:Lcom/google/googlenav/ui/g;

    .line 104
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bC;->a:Landroid/view/View;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bC;->f:Lcom/google/googlenav/ui/view/android/bD;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 105
    return-void

    .line 96
    :cond_34
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bC;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bC;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bA;->a:Ljava/lang/String;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 77
    const/16 v0, 0xc

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 69
    const v0, 0x7f040183

    return v0
.end method
