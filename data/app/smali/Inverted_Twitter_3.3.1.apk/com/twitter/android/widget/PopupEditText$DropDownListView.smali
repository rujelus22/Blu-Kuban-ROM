.class Lcom/twitter/android/widget/PopupEditText$DropDownListView;
.super Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
