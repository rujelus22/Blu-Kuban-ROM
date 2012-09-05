.class public Lcom/infraware/polarisoffice/common/ListImgRightButton;
.super Landroid/widget/ImageButton;
.source "ListImgRightButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/polarisoffice/common/ListImgRightButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 29
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ListImgRightButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33
    :goto_e
    return-void

    .line 32
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    goto :goto_e
.end method
