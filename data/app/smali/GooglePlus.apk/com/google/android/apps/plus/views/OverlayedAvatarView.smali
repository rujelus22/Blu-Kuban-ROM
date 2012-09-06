.class public Lcom/google/android/apps/plus/views/OverlayedAvatarView;
.super Landroid/widget/RelativeLayout;
.source "OverlayedAvatarView.java"


# instance fields
.field private mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

.field private mOverlay:Landroid/widget/ImageView;

.field private mTypeOverlay:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    .registers 4
    .parameter "inflater"
    .parameter "root"

    .prologue
    .line 44
    const v0, 0x7f030080

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    return-object v0
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 50
    const v0, 0x7f090156

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    .line 51
    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->mTypeOverlay:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->mOverlay:Landroid/widget/ImageView;

    .line 53
    return-void
.end method

.method public setBorderResource(I)V
    .registers 2
    .parameter "resid"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setBackgroundResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->invalidate()V

    .line 102
    return-void
.end method

.method public setOverlayResource(I)V
    .registers 4
    .parameter "resid"

    .prologue
    .line 86
    if-nez p1, :cond_d

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->mOverlay:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->invalidate()V

    .line 93
    return-void

    .line 89
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->mOverlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_9
.end method

.method public setParticipantGaiaId(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->mAvatarView:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setParticipantType(I)V
    .registers 5
    .parameter "participantType"

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_20

    .line 75
    const/4 v0, 0x4

    .line 77
    .local v0, visibility:I
    :goto_4
    iget-object v1, p0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->mTypeOverlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    return-void

    .line 63
    .end local v0           #visibility:I
    :pswitch_a
    const/4 v0, 0x0

    .line 64
    .restart local v0       #visibility:I
    iget-object v1, p0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->mTypeOverlay:Landroid/widget/ImageView;

    const v2, 0x7f020173

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 67
    .end local v0           #visibility:I
    :pswitch_14
    const/4 v0, 0x0

    .line 68
    .restart local v0       #visibility:I
    iget-object v1, p0, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->mTypeOverlay:Landroid/widget/ImageView;

    const v2, 0x7f020175

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 72
    .end local v0           #visibility:I
    :pswitch_1e
    const/4 v0, 0x4

    .line 73
    .restart local v0       #visibility:I
    goto :goto_4

    .line 61
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_a
        :pswitch_14
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method
