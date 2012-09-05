.class Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TabletSpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/TabletSpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageTextArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/TabletSpinnerPreference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/TabletSpinnerPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;->this$0:Lcom/google/android/apps/books/widget/TabletSpinnerPreference;

    .line 62
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method private setIcon(ILandroid/view/View;)V
    .registers 6
    .parameter "position"
    .parameter "result"

    .prologue
    .line 66
    iget-object v2, p0, Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;->this$0:Lcom/google/android/apps/books/widget/TabletSpinnerPreference;

    #getter for: Lcom/google/android/apps/books/widget/TabletSpinnerPreference;->mIcons:[Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/TabletSpinnerPreference;->access$000(Lcom/google/android/apps/books/widget/TabletSpinnerPreference;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;->this$0:Lcom/google/android/apps/books/widget/TabletSpinnerPreference;

    #getter for: Lcom/google/android/apps/books/widget/TabletSpinnerPreference;->mIcons:[Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/TabletSpinnerPreference;->access$000(Lcom/google/android/apps/books/widget/TabletSpinnerPreference;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v2, v2

    if-ge p1, v2, :cond_2a

    .line 67
    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 68
    .local v1, image:Landroid/widget/ImageView;
    const-string v2, "missing image view"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v2, p0, Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;->this$0:Lcom/google/android/apps/books/widget/TabletSpinnerPreference;

    #getter for: Lcom/google/android/apps/books/widget/TabletSpinnerPreference;->mIcons:[Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/TabletSpinnerPreference;->access$000(Lcom/google/android/apps/books/widget/TabletSpinnerPreference;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v0, v2, p1

    .line 70
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    .end local v1           #image:Landroid/widget/ImageView;
    :cond_2a
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, result:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;->setIcon(ILandroid/view/View;)V

    .line 85
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, result:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/widget/TabletSpinnerPreference$ImageTextArrayAdapter;->setIcon(ILandroid/view/View;)V

    .line 78
    return-object v0
.end method
