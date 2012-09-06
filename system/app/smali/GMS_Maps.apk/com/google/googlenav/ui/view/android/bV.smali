.class public Lcom/google/googlenav/ui/view/android/bv;
.super Lcom/google/googlenav/ui/view/android/Y;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLcom/google/googlenav/ui/view/a;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v3, v0

    move-object v0, p0

    move-wide v1, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/Y;-><init>(JJLcom/google/googlenav/ui/view/a;)V

    .line 39
    sget-object v0, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bv;->a:Ljava/lang/CharSequence;

    .line 40
    sget-object v0, Lcom/google/googlenav/ui/aV;->v:Lcom/google/googlenav/ui/aV;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bv;->b:Ljava/lang/CharSequence;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 66
    new-instance v1, Lcom/google/googlenav/ui/view/android/bw;

    invoke-direct {v1}, Lcom/google/googlenav/ui/view/android/bw;-><init>()V

    .line 67
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bw;->a:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f100023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bw;->b:Landroid/widget/TextView;

    .line 70
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 75
    check-cast p2, Lcom/google/googlenav/ui/view/android/bw;

    .line 76
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bw;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bv;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bw;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bv;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 45
    const v0, 0x7f04010d

    return v0
.end method
