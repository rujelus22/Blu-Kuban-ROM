.class Lcom/android/browser/SecAddBookmarkPage$4;
.super Ljava/lang/Object;
.source "SecAddBookmarkPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/SecAddBookmarkPage;->promptToOverwrite()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SecAddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/android/browser/SecAddBookmarkPage;)V
    .registers 2
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/browser/SecAddBookmarkPage$4;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$4;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    #getter for: Lcom/android/browser/SecAddBookmarkPage;->mFolderDifferent:Z
    invoke-static {v0}, Lcom/android/browser/SecAddBookmarkPage;->access$300(Lcom/android/browser/SecAddBookmarkPage;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$4;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    #getter for: Lcom/android/browser/SecAddBookmarkPage;->mTitleDifferent:Z
    invoke-static {v0}, Lcom/android/browser/SecAddBookmarkPage;->access$400(Lcom/android/browser/SecAddBookmarkPage;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1022
    :cond_10
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$4;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/SecAddBookmarkPage;->overwrite()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1023
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$4;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/SecAddBookmarkPage;->finish()V

    .line 1029
    :cond_1d
    :goto_1d
    return-void

    .line 1026
    :cond_1e
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$4;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    const v1, 0x7f0c0042

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1027
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$4;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/SecAddBookmarkPage;->finish()V

    goto :goto_1d
.end method
