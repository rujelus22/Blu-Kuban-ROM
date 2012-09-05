.class Lcom/google/android/apps/books/app/BooksActivity$1$1$1;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/apps/books/app/BooksActivity$1$1;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity$1$1;)V
    .registers 2
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1$1;->this$2:Lcom/google/android/apps/books/app/BooksActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1$1$1;->this$2:Lcom/google/android/apps/books/app/BooksActivity$1$1;

    iget-object v0, v0, Lcom/google/android/apps/books/app/BooksActivity$1$1;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    #calls: Lcom/google/android/apps/books/app/BooksActivity$1;->onTitleClick()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity$1;->access$1700(Lcom/google/android/apps/books/app/BooksActivity$1;)V

    .line 585
    return-void
.end method
