.class public LaQ/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/google/googlenav/J;

.field final c:Z

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ar;ILcom/google/googlenav/J;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p2, p0, LaQ/y;->d:I

    .line 48
    invoke-virtual {p1}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaQ/y;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/google/googlenav/ar;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaQ/y;->e:Ljava/lang/String;

    .line 50
    iput-object p3, p0, LaQ/y;->b:Lcom/google/googlenav/J;

    .line 51
    iput-boolean p4, p0, LaQ/y;->c:Z

    .line 52
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 96
    new-instance v1, LaQ/A;

    invoke-direct {v1}, LaQ/A;-><init>()V

    .line 97
    const v0, 0x7f100366

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/A;->a:Landroid/view/ViewGroup;

    .line 98
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/A;->b:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f10001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/A;->c:Landroid/view/View;

    .line 100
    return-object v1
.end method

.method protected a(LaQ/A;Lcom/google/googlenav/ui/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p1, LaQ/A;->a:Landroid/view/ViewGroup;

    new-instance v1, LaQ/z;

    invoke-direct {v1, p0, p2}, LaQ/z;-><init>(LaQ/y;Lcom/google/googlenav/ui/g;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 56
    check-cast p2, LaQ/A;

    .line 57
    iget-object v0, p2, LaQ/A;->b:Landroid/widget/TextView;

    iget-object v1, p0, LaQ/y;->e:Ljava/lang/String;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, p2, p1}, LaQ/y;->a(LaQ/A;Lcom/google/googlenav/ui/g;)V

    .line 59
    iget-object v0, p2, LaQ/A;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p2, LaQ/A;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, LaQ/y;->d:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 105
    const v0, 0x7f040149

    return v0
.end method
