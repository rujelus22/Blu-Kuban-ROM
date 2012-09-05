.class final Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;
.super Landroid/os/AsyncTask;
.source "ContentFetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/service/ContentFetchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SectionContentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/apps/books/model/SectionContent;",
        ">;"
    }
.end annotation


# instance fields
.field private mException:Ljava/io/IOException;

.field private final mFactory:Lcom/google/android/apps/books/model/SectionContentFactory;

.field final synthetic this$0:Lcom/google/android/apps/books/service/ContentFetchService;


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/books/model/SectionContent;
    .registers 4
    .parameter "voids"

    .prologue
    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->mFactory:Lcom/google/android/apps/books/model/SectionContentFactory;

    invoke-virtual {v1}, Lcom/google/android/apps/books/model/SectionContentFactory;->newSectionContent()Lcom/google/android/apps/books/model/SectionContent;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 595
    :goto_6
    return-object v1

    .line 593
    :catch_7
    move-exception v0

    .line 594
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->mException:Ljava/io/IOException;

    .line 595
    const/4 v1, 0x0

    goto :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 579
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/books/model/SectionContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/books/model/SectionContent;)V
    .registers 5
    .parameter "sectionContent"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    #getter for: Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/books/service/ContentFetchService;->access$000(Lcom/google/android/apps/books/service/ContentFetchService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 603
    :try_start_7
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    #getter for: Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;
    invoke-static {v0}, Lcom/google/android/apps/books/service/ContentFetchService;->access$100(Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    move-result-object v0

    if-nez v0, :cond_16

    .line 604
    if-eqz p1, :cond_14

    .line 605
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContent;->close()V

    .line 612
    :cond_14
    :goto_14
    monitor-exit v1

    .line 613
    return-void

    .line 607
    :cond_16
    if-eqz p1, :cond_25

    .line 608
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    #getter for: Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;
    invoke-static {v0}, Lcom/google/android/apps/books/service/ContentFetchService;->access$100(Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;->onSuccess(Lcom/google/android/apps/books/model/SectionContent;)V

    goto :goto_14

    .line 612
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v0

    .line 610
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->this$0:Lcom/google/android/apps/books/service/ContentFetchService;

    #getter for: Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;
    invoke-static {v0}, Lcom/google/android/apps/books/service/ContentFetchService;->access$100(Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->mException:Ljava/io/IOException;

    invoke-interface {v0, v2}, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;->onFailure(Ljava/lang/Exception;)V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_22

    goto :goto_14
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 579
    check-cast p1, Lcom/google/android/apps/books/model/SectionContent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->onPostExecute(Lcom/google/android/apps/books/model/SectionContent;)V

    return-void
.end method
