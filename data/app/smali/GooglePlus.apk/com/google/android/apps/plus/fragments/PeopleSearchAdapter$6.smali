.class Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6;
.super Landroid/widget/Filter;
.source "PeopleSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->createFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 8
    .parameter "resultValue"

    .prologue
    const/4 v5, -0x1

    .line 1301
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    .line 1302
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1303
    :cond_c
    const-string v4, ""

    .line 1320
    :goto_e
    return-object v4

    .line 1306
    :cond_f
    const-string v4, "circle_name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1307
    .local v0, circleNameIndex:I
    if-eq v0, v5, :cond_1c

    .line 1308
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 1310
    :cond_1c
    const-string v4, "name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1311
    .local v3, personNameIndex:I
    if-eq v3, v5, :cond_29

    .line 1312
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 1314
    :cond_29
    const-string v4, "address"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1315
    .local v2, emailIndex:I
    if-eq v2, v5, :cond_36

    .line 1316
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 1320
    :cond_36
    const-string v4, ""

    goto :goto_e
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5
    .parameter "queryString"

    .prologue
    .line 1251
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    #calls: Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->releaseLatch()V
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->access$200(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)V

    .line 1253
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1254
    .local v0, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    #setter for: Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilterLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->access$302(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1255
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    #getter for: Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->access$500(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6$1;-><init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1282
    :try_start_1e
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_2d

    .line 1286
    :goto_21
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mFilterLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->access$302(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1288
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    return-object v1

    .line 1283
    :catch_2d
    move-exception v1

    goto :goto_21
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$6;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->getCount()I

    move-result v0

    iput v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 1294
    return-void
.end method
