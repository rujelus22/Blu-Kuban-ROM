.class public Lcom/twitter/android/widget/ShadowTextView;
.super Landroid/widget/TextView;

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/content/res/ColorStateList;

.field private final c:F

.field private final d:F

.field private final e:F

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/widget/ShadowTextView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/ShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/twitter/android/du;->shadowTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/ShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/twitter/android/ec;->ShadowTextView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/ShadowTextView;->b:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ShadowTextView;->d:F

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ShadowTextView;->c:F

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/ShadowTextView;->e:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/twitter/android/widget/ShadowTextView;->a()V

    return-void
.end method

.method private a()V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/widget/ShadowTextView;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/twitter/android/widget/ShadowTextView;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v1, p0, Lcom/twitter/android/widget/ShadowTextView;->f:I

    if-eq v0, v1, :cond_22

    iput v0, p0, Lcom/twitter/android/widget/ShadowTextView;->f:I

    iget v1, p0, Lcom/twitter/android/widget/ShadowTextView;->e:F

    iget v2, p0, Lcom/twitter/android/widget/ShadowTextView;->d:F

    iget v3, p0, Lcom/twitter/android/widget/ShadowTextView;->c:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/twitter/android/widget/ShadowTextView;->setShadowLayer(FFFI)V

    :cond_22
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/twitter/android/widget/ShadowTextView;->a()V

    return-void
.end method

.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/widget/ShadowTextView;->g:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/ShadowTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/twitter/android/widget/ShadowTextView;->a:[I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/ShadowTextView;->mergeDrawableStates([I[I)[I

    :cond_11
    return-object v0
.end method

.method public setChecked(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/widget/ShadowTextView;->g:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/twitter/android/widget/ShadowTextView;->g:Z

    invoke-virtual {p0}, Lcom/twitter/android/widget/ShadowTextView;->refreshDrawableState()V

    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/widget/ShadowTextView;->g:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ShadowTextView;->setChecked(Z)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
