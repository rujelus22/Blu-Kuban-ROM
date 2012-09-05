.class Lcom/google/android/apps/books/app/IcsApis$ActionExpandWrapper;
.super Ljava/lang/Object;
.source "IcsApis.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/IcsApis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionExpandWrapper"
.end annotation


# instance fields
.field final mInnerListener:Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/books/app/IcsApis$ActionExpandWrapper;->mInnerListener:Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;

    .line 36
    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/books/app/IcsApis$ActionExpandWrapper;->mInnerListener:Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/books/app/IcsApis$ActionExpandWrapper;->mInnerListener:Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
