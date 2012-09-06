.class public Lcom/google/googlenav/friend/android/InviteItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Checkable;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteItemView;->c:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 49
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/friend/android/InviteItemView;->a:Landroid/widget/TextView;

    .line 50
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/friend/android/InviteItemView;->b:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f1000b4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/google/googlenav/friend/android/InviteItemView;->c:Landroid/widget/Checkable;

    .line 52
    const v0, 0x7f100033

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/friend/android/InviteItemView;->d:Landroid/widget/ImageView;

    .line 53
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x8

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 83
    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteItemView;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :goto_18
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void

    .line 87
    :cond_1e
    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteItemView;->b:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    :goto_30
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18

    :cond_34
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteItemView;->c:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 63
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteItemView;->c:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 68
    return-void
.end method
