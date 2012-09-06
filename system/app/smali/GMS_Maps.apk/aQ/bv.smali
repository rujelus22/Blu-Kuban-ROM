.class public LaQ/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:I

.field final b:I

.field final c:Ljava/lang/CharSequence;

.field final d:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LaQ/bv;-><init>(IILjava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, LaQ/bv;->a:I

    .line 52
    iput p2, p0, LaQ/bv;->b:I

    .line 53
    iput-object p3, p0, LaQ/bv;->c:Ljava/lang/CharSequence;

    .line 54
    iput-boolean p4, p0, LaQ/bv;->d:Z

    .line 55
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 65
    new-instance v1, LaQ/bw;

    invoke-direct {v1}, LaQ/bw;-><init>()V

    .line 66
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/bw;->a:Landroid/widget/TextView;

    .line 67
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 59
    check-cast p2, LaQ/bw;

    .line 60
    iget-object v0, p2, LaQ/bw;->a:Landroid/widget/TextView;

    iget-object v1, p0, LaQ/bv;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, LaQ/bv;->d:Z

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, LaQ/bv;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, LaQ/bv;->b:I

    return v0
.end method
