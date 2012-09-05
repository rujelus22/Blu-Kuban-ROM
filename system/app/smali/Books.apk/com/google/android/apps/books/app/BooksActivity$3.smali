.class Lcom/google/android/apps/books/app/BooksActivity$3;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksActivity;->setAccount(Landroid/accounts/Account;ZZ)Z
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
    .line 1265
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$3;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$3;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$3100(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startForcedSync()V

    .line 1269
    return-void
.end method
