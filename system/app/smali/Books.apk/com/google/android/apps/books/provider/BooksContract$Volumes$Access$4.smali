.class final enum Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$4;
.super Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1395
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;-><init>(Ljava/lang/String;ILcom/google/android/apps/books/provider/BooksContract$1;)V

    return-void
.end method


# virtual methods
.method public shouldHonorTransition(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;)Z
    .registers 3
    .parameter "newAccess"

    .prologue
    .line 1398
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access$4;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
