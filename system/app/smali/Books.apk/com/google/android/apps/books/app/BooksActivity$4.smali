.class Lcom/google/android/apps/books/app/BooksActivity$4;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$4;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ZI)V
    .registers 7
    .parameter "isOffline"
    .parameter "numFailed"

    .prologue
    const v3, 0x104000a

    .line 1654
    if-eqz p1, :cond_29

    .line 1655
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1656
    .local v0, args:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$4;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v2, 0x7f0e009d

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1658
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$4;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1659
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$4;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$3100(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 1669
    .end local v0           #args:Landroid/os/Bundle;
    :cond_28
    :goto_28
    return-void

    .line 1661
    :cond_29
    if-lez p2, :cond_28

    .line 1662
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1663
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$4;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v2, 0x7f0e009c

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1665
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$4;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1666
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$4;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$3100(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    goto :goto_28
.end method
