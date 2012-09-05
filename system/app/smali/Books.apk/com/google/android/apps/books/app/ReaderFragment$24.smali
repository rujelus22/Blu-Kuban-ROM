.class Lcom/google/android/apps/books/app/ReaderFragment$24;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->toggleAboutTheBook()V
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
    .line 4059
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$24;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 4061
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$24;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8402(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 4062
    return-void
.end method
