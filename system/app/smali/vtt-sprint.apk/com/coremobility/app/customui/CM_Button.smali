.class public Lcom/coremobility/app/customui/CM_Button;
.super Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setBackgroundResource(I)V
    .registers 3

    const v0, 0x7f020022

    if-ne p1, v0, :cond_e

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->V()Z

    move-result v0

    if-eqz v0, :cond_e

    const p1, 0x7f020023

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method
