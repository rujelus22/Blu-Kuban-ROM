.class Lcom/google/android/apps/books/app/IcsApis$HoverListenerWrapper;
.super Ljava/lang/Object;
.source "IcsApis.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/IcsApis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverListenerWrapper"
.end annotation


# instance fields
.field private final mInnerListener:Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/apps/books/app/IcsApis$HoverListenerWrapper;->mInnerListener:Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;

    .line 94
    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/books/app/IcsApis$HoverListenerWrapper;->mInnerListener:Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
