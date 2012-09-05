.class public Lcom/sec/android/app/voicerecorder/widget/RecIconSwitcher;
.super Landroid/widget/ImageSwitcher;
.source "RecIconSwitcher.java"


# static fields
.field private static mBlinkAni:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public static getBlinkAnimation()Landroid/view/animation/AlphaAnimation;
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 33
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/RecIconSwitcher;->mBlinkAni:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_26

    .line 35
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/RecIconSwitcher;->mBlinkAni:Landroid/view/animation/AlphaAnimation;

    .line 37
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/RecIconSwitcher;->mBlinkAni:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 39
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/RecIconSwitcher;->mBlinkAni:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 41
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/RecIconSwitcher;->mBlinkAni:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 43
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/RecIconSwitcher;->mBlinkAni:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 49
    :cond_26
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/RecIconSwitcher;->mBlinkAni:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method
