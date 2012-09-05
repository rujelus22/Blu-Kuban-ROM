.class Lcom/google/android/apps/books/app/ReaderFragment$12;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


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
    .line 1872
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$12;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1876
    const-string v0, "ReaderFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1877
    const-string v0, "ReaderFragment"

    const-string v1, "mOnSearchCloseListener.onClose() being called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$12;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->exitSearch(ZZ)V

    .line 1880
    return v2
.end method
