.class Lcom/sec/android/widgetapp/calculator/Panel$2;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/calculator/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/calculator/Panel;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$102(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z

    .line 373
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 374
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;
    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$300(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-interface {v1, v2}, Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;->onPanelClicked(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v1

    #setter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$202(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z

    .line 375
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->access$200(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 384
    :cond_2e
    :goto_2e
    return-void

    .line 379
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    #getter for: Lcom/sec/android/widgetapp/calculator/Panel;->mBringToFront:Z
    invoke-static {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->access$400(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 380
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->bringToFront()V

    .line 382
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->initChange()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 383
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, v1, Lcom/sec/android/widgetapp/calculator/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->post(Ljava/lang/Runnable;)Z

    goto :goto_2e
.end method
