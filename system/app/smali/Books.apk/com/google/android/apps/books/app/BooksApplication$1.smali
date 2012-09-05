.class Lcom/google/android/apps/books/app/BooksApplication$1;
.super Ljava/lang/Object;
.source "BooksApplication.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksApplication;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksApplication$1;->this$0:Lcom/google/android/apps/books/app/BooksApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksApplication$1;->this$0:Lcom/google/android/apps/books/app/BooksApplication;

    invoke-static {v0}, Lcom/google/android/apps/books/util/BooksGservicesHelper;->getDeveloperKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
