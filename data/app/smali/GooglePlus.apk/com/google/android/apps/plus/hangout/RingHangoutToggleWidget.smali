.class public Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;
.super Landroid/widget/LinearLayout;
.source "RingHangoutToggleWidget.java"


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private label:Landroid/widget/TextView;

.field private ringInvitees:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->ringInvitees:Z

    .line 29
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->setOrientation(I)V

    .line 30
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->icon:Landroid/widget/ImageView;

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0201ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 34
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->label:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->label:Landroid/widget/TextView;

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->label:Landroid/widget/TextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->addView(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->label:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->addView(Landroid/view/View;)V

    .line 41
    new-instance v0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget$1;-><init>(Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getRingInvitees()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->ringInvitees:Z

    return v0
.end method

.method public setEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 67
    if-eqz p1, :cond_12

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->setRingInvitees(Z)V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->label:Landroid/widget/TextView;

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :goto_11
    return-void

    .line 71
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->setRingInvitees(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->label:Landroid/widget/TextView;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_11
.end method

.method public setRingInvitees(Z)V
    .registers 4
    .parameter "ringInvitees"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->ringInvitees:Z

    .line 54
    if-eqz p1, :cond_15

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->label:Landroid/widget/TextView;

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0201ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    :goto_14
    return-void

    .line 58
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->label:Landroid/widget/TextView;

    const v1, 0x7f080113

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RingHangoutToggleWidget;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0201aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_14
.end method
