.class public Lcom/sec/android/app/clockpackage/timer/TimeImageView;
.super Landroid/widget/ImageView;
.source "TimeImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .registers 4
    .parameter "isPressed"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimeImageView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 58
    :goto_8
    return-void

    .line 44
    :pswitch_9
    if-eqz p1, :cond_e

    const v0, 0x7f020254

    :cond_e
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimeImageView;->setBackgroundResource(I)V

    goto :goto_8

    .line 49
    :pswitch_12
    if-eqz p1, :cond_17

    const v0, 0x7f020253

    :cond_17
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimeImageView;->setBackgroundResource(I)V

    goto :goto_8

    .line 54
    :pswitch_1b
    if-eqz p1, :cond_20

    const v0, 0x7f020255

    :cond_20
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimeImageView;->setBackgroundResource(I)V

    goto :goto_8

    .line 42
    :pswitch_data_24
    .packed-switch 0x7f0e0106
        :pswitch_9
        :pswitch_12
        :pswitch_1b
    .end packed-switch
.end method
