.class Lcom/sprint/w/installer/ScreenshotViewer$4;
.super Ljava/lang/Object;
.source "ScreenshotViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/ScreenshotViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/ScreenshotViewer;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/ScreenshotViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sprint/w/installer/ScreenshotViewer$4;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$4;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mIndx:I

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$4;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mChildCnt:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_d

    .line 176
    :goto_c
    return-void

    .line 175
    :cond_d
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$4;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mWorkspace:Lcom/sprint/w/installer/widget/Workspace;

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$4;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget v2, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mIndx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mIndx:I

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/widget/Workspace;->setCurrentScreen(I)V

    goto :goto_c
.end method