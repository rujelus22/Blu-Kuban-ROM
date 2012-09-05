.class public Lcom/google/android/finsky/layout/AccountSelectorView;
.super Landroid/widget/TextView;
.source "AccountSelectorView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .registers 9
    .parameter "authenticatedActivity"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 32
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AccountSelectorView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AccountSelectorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 34
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v5, v0

    if-le v5, v3, :cond_41

    move v1, v3

    .line 35
    .local v1, hasMultipleAccounts:Z
    :goto_1a
    if-eqz v1, :cond_43

    .line 36
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/AccountSelectorView;->setClickable(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AccountSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f02009c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 39
    .local v2, spinnerArrowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v4, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    invoke-virtual {p0, v6, v6, v2, v6}, Lcom/google/android/finsky/layout/AccountSelectorView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 42
    new-instance v3, Lcom/google/android/finsky/layout/AccountSelectorView$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/layout/AccountSelectorView$1;-><init>(Lcom/google/android/finsky/layout/AccountSelectorView;Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/AccountSelectorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .end local v2           #spinnerArrowDrawable:Landroid/graphics/drawable/Drawable;
    :goto_40
    return-void

    .end local v1           #hasMultipleAccounts:Z
    :cond_41
    move v1, v4

    .line 34
    goto :goto_1a

    .line 49
    .restart local v1       #hasMultipleAccounts:Z
    :cond_43
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/AccountSelectorView;->setClickable(Z)V

    .line 50
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/google/android/finsky/layout/AccountSelectorView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0, v6}, Lcom/google/android/finsky/layout/AccountSelectorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_40
.end method
