.class Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;
.super Landroid/widget/ImageView;
.source "ContactListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DontPressWithParentImageView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 233
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 237
    :goto_e
    return-void

    .line 236
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_e
.end method
