.class Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/PhotoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBarLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .prologue
    .line 870
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 871
    .local v0, ab:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    .line 872
    .local v1, abHeight:I
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_36

    if-lez v1, :cond_36

    .line 873
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #setter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mActionBarHeight:I
    invoke-static {v4, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$802(Lcom/google/android/apps/plus/phone/PhotoViewActivity;I)I

    .line 875
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #getter for: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->mScreenListeners:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$900(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;

    .line 876
    .local v3, listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    invoke-interface {v3, v1}, Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;->onActionBarHeightCalculated(I)V

    goto :goto_21

    .line 880
    .end local v3           #listener:Lcom/google/android/apps/plus/phone/PhotoViewActivity$OnScreenListener;
    :cond_31
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewActivity$ActionBarLayoutListener;->this$0:Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    #calls: Lcom/google/android/apps/plus/phone/PhotoViewActivity;->clearListener()V
    invoke-static {v4}, Lcom/google/android/apps/plus/phone/PhotoViewActivity;->access$1000(Lcom/google/android/apps/plus/phone/PhotoViewActivity;)V

    .line 882
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_36
    return-void
.end method
