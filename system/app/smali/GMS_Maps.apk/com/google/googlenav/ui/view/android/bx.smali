.class public Lcom/google/googlenav/ui/view/android/bx;
.super Lcom/google/googlenav/ui/view/android/bv;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 8
    .parameter

    .prologue
    .line 26
    const-string v2, ""

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/bv;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLcom/google/googlenav/ui/view/a;)V

    .line 27
    sget-object v0, Lcom/google/googlenav/ui/aV;->B:Lcom/google/googlenav/ui/aV;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bx;->a:Ljava/lang/CharSequence;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 37
    new-instance v1, Lcom/google/googlenav/ui/view/android/bw;

    invoke-direct {v1}, Lcom/google/googlenav/ui/view/android/bw;-><init>()V

    .line 38
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bw;->a:Landroid/widget/TextView;

    .line 39
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 54
    check-cast p2, Lcom/google/googlenav/ui/view/android/bw;

    .line 55
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bw;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bx;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bw;->a:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x3

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 32
    const v0, 0x7f04010e

    return v0
.end method
