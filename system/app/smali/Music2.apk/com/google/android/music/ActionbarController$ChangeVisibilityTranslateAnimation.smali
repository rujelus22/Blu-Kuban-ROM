.class Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "ActionbarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ActionbarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeVisibilityTranslateAnimation"
.end annotation


# instance fields
.field private final mMakeVisible:Z


# direct methods
.method public constructor <init>(ZII)V
    .registers 13
    .parameter "makeVis"
    .parameter "xDirection"
    .parameter "yDirection"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 687
    if-eqz p1, :cond_17

    int-to-float v2, p2

    :goto_5
    if-eqz p1, :cond_19

    move v4, v8

    :goto_8
    if-eqz p1, :cond_1b

    int-to-float v6, p3

    :goto_b
    if-eqz p1, :cond_1d

    :goto_d
    move-object v0, p0

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 691
    iput-boolean p1, p0, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;->mMakeVisible:Z

    .line 692
    return-void

    :cond_17
    move v2, v8

    .line 687
    goto :goto_5

    :cond_19
    int-to-float v4, p2

    goto :goto_8

    :cond_1b
    move v6, v8

    goto :goto_b

    :cond_1d
    int-to-float v8, p3

    goto :goto_d
.end method

.method static synthetic access$700(Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/google/android/music/ActionbarController$ChangeVisibilityTranslateAnimation;->mMakeVisible:Z

    return v0
.end method
