.class Lcom/google/googlenav/ui/view/android/az;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IIZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p1, p0, Lcom/google/googlenav/ui/view/android/az;->a:I

    .line 242
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/az;->b:Ljava/lang/String;

    .line 243
    iput p3, p0, Lcom/google/googlenav/ui/view/android/az;->c:I

    .line 244
    iput p4, p0, Lcom/google/googlenav/ui/view/android/az;->d:I

    .line 245
    iput-boolean p5, p0, Lcom/google/googlenav/ui/view/android/az;->e:Z

    .line 246
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/az;)I
    .registers 2
    .parameter

    .prologue
    .line 232
    iget v0, p0, Lcom/google/googlenav/ui/view/android/az;->d:I

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 253
    const v4, 0x7f0401e3

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 255
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/view/android/az;->a(Landroid/view/View;)V

    .line 257
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/az;->e:Z

    if-nez v0, :cond_29

    move v0, v1

    :goto_19
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 258
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/az;->e:Z

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 259
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/az;->e:Z

    if-nez v0, :cond_2b

    :goto_25
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 260
    return-object v3

    :cond_29
    move v0, v2

    .line 257
    goto :goto_19

    :cond_2b
    move v1, v2

    .line 259
    goto :goto_25
.end method

.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 268
    const v0, 0x7f100033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 269
    iget v1, p0, Lcom/google/googlenav/ui/view/android/az;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/az;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/az;->e:Z

    if-eqz v1, :cond_26

    .line 274
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    :goto_25
    return-void

    .line 276
    :cond_26
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_25
.end method
