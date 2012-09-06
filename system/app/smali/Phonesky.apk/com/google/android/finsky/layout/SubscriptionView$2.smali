.class Lcom/google/android/finsky/layout/SubscriptionView$2;
.super Ljava/lang/Object;
.source "SubscriptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/SubscriptionView;->configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SubscriptionView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SubscriptionView;)V
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x2

    .line 250
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    #getter for: Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I
    invoke-static {v0}, Lcom/google/android/finsky/layout/SubscriptionView;->access$100(Lcom/google/android/finsky/layout/SubscriptionView;)I

    move-result v0

    if-ne v0, v1, :cond_15

    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    #calls: Lcom/google/android/finsky/layout/SubscriptionView;->collapseDescription()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/SubscriptionView;->access$200(Lcom/google/android/finsky/layout/SubscriptionView;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/SubscriptionView;->access$102(Lcom/google/android/finsky/layout/SubscriptionView;I)I

    .line 257
    :goto_14
    return-void

    .line 254
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    #calls: Lcom/google/android/finsky/layout/SubscriptionView;->expandDescription()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/SubscriptionView;->access$300(Lcom/google/android/finsky/layout/SubscriptionView;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionView$2;->this$0:Lcom/google/android/finsky/layout/SubscriptionView;

    #setter for: Lcom/google/android/finsky/layout/SubscriptionView;->mExpansionState:I
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/SubscriptionView;->access$102(Lcom/google/android/finsky/layout/SubscriptionView;I)I

    goto :goto_14
.end method
