.class Lcom/google/android/apps/books/app/ReaderFragment$5;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$5;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 6
    .parameter "visibility"

    .prologue
    .line 679
    const-string v1, "ReaderFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 680
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSystemUiVisibilityChange() with visibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_21
    if-nez p1, :cond_38

    const/4 v0, 0x1

    .line 689
    .local v0, visible:Z
    :goto_24
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$5;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V
    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$700(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 690
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$5;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setInternalChromeVisible(Z)V
    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1600(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 691
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$5;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->setChromeVisible(Z)V

    .line 692
    return-void

    .line 688
    .end local v0           #visible:Z
    :cond_38
    const/4 v0, 0x0

    goto :goto_24
.end method
