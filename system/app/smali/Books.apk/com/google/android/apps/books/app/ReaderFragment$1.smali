.class Lcom/google/android/apps/books/app/ReaderFragment$1;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/util/Navigator;


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
    .line 315
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$1;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V
    .registers 13
    .parameter "position"
    .parameter "fromUser"
    .parameter "lastAction"

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$1;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 319
    return-void
.end method
