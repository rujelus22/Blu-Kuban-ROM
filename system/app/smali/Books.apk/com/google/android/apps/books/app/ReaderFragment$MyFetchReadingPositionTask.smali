.class Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;
.super Lcom/google/android/apps/books/app/FetchReadingPositionTask;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFetchReadingPositionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/api/ApiaryClient;Lcom/google/android/apps/books/util/Config;Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 13
    .parameter
    .parameter "responseGetter"
    .parameter "apiaryClient"
    .parameter "config"
    .parameter "volumeId"
    .parameter "account"

    .prologue
    .line 3701
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 3702
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/app/FetchReadingPositionTask;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/api/ApiaryClient;Lcom/google/android/apps/books/util/Config;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 3703
    return-void
.end method


# virtual methods
.method protected onFinished(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/Long;Ljava/lang/Exception;)V
    .registers 9
    .parameter "access"
    .parameter "contentVersion"
    .parameter "serverPosition"
    .parameter "serverAccess"
    .parameter "exception"

    .prologue
    .line 3708
    if-eqz p3, :cond_15

    if-eqz p4, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3709
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->maybeHandleServerPosition(Lcom/google/android/apps/books/common/Position;J)V
    invoke-static {v0, p3, v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8200(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;J)V

    .line 3711
    :cond_15
    return-void
.end method
