.class Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;
.super Ljava/lang/Object;
.source "QuickViewMainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 913
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 916
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_30

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$300(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$000(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$100(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$200(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v8

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 922
    :goto_2a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #setter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I
    invoke-static {v0, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$602(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;I)I

    .line 923
    return-void

    .line 919
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$300(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$400(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$500(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$200(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v8

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_2a
.end method

.method setDirection(I)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 926
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->mDirection:I

    .line 927
    return-void
.end method
