.class public Lcom/coremobility/app/customui/CM_SubscribeButton;
.super Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_11

    if-nez p1, :cond_d

    const/high16 v0, -0x100

    invoke-super {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_10
    return-void

    :cond_11
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_10
.end method
