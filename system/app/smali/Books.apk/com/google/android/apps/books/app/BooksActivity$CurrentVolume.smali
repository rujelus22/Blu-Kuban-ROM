.class Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;
.super Ljava/lang/Object;
.source "BooksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentVolume"
.end annotation


# instance fields
.field mAddToMyEBooks:Z

.field mReaderFadeIn:Z

.field mUpdateVolumeOverview:Z

.field mVolumeId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$CurrentVolume;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    return-void
.end method
