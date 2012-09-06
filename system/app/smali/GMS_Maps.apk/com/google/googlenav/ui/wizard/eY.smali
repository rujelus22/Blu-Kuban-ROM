.class Lcom/google/googlenav/ui/wizard/ey;
.super Lcom/google/googlenav/ui/view/android/Y;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JLcom/google/googlenav/ui/view/a;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v3, v0

    move-object v0, p0

    move-wide v1, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/Y;-><init>(JJLcom/google/googlenav/ui/view/a;)V

    .line 90
    if-nez p1, :cond_26

    .line 91
    const-string p1, ""

    .line 93
    :cond_26
    if-nez p2, :cond_2a

    .line 94
    const-string p2, ""

    .line 96
    :cond_2a
    sget-object v0, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ey;->a:Ljava/lang/CharSequence;

    .line 97
    sget-object v0, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ey;->b:Ljava/lang/CharSequence;

    .line 98
    sget-object v0, Lcom/google/googlenav/ui/aV;->v:Lcom/google/googlenav/ui/aV;

    invoke-static {p3, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ey;->c:Ljava/lang/CharSequence;

    .line 99
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 118
    new-instance v1, Lcom/google/googlenav/ui/wizard/ez;

    invoke-direct {v1}, Lcom/google/googlenav/ui/wizard/ez;-><init>()V

    .line 119
    const v0, 0x7f100162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/ez;->a:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f1000c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/ez;->b:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f100023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/ez;->c:Landroid/widget/TextView;

    .line 123
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 128
    check-cast p2, Lcom/google/googlenav/ui/wizard/ez;

    .line 129
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/ez;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ey;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/ez;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ey;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/ez;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ey;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x2

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 103
    const v0, 0x7f04010a

    return v0
.end method
