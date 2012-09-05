.class Lcom/google/android/apps/books/app/ReaderFragment$10;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1697
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$10;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$10;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->onSearchStarted()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3200(Lcom/google/android/apps/books/app/ReaderFragment;)V

    .line 1701
    return-void
.end method
