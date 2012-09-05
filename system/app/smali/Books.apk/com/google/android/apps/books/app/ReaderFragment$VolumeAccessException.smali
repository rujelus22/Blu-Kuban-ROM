.class public Lcom/google/android/apps/books/app/ReaderFragment$VolumeAccessException;
.super Ljava/lang/RuntimeException;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeAccessException"
.end annotation


# instance fields
.field private final mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;)V
    .registers 4
    .parameter "access"
    .parameter "detailMessage"

    .prologue
    .line 4404
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4405
    const-string v0, "missing access"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeAccessException;->mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 4406
    return-void
.end method
