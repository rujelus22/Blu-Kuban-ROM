.class public Lcom/google/android/apps/books/widget/TabletSpinnerPreference;
.super Lcom/google/android/apps/books/preference/SpinnerPreference;
.source "TabletSpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;
    }
.end annotation


# instance fields
.field private mIcons:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/widget/TabletSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/preference/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget-object v4, Lcom/google/android/apps/books/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 38
    .local v2, iconsArrayId:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 40
    .local v1, iconsArray:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/google/android/apps/books/widget/TabletSpinnerPreference;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 41
    const/4 v3, 0x0

    .local v3, ii:I
    :goto_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 42
    iget-object v4, p0, Lcom/google/android/apps/books/widget/TabletSpinnerPreference;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 45
    :cond_31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/widget/TabletSpinnerPreference;)[Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TabletSpinnerPreference;->mIcons:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method protected createAdapter([Ljava/lang/CharSequence;)Landroid/widget/ArrayAdapter;
    .registers 8
    .parameter "entries"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/TabletSpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030022

    const v4, 0x1020014

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;-><init>(Lcom/google/android/apps/books/widget/TabletSpinnerPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 54
    .local v0, adapter:Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;
    const v1, 0x7f030021

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;->setDropDownViewResource(I)V

    .line 55
    return-object v0
.end method
