.class Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;
.super Ljava/lang/Object;
.source "ScreenshotViewer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/ScreenshotViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/ScreenshotViewer;

.field v:Landroid/view/View;

.field visibility:I


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/ScreenshotViewer;Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter "v"
    .parameter "visibility"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;->v:Landroid/view/View;

    .line 138
    iput p3, p0, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;->visibility:I

    .line 139
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;->v:Landroid/view/View;

    iget v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;->visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mInTransition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 154
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mInTransition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method
