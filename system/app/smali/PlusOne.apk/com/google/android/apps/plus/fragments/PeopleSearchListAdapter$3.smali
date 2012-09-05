.class Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;
.super Landroid/widget/Filter;
.source "PeopleSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "resultValue"

    .prologue
    const/4 v4, -0x1

    .line 1352
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    .line 1353
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1354
    :cond_c
    const-string v3, ""

    .line 1366
    :goto_e
    return-object v3

    .line 1357
    :cond_f
    const-string v3, "circle_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1358
    .local v0, circleNameIndex:I
    if-eq v0, v4, :cond_1c

    .line 1359
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 1361
    :cond_1c
    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1362
    .local v2, personNameIndex:I
    if-eq v2, v4, :cond_29

    .line 1363
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 1366
    :cond_29
    const-string v3, ""

    goto :goto_e
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5
    .parameter "queryString"

    .prologue
    .line 1302
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    #calls: Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->releaseLatch()V
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->access$100(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V

    .line 1304
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1305
    .local v0, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    #setter for: Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mFilterLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->access$202(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1306
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    #getter for: Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->access$400(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;-><init>(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1333
    :try_start_1e
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_2d

    .line 1337
    :goto_21
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mFilterLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->access$202(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1339
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    return-object v1

    .line 1334
    :catch_2d
    move-exception v1

    goto :goto_21
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->getCount()I

    move-result v0

    iput v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 1345
    return-void
.end method
