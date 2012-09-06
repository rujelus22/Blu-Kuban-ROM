.class Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$4;
.super Ljava/lang/Object;
.source "HostedStreamOneUpFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->onMeasured(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

.field final synthetic val$footerHeight:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 925
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    iput p2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$4;->val$footerHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 928
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 929
    .local v2, outerView:Landroid/view/View;
    if-nez v2, :cond_9

    .line 952
    :cond_8
    :goto_8
    return-void

    .line 934
    :cond_9
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListParent:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1200(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 935
    .local v3, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$4;->val$footerHeight:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 936
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->mListParent:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1200(Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1300()I

    move-result v6

    if-gt v5, v6, :cond_8

    .line 940
    const v5, 0x7f090262

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 941
    .local v4, stage:Landroid/view/View;
    if-eqz v4, :cond_8

    .line 942
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5f

    const/4 v1, 0x1

    .line 945
    .local v1, landscape:Z
    :goto_45
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 947
    .local v0, bgParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment$4;->val$footerHeight:I

    invoke-static {}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1400()I

    move-result v6

    add-int/2addr v6, v5

    if-eqz v1, :cond_61

    invoke-static {}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1500()I

    move-result v5

    :goto_58
    add-int/2addr v5, v6

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 949
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 942
    .end local v0           #bgParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #landscape:Z
    :cond_5f
    const/4 v1, 0x0

    goto :goto_45

    .line 947
    .restart local v0       #bgParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1       #landscape:Z
    :cond_61
    invoke-static {}, Lcom/google/android/apps/plus/fragments/HostedStreamOneUpFragment;->access$1600()I

    move-result v5

    goto :goto_58
.end method
