.class public final Lcom/google/googlenav/ui/view/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:I

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Lcom/google/googlenav/ui/view/a;

.field private final e:LT/f;

.field private final f:LT/f;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p2, :cond_1d

    invoke-static {p2, p7}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Ljava/lang/CharSequence;

    .line 74
    if-eqz p3, :cond_12

    invoke-static {p3, p8}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    :cond_12
    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->c:Ljava/lang/CharSequence;

    .line 76
    iput-object p6, p0, Lcom/google/googlenav/ui/view/android/a;->d:Lcom/google/googlenav/ui/view/a;

    .line 77
    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/a;->e:LT/f;

    .line 78
    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/a;->f:LT/f;

    .line 79
    iput p1, p0, Lcom/google/googlenav/ui/view/android/a;->a:I

    .line 80
    return-void

    :cond_1d
    move-object v0, v1

    .line 72
    goto :goto_a
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const/4 v1, 0x0

    sget-object v7, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    sget-object v8, Lcom/google/googlenav/ui/aV;->v:Lcom/google/googlenav/ui/aV;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    .line 90
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 116
    new-instance v1, Lcom/google/googlenav/ui/view/android/b;

    invoke-direct {v1}, Lcom/google/googlenav/ui/view/android/b;-><init>()V

    .line 117
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/b;->a:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f100023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/b;->b:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f10001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/b;->c:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f10004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/b;->d:Landroid/widget/ImageView;

    .line 121
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 127
    check-cast p2, Lcom/google/googlenav/ui/view/android/b;

    .line 128
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    .line 133
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/b;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 136
    :cond_13
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/b;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->e:LT/f;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 138
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/b;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->f:LT/f;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 139
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/google/googlenav/ui/view/android/a;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 94
    const v0, 0x7f040180

    return v0
.end method

.method public d()Lcom/google/googlenav/ui/view/a;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->d:Lcom/google/googlenav/ui/view/a;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 144
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 150
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/a;->f()Ljava/lang/String;

    move-result-object v1

    .line 158
    if-eqz v0, :cond_24

    .line 159
    if-eqz v1, :cond_23

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_23
    :goto_23
    return-object v0

    :cond_24
    move-object v0, v1

    goto :goto_23
.end method
