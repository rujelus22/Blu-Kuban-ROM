.class public LDq;
.super LDc;
.source "TextView.java"


# instance fields
.field final synthetic b:Lcom/google/android/apps/docs/editors/text/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 8256
    iput-object p1, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0, p1}, LDc;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;LCR;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 8256
    invoke-direct {p0, p1}, LDq;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 8268
    iget-object v0, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v0

    return v0
.end method

.method protected a()V
    .registers 4

    .prologue
    .line 8259
    iget-object v0, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_21

    .line 8260
    iget-object v0, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/text/TextView;->h(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 8262
    :cond_21
    iget-object v0, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LDq;->a:Landroid/graphics/drawable/Drawable;

    .line 8263
    iget-object v0, p0, LDq;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    iput v0, p0, LDq;->a:F

    .line 8264
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 8273
    iget-object v0, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Lcom/google/android/apps/docs/editors/text/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 8276
    iget-object v0, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->h()V

    .line 8277
    return-void
.end method

.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 8281
    iget-object v0, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v1

    .line 8282
    iget-object v0, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v2

    .line 8284
    iget-object v0, p0, LDq;->b:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)I

    move-result v0

    .line 8287
    if-ne v0, v1, :cond_15

    .line 8292
    :goto_14
    return-void

    .line 8289
    :cond_15
    if-lt v0, v2, :cond_19

    add-int/lit8 v0, v2, -0x1

    .line 8291
    :cond_19
    invoke-virtual {p0, v0}, LDq;->a(I)V

    goto :goto_14
.end method
