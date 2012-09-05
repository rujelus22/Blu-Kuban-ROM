.class Lcom/sprint/w/installer/ScreenshotViewer$1;
.super Ljava/lang/Object;
.source "ScreenshotViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/ScreenshotViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/ScreenshotViewer;

.field final synthetic val$img:Landroid/widget/ImageView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/ScreenshotViewer;Landroid/view/View;Landroid/widget/ImageView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sprint/w/installer/ScreenshotViewer$1;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iput-object p2, p0, Lcom/sprint/w/installer/ScreenshotViewer$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/sprint/w/installer/ScreenshotViewer$1;->val$img:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$1;->val$view:Landroid/view/View;

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$1;->val$img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 78
    return-void
.end method
