.class Lcom/android/launcher2/AppsCustomizeAsyncTask;
.super Landroid/os/AsyncTask;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/launcher2/AsyncTaskPageData;",
        "Ljava/lang/Void;",
        "Lcom/android/launcher2/AsyncTaskPageData;",
        ">;"
    }
.end annotation


# instance fields
.field dataType:Lcom/android/launcher2/AsyncTaskPageData$Type;

.field page:I

.field threadPriority:I


# direct methods
.method constructor <init>(ILcom/android/launcher2/AsyncTaskPageData$Type;)V
    .registers 4
    .parameter "p"
    .parameter "ty"

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 136
    iput p1, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->threadPriority:I

    .line 138
    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->dataType:Lcom/android/launcher2/AsyncTaskPageData$Type;

    .line 139
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/launcher2/AsyncTaskPageData;)Lcom/android/launcher2/AsyncTaskPageData;
    .registers 5
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 142
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    .line 145
    :goto_6
    return-object v0

    .line 144
    :cond_7
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/android/launcher2/AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/AsyncTaskCallback;

    aget-object v1, p1, v2

    invoke-interface {v0, p0, v1}, Lcom/android/launcher2/AsyncTaskCallback;->run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    .line 145
    aget-object v0, p1, v2

    goto :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 134
    check-cast p1, [Lcom/android/launcher2/AsyncTaskPageData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->doInBackground([Lcom/android/launcher2/AsyncTaskPageData;)Lcom/android/launcher2/AsyncTaskPageData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/launcher2/AsyncTaskPageData;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 150
    iget-object v0, p1, Lcom/android/launcher2/AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/AsyncTaskCallback;

    invoke-interface {v0, p0, p1}, Lcom/android/launcher2/AsyncTaskCallback;->run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    .line 151
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 134
    check-cast p1, Lcom/android/launcher2/AsyncTaskPageData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->onPostExecute(Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method setThreadPriority(I)V
    .registers 2
    .parameter "p"

    .prologue
    .line 154
    iput p1, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->threadPriority:I

    .line 155
    return-void
.end method

.method syncThreadPriority()V
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/android/launcher2/AppsCustomizeAsyncTask;->threadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 158
    return-void
.end method
