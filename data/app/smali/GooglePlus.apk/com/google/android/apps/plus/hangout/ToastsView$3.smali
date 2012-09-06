.class Lcom/google/android/apps/plus/hangout/ToastsView$3;
.super Ljava/lang/Object;
.source "ToastsView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/ToastsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/ToastsView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/ToastsView;)V
    .registers 2
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/ToastsView$3;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$3;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->setVisibility(I)V

    .line 248
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 243
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 239
    return-void
.end method
