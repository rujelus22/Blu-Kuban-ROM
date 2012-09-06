.class Lcom/google/android/apps/plus/fragments/PhotoViewFragment$2;
.super Ljava/lang/Object;
.source "PhotoViewFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 688
    const/4 v0, 0x6

    if-ne p2, v0, :cond_e

    .line 689
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentButton:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 690
    const/4 v0, 0x1

    .line 693
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
