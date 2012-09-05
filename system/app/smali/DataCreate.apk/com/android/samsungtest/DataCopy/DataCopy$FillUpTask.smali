.class Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;
.super Landroid/os/AsyncTask;
.source "DataCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/DataCopy/DataCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FillUpTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final PREFIX:Ljava/lang/String;

.field private mCurrent:I

.field final synthetic this$0:Lcom/android/samsungtest/DataCopy/DataCopy;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/DataCopy/DataCopy;)V
    .registers 3
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 343
    const-string v0, "Creating "

    iput-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/DataCopy/DataCopy;Lcom/android/samsungtest/DataCopy/DataCopy$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;-><init>(Lcom/android/samsungtest/DataCopy/DataCopy;)V

    return-void
.end method

.method private fillUpCallLog()V
    .registers 4

    .prologue
    const/16 v2, 0xa6

    .line 1332
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpCallLog(II)V

    .line 1333
    const/16 v0, 0xa8

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpCallLog(II)V

    .line 1334
    const/4 v0, 0x3

    invoke-direct {p0, v2, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpCallLog(II)V

    .line 1335
    return-void
.end method

.method private fillUpCallLog(II)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x14

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1338
    if-gtz p1, :cond_9

    .line 1425
    :goto_8
    return-void

    .line 1341
    :cond_9
    const-string v0, "DataCopyNew"

    const-string v2, "fillUpCallLog();"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/4 v0, 0x0

    .line 1349
    :try_start_11
    new-instance v4, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CALLLOG_FILE:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$4000(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1ff
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1c} :catch_233
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_213

    .line 1350
    :try_start_1c
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_204
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_21} :catch_23c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_21b

    .line 1352
    :try_start_21
    const-string v5, "DataCopyNew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[fillUpCallLog]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v8, "yyyy.MMMMM.dd GGG hh:mm:ss aaa"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->getDateFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2200(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " Type : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_5e
    .catchall {:try_start_21 .. :try_end_5e} :catchall_208
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_5e} :catch_245
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_5e} :catch_222

    move-object v5, v2

    move v6, v3

    move v0, v3

    move-object v2, v1

    move v1, v3

    .line 1356
    :goto_63
    if-lt v6, v11, :cond_c2

    .line 1404
    :cond_65
    :goto_65
    :try_start_65
    const-string v1, "DataCopyNew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RowCount: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_65 .. :try_end_7d} :catchall_197
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_7d} :catch_d6
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_7d} :catch_15b

    .line 1412
    if-eqz v4, :cond_82

    :try_start_7f
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_1e6

    .line 1416
    :cond_82
    :goto_82
    if-eqz v2, :cond_87

    :try_start_84
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_1e9

    .line 1420
    :cond_87
    :goto_87
    if-eqz v5, :cond_8c

    :try_start_89
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_1ec

    .line 1424
    :cond_8c
    :goto_8c
    const-string v1, "DataCopyNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[fillUpCallLog]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v4, "yyyy.MMMMM.dd GGG hh:mm:ss aaa"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->getDateFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2200(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Type : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1359
    :cond_c2
    :try_start_c2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1360
    iget-object v7, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->isLowMemoryState:Z
    invoke-static {v7}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$000(Lcom/android/samsungtest/DataCopy/DataCopy;)Z

    move-result v7

    if-eqz v7, :cond_12d

    .line 1361
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v3, "Memory is changed to low space, so Calllog fillup is ended"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_c2 .. :try_end_d5} :catchall_197
    .catch Ljava/io/FileNotFoundException; {:try_start_c2 .. :try_end_d5} :catch_d6
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_d5} :catch_15b

    goto :goto_65

    .line 1405
    :catch_d6
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    .line 1406
    :goto_d9
    :try_start_d9
    iget-object v5, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CALLLOG_FILE:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$4000(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], please check path of loaddata !!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    .line 1407
    const-string v5, "DataCopyNew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catchall {:try_start_d9 .. :try_end_119} :catchall_20f

    .line 1412
    if-eqz v3, :cond_11e

    :try_start_11b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_11e} :catch_1ef

    .line 1416
    :cond_11e
    :goto_11e
    if-eqz v2, :cond_123

    :try_start_120
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_1f2

    .line 1420
    :cond_123
    :goto_123
    if-eqz v4, :cond_8c

    :try_start_125
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_12a

    goto/16 :goto_8c

    .line 1421
    :catch_12a
    move-exception v1

    goto/16 :goto_8c

    .line 1365
    :cond_12d
    if-nez v3, :cond_149

    .line 1366
    :try_start_12f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1367
    new-instance v3, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CALLLOG_FILE:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$4000(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_13d
    .catchall {:try_start_12f .. :try_end_13d} :catchall_197
    .catch Ljava/io/FileNotFoundException; {:try_start_12f .. :try_end_13d} :catch_d6
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_13d} :catch_15b

    .line 1368
    :try_start_13d
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_142
    .catchall {:try_start_13d .. :try_end_142} :catchall_20c
    .catch Ljava/io/FileNotFoundException; {:try_start_13d .. :try_end_142} :catch_24e
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_142} :catch_229

    .line 1369
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v2

    move-object v2, v3

    .line 1370
    goto/16 :goto_63

    .line 1372
    :cond_149
    if-lt v0, p1, :cond_1b4

    .line 1373
    :try_start_14b
    const-string v1, "logs"

    invoke-direct {p0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->insertIntoDB(Ljava/lang/String;)V

    .line 1374
    if-ne p2, v9, :cond_18c

    .line 1375
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v3, "Incomming Call log fillup is done"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V
    :try_end_159
    .catchall {:try_start_14b .. :try_end_159} :catchall_197
    .catch Ljava/io/FileNotFoundException; {:try_start_14b .. :try_end_159} :catch_d6
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_159} :catch_15b

    goto/16 :goto_65

    .line 1408
    :catch_15b
    move-exception v1

    .line 1409
    :goto_15c
    :try_start_15c
    const-string v3, "DataCopyNew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_178
    .catchall {:try_start_15c .. :try_end_178} :catchall_197

    .line 1412
    if-eqz v4, :cond_17d

    :try_start_17a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_17d
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_17d} :catch_1f5

    .line 1416
    :cond_17d
    :goto_17d
    if-eqz v2, :cond_182

    :try_start_17f
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_1f7

    .line 1420
    :cond_182
    :goto_182
    if-eqz v5, :cond_8c

    :try_start_184
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_189

    goto/16 :goto_8c

    .line 1421
    :catch_189
    move-exception v1

    goto/16 :goto_8c

    .line 1376
    :cond_18c
    if-ne p2, v10, :cond_1a8

    .line 1377
    :try_start_18e
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v3, "OutGoing Call log fillup is done"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V
    :try_end_195
    .catchall {:try_start_18e .. :try_end_195} :catchall_197
    .catch Ljava/io/FileNotFoundException; {:try_start_18e .. :try_end_195} :catch_d6
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_195} :catch_15b

    goto/16 :goto_65

    .line 1411
    :catchall_197
    move-exception v0

    .line 1412
    :goto_198
    if-eqz v4, :cond_19d

    :try_start_19a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19d} :catch_1f9

    .line 1416
    :cond_19d
    :goto_19d
    if-eqz v2, :cond_1a2

    :try_start_19f
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_1fb

    .line 1420
    :cond_1a2
    :goto_1a2
    if-eqz v5, :cond_1a7

    :try_start_1a4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_1fd

    .line 1422
    :cond_1a7
    :goto_1a7
    throw v0

    .line 1378
    :cond_1a8
    const/4 v1, 0x3

    if-ne p2, v1, :cond_65

    .line 1379
    :try_start_1ab
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v3, "Missed Call log fillup is done"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    goto/16 :goto_65

    .line 1382
    :cond_1b4
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1383
    array-length v3, v7
    :try_end_1bb
    .catchall {:try_start_1ab .. :try_end_1bb} :catchall_197
    .catch Ljava/io/FileNotFoundException; {:try_start_1ab .. :try_end_1bb} :catch_d6
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1bb} :catch_15b

    if-ge v3, v10, :cond_1c2

    .line 1384
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    .line 1385
    goto/16 :goto_63

    .line 1389
    :cond_1c2
    const/4 v3, 0x1

    :try_start_1c3
    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c8
    .catchall {:try_start_1c3 .. :try_end_1c8} :catchall_197
    .catch Ljava/lang/NumberFormatException; {:try_start_1c3 .. :try_end_1c8} :catch_1cf
    .catch Ljava/io/FileNotFoundException; {:try_start_1c3 .. :try_end_1c8} :catch_d6
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c8} :catch_15b

    move-result v1

    move v3, v1

    .line 1393
    :goto_1ca
    if-eq v3, p2, :cond_1d2

    move v1, v3

    .line 1394
    goto/16 :goto_63

    .line 1390
    :catch_1cf
    move-exception v3

    move v3, v1

    goto :goto_1ca

    .line 1397
    :cond_1d2
    :try_start_1d2
    invoke-direct {p0, v7}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->insertIntoCalllogDB([Ljava/lang/String;)V
    :try_end_1d5
    .catchall {:try_start_1d2 .. :try_end_1d5} :catchall_197
    .catch Ljava/io/FileNotFoundException; {:try_start_1d2 .. :try_end_1d5} :catch_d6
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d5} :catch_15b

    .line 1398
    add-int/lit8 v1, v0, 0x1

    .line 1400
    :try_start_1d7
    rem-int/lit8 v0, v1, 0x14

    if-nez v0, :cond_1e2

    if-lt v1, v11, :cond_1e2

    .line 1401
    const-string v0, "logs"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->insertIntoDB(Ljava/lang/String;)V
    :try_end_1e2
    .catchall {:try_start_1d7 .. :try_end_1e2} :catchall_197
    .catch Ljava/io/FileNotFoundException; {:try_start_1d7 .. :try_end_1e2} :catch_254
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1e2} :catch_22d

    :cond_1e2
    move v0, v1

    move v1, v3

    .line 1403
    goto/16 :goto_63

    .line 1413
    :catch_1e6
    move-exception v1

    goto/16 :goto_82

    .line 1417
    :catch_1e9
    move-exception v1

    goto/16 :goto_87

    .line 1421
    :catch_1ec
    move-exception v1

    goto/16 :goto_8c

    .line 1413
    :catch_1ef
    move-exception v1

    goto/16 :goto_11e

    .line 1417
    :catch_1f2
    move-exception v1

    goto/16 :goto_123

    .line 1413
    :catch_1f5
    move-exception v1

    goto :goto_17d

    .line 1417
    :catch_1f7
    move-exception v1

    goto :goto_182

    .line 1413
    :catch_1f9
    move-exception v1

    goto :goto_19d

    .line 1417
    :catch_1fb
    move-exception v1

    goto :goto_1a2

    .line 1421
    :catch_1fd
    move-exception v1

    goto :goto_1a7

    .line 1411
    :catchall_1ff
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    goto :goto_198

    :catchall_204
    move-exception v0

    move-object v2, v1

    move-object v5, v1

    goto :goto_198

    :catchall_208
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    goto :goto_198

    :catchall_20c
    move-exception v0

    move-object v2, v3

    goto :goto_198

    :catchall_20f
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    goto :goto_198

    .line 1408
    :catch_213
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v1, v0

    move v0, v3

    goto/16 :goto_15c

    :catch_21b
    move-exception v0

    move-object v2, v1

    move-object v5, v1

    move-object v1, v0

    move v0, v3

    goto/16 :goto_15c

    :catch_222
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    goto/16 :goto_15c

    :catch_229
    move-exception v1

    move-object v2, v3

    goto/16 :goto_15c

    :catch_22d
    move-exception v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto/16 :goto_15c

    .line 1405
    :catch_233
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    move-object v12, v1

    move-object v1, v0

    move v0, v3

    move-object v3, v12

    goto/16 :goto_d9

    :catch_23c
    move-exception v0

    move-object v2, v1

    move-object v12, v0

    move v0, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v12

    goto/16 :goto_d9

    :catch_245
    move-exception v0

    move-object v12, v0

    move v0, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_d9

    :catch_24e
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_d9

    :catch_254
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto/16 :goto_d9
.end method

.method private fillUpContact()V
    .registers 2

    .prologue
    .line 857
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpContact(I)V

    .line 858
    return-void
.end method

.method private fillUpContact(I)V
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 861
    if-gtz p1, :cond_4

    .line 924
    :cond_3
    :goto_3
    return-void

    .line 865
    :cond_4
    const/4 v4, 0x0

    .line 869
    :try_start_5
    new-instance v2, Ljava/io/FileReader;

    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CONTACT_FILE:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3800(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1a2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_10} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_1c4

    .line 870
    :try_start_10
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1bf
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_15} :catch_1e3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_1cb

    .line 872
    :try_start_15
    const-string v0, "DataCopyNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[fillUpContact]["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v6, "yyyy.MMMMM.dd GGG hh:mm:ss aaa"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->getDateFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2200(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "] Count: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_48
    .catchall {:try_start_15 .. :try_end_48} :catchall_1c2
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_48} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_48} :catch_1d1

    move v0, v4

    .line 875
    :goto_49
    :try_start_49
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 876
    iget-object v4, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->isLowMemoryState:Z
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$000(Lcom/android/samsungtest/DataCopy/DataCopy;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 877
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v4, "Memory is changed to low space, so Contact fillup is ended"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    .line 878
    const-string v1, "DataCopyNew"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact fill up low memory status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_49 .. :try_end_74} :catchall_1c2
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_74} :catch_c1
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_74} :catch_143

    .line 911
    :goto_74
    if-eqz v2, :cond_79

    :try_start_76
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_1b0

    .line 915
    :cond_79
    :goto_79
    if-eqz v3, :cond_7e

    :try_start_7b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_1b3

    .line 919
    :cond_7e
    :goto_7e
    const-string v1, "DataCopyNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[fillUpContact]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v4, "yyyy.MMMMM.dd GGG hh:mm:ss aaa"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->getDateFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2200(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->isLowMemoryState:Z
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$000(Lcom/android/samsungtest/DataCopy/DataCopy;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 922
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v1, "Contact Fillup is done"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 881
    :cond_b9
    if-lt v0, p1, :cond_111

    .line 882
    :try_start_bb
    const-string v1, "com.android.contacts"

    invoke-direct {p0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->insertIntoDB(Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_1c2
    .catch Ljava/io/FileNotFoundException; {:try_start_bb .. :try_end_c0} :catch_c1
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c0} :catch_143

    goto :goto_74

    .line 904
    :catch_c1
    move-exception v1

    .line 905
    :goto_c2
    :try_start_c2
    iget-object v4, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CONTACT_FILE:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3800(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], please check path of loaddata !!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    .line 906
    const-string v4, "DataCopyNew"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catchall {:try_start_c2 .. :try_end_102} :catchall_1c2

    .line 911
    if-eqz v2, :cond_107

    :try_start_104
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_107} :catch_1b6

    .line 915
    :cond_107
    :goto_107
    if-eqz v3, :cond_7e

    :try_start_109
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10c} :catch_10e

    goto/16 :goto_7e

    .line 916
    :catch_10e
    move-exception v1

    goto/16 :goto_7e

    .line 885
    :cond_111
    if-eqz v1, :cond_11b

    :try_start_113
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 886
    :cond_11b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 887
    const-string v1, "com.android.contacts"

    invoke-direct {p0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->insertIntoDB(Ljava/lang/String;)V

    .line 888
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact.txt file just has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " data.\n Please fill up."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V
    :try_end_141
    .catchall {:try_start_113 .. :try_end_141} :catchall_1c2
    .catch Ljava/io/FileNotFoundException; {:try_start_113 .. :try_end_141} :catch_c1
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_141} :catch_143

    goto/16 :goto_74

    .line 907
    :catch_143
    move-exception v1

    .line 908
    :goto_144
    :try_start_144
    const-string v4, "DataCopyNew"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catchall {:try_start_144 .. :try_end_160} :catchall_1c2

    .line 911
    if-eqz v2, :cond_165

    :try_start_162
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_165} :catch_1b9

    .line 915
    :cond_165
    :goto_165
    if-eqz v3, :cond_7e

    :try_start_167
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_16c

    goto/16 :goto_7e

    .line 916
    :catch_16c
    move-exception v1

    goto/16 :goto_7e

    .line 892
    :cond_16f
    :try_start_16f
    const-string v4, "DataCopyNew"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strLine: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v4, "\t"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-direct {p0, v1, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->insertIntoContactDB([Ljava/lang/String;I)V
    :try_end_190
    .catchall {:try_start_16f .. :try_end_190} :catchall_1c2
    .catch Ljava/io/FileNotFoundException; {:try_start_16f .. :try_end_190} :catch_c1
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_190} :catch_143

    .line 898
    add-int/lit8 v1, v0, 0x1

    .line 900
    :try_start_192
    rem-int/lit8 v0, v1, 0x14

    if-nez v0, :cond_19f

    const/16 v0, 0x14

    if-lt v1, v0, :cond_19f

    .line 901
    const-string v0, "com.android.contacts"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->insertIntoDB(Ljava/lang/String;)V
    :try_end_19f
    .catchall {:try_start_192 .. :try_end_19f} :catchall_1c2
    .catch Ljava/io/FileNotFoundException; {:try_start_192 .. :try_end_19f} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_19f} :catch_1d6

    :cond_19f
    move v0, v1

    .line 903
    goto/16 :goto_49

    .line 910
    :catchall_1a2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 911
    :goto_1a5
    if-eqz v2, :cond_1aa

    :try_start_1a7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1aa} :catch_1bb

    .line 915
    :cond_1aa
    :goto_1aa
    if-eqz v3, :cond_1af

    :try_start_1ac
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1af} :catch_1bd

    .line 917
    :cond_1af
    :goto_1af
    throw v0

    .line 912
    :catch_1b0
    move-exception v1

    goto/16 :goto_79

    .line 916
    :catch_1b3
    move-exception v1

    goto/16 :goto_7e

    .line 912
    :catch_1b6
    move-exception v1

    goto/16 :goto_107

    :catch_1b9
    move-exception v1

    goto :goto_165

    :catch_1bb
    move-exception v1

    goto :goto_1aa

    .line 916
    :catch_1bd
    move-exception v1

    goto :goto_1af

    .line 910
    :catchall_1bf
    move-exception v0

    move-object v3, v1

    goto :goto_1a5

    :catchall_1c2
    move-exception v0

    goto :goto_1a5

    .line 907
    :catch_1c4
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_144

    :catch_1cb
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_144

    :catch_1d1
    move-exception v0

    move-object v1, v0

    move v0, v4

    goto/16 :goto_144

    :catch_1d6
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto/16 :goto_144

    .line 904
    :catch_1dc
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_c2

    :catch_1e3
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_c2

    :catch_1e9
    move-exception v0

    move-object v1, v0

    move v0, v4

    goto/16 :goto_c2

    :catch_1ee
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto/16 :goto_c2
.end method

.method private fillUpMMS()V
    .registers 3

    .prologue
    const/16 v1, 0xfa

    .line 596
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpMMS(II)V

    .line 597
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpMMS(II)V

    .line 598
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpMMS(II)V

    .line 599
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpMMS(II)V

    .line 600
    return-void
.end method

.method private fillUpMMS(II)V
    .registers 26
    .parameter "mmscount"
    .parameter "type"

    .prologue
    .line 603
    if-gtz p1, :cond_3

    .line 692
    :goto_2
    return-void

    .line 606
    :cond_3
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v20, v0

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->appPartDirectory:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3000(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 607
    const/4 v5, 0x0

    .line 609
    .local v5, nType:I
    const/4 v8, 0x0

    .line 610
    .local v8, br:Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 611
    .local v11, fr:Ljava/io/FileReader;
    const/4 v13, 0x0

    .line 612
    .local v13, fr2:Ljava/io/FileReader;
    const/16 v18, 0x0

    .line 613
    .local v18, rowCount:I
    const/16 v17, 0x0

    .line 615
    .local v17, retryCounter:I
    :try_start_1f
    new-instance v12, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->MMS_FILE:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3100(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_28c
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2c} :catch_2a4
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2c} :catch_298

    .line 616
    .end local v11           #fr:Ljava/io/FileReader;
    .local v12, fr:Ljava/io/FileReader;
    :try_start_2c
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_28f
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_31} :catch_2a7
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_29b

    .line 618
    .end local v8           #br:Ljava/io/BufferedReader;
    .local v9, br:Ljava/io/BufferedReader;
    :try_start_31
    const-string v2, "DataCopyNew"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[fillUpMMS]["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v21, v0

    const-string v22, "yyyy.MMMMM.dd GGG hh:mm:ss aaa"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->getDateFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2200(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] Count: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Type : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_31 .. :try_end_73} :catchall_293
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_73} :catch_2ab
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_73} :catch_29f

    move-object v14, v13

    .line 621
    .end local v13           #fr2:Ljava/io/FileReader;
    .local v14, fr2:Ljava/io/FileReader;
    :cond_74
    :goto_74
    const/16 v2, 0x14

    move/from16 v0, v17

    if-lt v0, v2, :cond_d0

    .line 679
    :cond_7a
    :goto_7a
    if-eqz v12, :cond_7f

    :try_start_7c
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_271

    .line 683
    :cond_7f
    :goto_7f
    if-eqz v14, :cond_84

    :try_start_81
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_274

    .line 687
    :cond_84
    :goto_84
    if-eqz v9, :cond_89

    :try_start_86
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_26b

    :cond_89
    move-object v13, v14

    .end local v14           #fr2:Ljava/io/FileReader;
    .restart local v13       #fr2:Ljava/io/FileReader;
    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    move-object v8, v9

    .line 691
    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    :cond_8c
    :goto_8c
    const-string v2, "DataCopyNew"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[fillUpMMS]["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v21, v0

    const-string v22, "yyyy.MMMMM.dd GGG hh:mm:ss aaa"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->getDateFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2200(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] Count: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Type : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 624
    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v11           #fr:Ljava/io/FileReader;
    .end local v13           #fr2:Ljava/io/FileReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    .restart local v14       #fr2:Ljava/io/FileReader;
    :cond_d0
    :try_start_d0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 625
    .local v19, strLine:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->isLowMemoryState:Z
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$000(Lcom/android/samsungtest/DataCopy/DataCopy;)Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v20, "Memory is changed to low space, so MMS fillup is ended"

    move-object/from16 v0, v20

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_d0 .. :try_end_e9} :catchall_1c9
    .catch Ljava/io/FileNotFoundException; {:try_start_d0 .. :try_end_e9} :catch_ea
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_e9} :catch_181

    goto :goto_7a

    .line 672
    .end local v19           #strLine:Ljava/lang/String;
    :catch_ea
    move-exception v10

    move-object v13, v14

    .end local v14           #fr2:Ljava/io/FileReader;
    .restart local v13       #fr2:Ljava/io/FileReader;
    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    move-object v8, v9

    .line 673
    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    .local v10, fnfe:Ljava/io/FileNotFoundException;
    :goto_ee
    :try_start_ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Can not find ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v21, v0

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->MMS_FILE:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3100(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "], please check path of loaddata !!!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    .line 674
    const-string v2, "DataCopyNew"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FileNotFoundException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catchall {:try_start_ee .. :try_end_138} :catchall_28c

    .line 679
    if-eqz v11, :cond_13d

    :try_start_13a
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13d} :catch_277

    .line 683
    :cond_13d
    :goto_13d
    if-eqz v13, :cond_142

    :try_start_13f
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_142} :catch_27a

    .line 687
    :cond_142
    :goto_142
    if-eqz v8, :cond_8c

    :try_start_144
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_149

    goto/16 :goto_8c

    .line 688
    :catch_149
    move-exception v2

    goto/16 :goto_8c

    .line 629
    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v10           #fnfe:Ljava/io/FileNotFoundException;
    .end local v11           #fr:Ljava/io/FileReader;
    .end local v13           #fr2:Ljava/io/FileReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    .restart local v14       #fr2:Ljava/io/FileReader;
    .restart local v19       #strLine:Ljava/lang/String;
    :cond_14c
    if-nez v19, :cond_169

    .line 630
    :try_start_14e
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 631
    new-instance v13, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->MMS_FILE:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3100(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_15e
    .catchall {:try_start_14e .. :try_end_15e} :catchall_1c9
    .catch Ljava/io/FileNotFoundException; {:try_start_14e .. :try_end_15e} :catch_ea
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_15e} :catch_181

    .line 632
    .end local v14           #fr2:Ljava/io/FileReader;
    .restart local v13       #fr2:Ljava/io/FileReader;
    :try_start_15e
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_163
    .catchall {:try_start_15e .. :try_end_163} :catchall_293
    .catch Ljava/io/FileNotFoundException; {:try_start_15e .. :try_end_163} :catch_2ab
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_163} :catch_29f

    .line 633
    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    add-int/lit8 v17, v17, 0x1

    move-object v14, v13

    .end local v13           #fr2:Ljava/io/FileReader;
    .restart local v14       #fr2:Ljava/io/FileReader;
    move-object v9, v8

    .line 634
    .end local v8           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_74

    .line 636
    :cond_169
    move/from16 v0, v18

    move/from16 v1, p1

    if-lt v0, v1, :cond_201

    .line 637
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1b7

    .line 638
    :try_start_174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v20, "MMS Inbox fill up is done"

    move-object/from16 v0, v20

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V
    :try_end_17f
    .catchall {:try_start_174 .. :try_end_17f} :catchall_1c9
    .catch Ljava/io/FileNotFoundException; {:try_start_174 .. :try_end_17f} :catch_ea
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_17f} :catch_181

    goto/16 :goto_7a

    .line 675
    .end local v19           #strLine:Ljava/lang/String;
    :catch_181
    move-exception v15

    move-object v13, v14

    .end local v14           #fr2:Ljava/io/FileReader;
    .restart local v13       #fr2:Ljava/io/FileReader;
    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    move-object v8, v9

    .line 676
    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    .local v15, ioe:Ljava/io/IOException;
    :goto_185
    :try_start_185
    const-string v2, "DataCopyNew"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IOException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a3
    .catchall {:try_start_185 .. :try_end_1a3} :catchall_28c

    .line 679
    if-eqz v11, :cond_1a8

    :try_start_1a5
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1a8} :catch_27d

    .line 683
    :cond_1a8
    :goto_1a8
    if-eqz v13, :cond_1ad

    :try_start_1aa
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1ad} :catch_280

    .line 687
    :cond_1ad
    :goto_1ad
    if-eqz v8, :cond_8c

    :try_start_1af
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1b2} :catch_1b4

    goto/16 :goto_8c

    .line 688
    :catch_1b4
    move-exception v2

    goto/16 :goto_8c

    .line 639
    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v11           #fr:Ljava/io/FileReader;
    .end local v13           #fr2:Ljava/io/FileReader;
    .end local v15           #ioe:Ljava/io/IOException;
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    .restart local v14       #fr2:Ljava/io/FileReader;
    .restart local v19       #strLine:Ljava/lang/String;
    :cond_1b7
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1dd

    .line 640
    :try_start_1bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v20, "MMS Snetbox fill up is done"

    move-object/from16 v0, v20

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V
    :try_end_1c7
    .catchall {:try_start_1bc .. :try_end_1c7} :catchall_1c9
    .catch Ljava/io/FileNotFoundException; {:try_start_1bc .. :try_end_1c7} :catch_ea
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1c7} :catch_181

    goto/16 :goto_7a

    .line 678
    .end local v19           #strLine:Ljava/lang/String;
    :catchall_1c9
    move-exception v2

    move-object v13, v14

    .end local v14           #fr2:Ljava/io/FileReader;
    .restart local v13       #fr2:Ljava/io/FileReader;
    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    move-object v8, v9

    .line 679
    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    :goto_1cd
    if-eqz v11, :cond_1d2

    :try_start_1cf
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d2} :catch_283

    .line 683
    :cond_1d2
    :goto_1d2
    if-eqz v13, :cond_1d7

    :try_start_1d4
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1d7} :catch_286

    .line 687
    :cond_1d7
    :goto_1d7
    if-eqz v8, :cond_1dc

    :try_start_1d9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_1dc} :catch_289

    .line 689
    :cond_1dc
    :goto_1dc
    throw v2

    .line 641
    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v11           #fr:Ljava/io/FileReader;
    .end local v13           #fr2:Ljava/io/FileReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    .restart local v14       #fr2:Ljava/io/FileReader;
    .restart local v19       #strLine:Ljava/lang/String;
    :cond_1dd
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_1ef

    .line 642
    :try_start_1e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v20, "MMS Draftbox fill up is done"

    move-object/from16 v0, v20

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 643
    :cond_1ef
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_7a

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v20, "MMS Outbox fill up is done"

    move-object/from16 v0, v20

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 648
    :cond_201
    const-string v2, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 649
    .local v16, mmsDatas:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ge v2, v0, :cond_216

    .line 650
    add-int/lit8 v17, v17, 0x1

    .line 651
    goto/16 :goto_74

    .line 653
    :cond_216
    const/4 v2, 0x0

    aget-object v3, v16, v2

    .line 654
    .local v3, fromNumber:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v4, v16, v2
    :try_end_21c
    .catchall {:try_start_1e2 .. :try_end_21c} :catchall_1c9
    .catch Ljava/io/FileNotFoundException; {:try_start_1e2 .. :try_end_21c} :catch_ea
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_21c} :catch_181

    .line 656
    .local v4, toNumber:Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_21d
    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_222
    .catchall {:try_start_21d .. :try_end_222} :catchall_1c9
    .catch Ljava/lang/NumberFormatException; {:try_start_21d .. :try_end_222} :catch_2b0
    .catch Ljava/io/FileNotFoundException; {:try_start_21d .. :try_end_222} :catch_ea
    .catch Ljava/io/IOException; {:try_start_21d .. :try_end_222} :catch_181

    move-result v5

    .line 661
    :goto_223
    move/from16 v0, p2

    if-ne v5, v0, :cond_74

    .line 664
    const/4 v2, 0x3

    :try_start_228
    aget-object v7, v16, v2

    .line 665
    .local v7, message:Ljava/lang/String;
    const/4 v2, 0x4

    aget-object v2, v16, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->makeImageFilePathforMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, imageFileName:Ljava/lang/String;
    move-object/from16 v2, p0

    .line 666
    invoke-direct/range {v2 .. v7}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->makeMMSDBData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 667
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->makeAppParts(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    add-int/lit8 v18, v18, 0x1

    .line 669
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    .line 670
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v2, v20

    const/16 v20, 0x1

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v2, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_269
    .catchall {:try_start_228 .. :try_end_269} :catchall_1c9
    .catch Ljava/io/FileNotFoundException; {:try_start_228 .. :try_end_269} :catch_ea
    .catch Ljava/io/IOException; {:try_start_228 .. :try_end_269} :catch_181

    goto/16 :goto_74

    .line 688
    .end local v3           #fromNumber:Ljava/lang/String;
    .end local v4           #toNumber:Ljava/lang/String;
    .end local v6           #imageFileName:Ljava/lang/String;
    .end local v7           #message:Ljava/lang/String;
    .end local v16           #mmsDatas:[Ljava/lang/String;
    .end local v19           #strLine:Ljava/lang/String;
    :catch_26b
    move-exception v2

    move-object v13, v14

    .end local v14           #fr2:Ljava/io/FileReader;
    .restart local v13       #fr2:Ljava/io/FileReader;
    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    move-object v8, v9

    .line 690
    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    goto/16 :goto_8c

    .line 680
    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v11           #fr:Ljava/io/FileReader;
    .end local v13           #fr2:Ljava/io/FileReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    .restart local v14       #fr2:Ljava/io/FileReader;
    :catch_271
    move-exception v2

    goto/16 :goto_7f

    .line 684
    :catch_274
    move-exception v2

    goto/16 :goto_84

    .line 680
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v12           #fr:Ljava/io/FileReader;
    .end local v14           #fr2:Ljava/io/FileReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    .restart local v10       #fnfe:Ljava/io/FileNotFoundException;
    .restart local v11       #fr:Ljava/io/FileReader;
    .restart local v13       #fr2:Ljava/io/FileReader;
    :catch_277
    move-exception v2

    goto/16 :goto_13d

    .line 684
    :catch_27a
    move-exception v2

    goto/16 :goto_142

    .line 680
    .end local v10           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v15       #ioe:Ljava/io/IOException;
    :catch_27d
    move-exception v2

    goto/16 :goto_1a8

    .line 684
    :catch_280
    move-exception v2

    goto/16 :goto_1ad

    .line 680
    .end local v15           #ioe:Ljava/io/IOException;
    :catch_283
    move-exception v20

    goto/16 :goto_1d2

    .line 684
    :catch_286
    move-exception v20

    goto/16 :goto_1d7

    .line 688
    :catch_289
    move-exception v20

    goto/16 :goto_1dc

    .line 678
    :catchall_28c
    move-exception v2

    goto/16 :goto_1cd

    .end local v11           #fr:Ljava/io/FileReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    :catchall_28f
    move-exception v2

    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    goto/16 :goto_1cd

    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v11           #fr:Ljava/io/FileReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    :catchall_293
    move-exception v2

    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    move-object v8, v9

    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    goto/16 :goto_1cd

    .line 675
    :catch_298
    move-exception v15

    goto/16 :goto_185

    .end local v11           #fr:Ljava/io/FileReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    :catch_29b
    move-exception v15

    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    goto/16 :goto_185

    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v11           #fr:Ljava/io/FileReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    :catch_29f
    move-exception v15

    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    move-object v8, v9

    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    goto/16 :goto_185

    .line 672
    :catch_2a4
    move-exception v10

    goto/16 :goto_ee

    .end local v11           #fr:Ljava/io/FileReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    :catch_2a7
    move-exception v10

    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    goto/16 :goto_ee

    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v11           #fr:Ljava/io/FileReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    :catch_2ab
    move-exception v10

    move-object v11, v12

    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #fr:Ljava/io/FileReader;
    move-object v8, v9

    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v8       #br:Ljava/io/BufferedReader;
    goto/16 :goto_ee

    .line 657
    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v11           #fr:Ljava/io/FileReader;
    .end local v13           #fr2:Ljava/io/FileReader;
    .restart local v3       #fromNumber:Ljava/lang/String;
    .restart local v4       #toNumber:Ljava/lang/String;
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    .restart local v14       #fr2:Ljava/io/FileReader;
    .restart local v16       #mmsDatas:[Ljava/lang/String;
    .restart local v19       #strLine:Ljava/lang/String;
    :catch_2b0
    move-exception v2

    goto/16 :goto_223
.end method

.method private fillUpSMS()V
    .registers 3

    .prologue
    const/16 v1, 0x190

    .line 444
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpSMS(II)V

    .line 445
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpSMS(II)V

    .line 446
    const/16 v0, 0x63

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpSMS(II)V

    .line 447
    const/16 v0, 0x64

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpSMS(II)V

    .line 448
    return-void
.end method

.method private fillUpSMS(II)V
    .registers 21
    .parameter "smscount"
    .parameter "type"

    .prologue
    .line 451
    if-gtz p1, :cond_3

    .line 537
    :goto_2
    return-void

    .line 454
    :cond_3
    const/4 v12, 0x0

    .line 455
    .local v12, smsType:I
    const/4 v10, 0x0

    .line 456
    .local v10, rowCount:I
    const/4 v9, 0x0

    .line 457
    .local v9, retryCounter:I
    const/4 v1, 0x0

    .line 458
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 459
    .local v4, fr:Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 461
    .local v6, fr2:Ljava/io/FileReader;
    :try_start_9
    new-instance v5, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->SMS_FILE:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2100(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_228
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_16} :catch_23f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_233

    .line 462
    .end local v4           #fr:Ljava/io/FileReader;
    .local v5, fr:Ljava/io/FileReader;
    :try_start_16
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_22a
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1b} :catch_242
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_236

    .line 464
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_1b
    const-string v14, "DataCopyNew"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[fillUpSMS]["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v16, v0

    const-string v17, "yyyy.MMMMM.dd GGG hh:mm:ss aaa"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->getDateFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2200(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] Count: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Type : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_60
    .catchall {:try_start_1b .. :try_end_60} :catchall_22e
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_60} :catch_246
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_60} :catch_23a

    move-object v7, v6

    .line 468
    .end local v6           #fr2:Ljava/io/FileReader;
    .local v7, fr2:Ljava/io/FileReader;
    :cond_61
    :goto_61
    const/16 v14, 0x14

    if-lt v9, v14, :cond_b3

    .line 524
    :cond_65
    :goto_65
    if-eqz v5, :cond_6a

    :try_start_67
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_210

    .line 528
    :cond_6a
    :goto_6a
    if-eqz v7, :cond_6f

    :try_start_6c
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_213

    .line 532
    :cond_6f
    :goto_6f
    if-eqz v2, :cond_74

    :try_start_71
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_20a

    :cond_74
    move-object v6, v7

    .end local v7           #fr2:Ljava/io/FileReader;
    .restart local v6       #fr2:Ljava/io/FileReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v1, v2

    .line 536
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_77
    :goto_77
    const-string v14, "DataCopyNew"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[fillUpSMS]["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v16, v0

    const-string v17, "yyyy.MMMMM.dd GGG hh:mm:ss aaa"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->getDateFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2200(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] Count: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Type : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 471
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v6           #fr2:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #fr2:Ljava/io/FileReader;
    :cond_b3
    :try_start_b3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 472
    .local v13, strLine:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->isLowMemoryState:Z
    invoke-static {v14}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$000(Lcom/android/samsungtest/DataCopy/DataCopy;)Z

    move-result v14

    if-eqz v14, :cond_129

    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v15, "Memory is changed to low space, so SMS fillup is ended"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_b3 .. :try_end_ca} :catchall_1a5
    .catch Ljava/io/FileNotFoundException; {:try_start_b3 .. :try_end_ca} :catch_cb
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_ca} :catch_161

    goto :goto_65

    .line 517
    .end local v13           #strLine:Ljava/lang/String;
    :catch_cb
    move-exception v3

    move-object v6, v7

    .end local v7           #fr2:Ljava/io/FileReader;
    .restart local v6       #fr2:Ljava/io/FileReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v1, v2

    .line 518
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .local v3, fnfe:Ljava/io/FileNotFoundException;
    :goto_cf
    :try_start_cf
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Can not find ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v16, v0

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->SMS_FILE:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2100(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], please check path of loaddata !!!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    .line 519
    const-string v14, "DataCopyNew"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileNotFoundException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catchall {:try_start_cf .. :try_end_115} :catchall_228

    .line 524
    if-eqz v4, :cond_11a

    :try_start_117
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_216

    .line 528
    :cond_11a
    :goto_11a
    if-eqz v6, :cond_11f

    :try_start_11c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_219

    .line 532
    :cond_11f
    :goto_11f
    if-eqz v1, :cond_77

    :try_start_121
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_126

    goto/16 :goto_77

    .line 533
    :catch_126
    move-exception v14

    goto/16 :goto_77

    .line 476
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v6           #fr2:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #fr2:Ljava/io/FileReader;
    .restart local v13       #strLine:Ljava/lang/String;
    :cond_129
    if-nez v13, :cond_146

    .line 477
    :try_start_12b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 478
    new-instance v6, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->SMS_FILE:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2100(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_13b
    .catchall {:try_start_12b .. :try_end_13b} :catchall_1a5
    .catch Ljava/io/FileNotFoundException; {:try_start_12b .. :try_end_13b} :catch_cb
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_13b} :catch_161

    .line 479
    .end local v7           #fr2:Ljava/io/FileReader;
    .restart local v6       #fr2:Ljava/io/FileReader;
    :try_start_13b
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_140
    .catchall {:try_start_13b .. :try_end_140} :catchall_22e
    .catch Ljava/io/FileNotFoundException; {:try_start_13b .. :try_end_140} :catch_246
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_140} :catch_23a

    .line 480
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    add-int/lit8 v9, v9, 0x1

    move-object v7, v6

    .end local v6           #fr2:Ljava/io/FileReader;
    .restart local v7       #fr2:Ljava/io/FileReader;
    move-object v2, v1

    .line 481
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto/16 :goto_61

    .line 483
    :cond_146
    move/from16 v0, p1

    if-lt v10, v0, :cond_1d9

    .line 484
    :try_start_14a
    const-string v14, "sms"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->insertIntoDB(Ljava/lang/String;)V

    .line 485
    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_195

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v15, "SMS Inbox fill up is done"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V
    :try_end_15f
    .catchall {:try_start_14a .. :try_end_15f} :catchall_1a5
    .catch Ljava/io/FileNotFoundException; {:try_start_14a .. :try_end_15f} :catch_cb
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_15f} :catch_161

    goto/16 :goto_65

    .line 520
    .end local v13           #strLine:Ljava/lang/String;
    :catch_161
    move-exception v8

    move-object v6, v7

    .end local v7           #fr2:Ljava/io/FileReader;
    .restart local v6       #fr2:Ljava/io/FileReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v1, v2

    .line 521
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .local v8, ioe:Ljava/io/IOException;
    :goto_165
    :try_start_165
    const-string v14, "DataCopyNew"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181
    .catchall {:try_start_165 .. :try_end_181} :catchall_228

    .line 524
    if-eqz v4, :cond_186

    :try_start_183
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_21c

    .line 528
    :cond_186
    :goto_186
    if-eqz v6, :cond_18b

    :try_start_188
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_21f

    .line 532
    :cond_18b
    :goto_18b
    if-eqz v1, :cond_77

    :try_start_18d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_190} :catch_192

    goto/16 :goto_77

    .line 533
    :catch_192
    move-exception v14

    goto/16 :goto_77

    .line 487
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v6           #fr2:Ljava/io/FileReader;
    .end local v8           #ioe:Ljava/io/IOException;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #fr2:Ljava/io/FileReader;
    .restart local v13       #strLine:Ljava/lang/String;
    :cond_195
    const/4 v14, 0x2

    move/from16 v0, p2

    if-ne v0, v14, :cond_1b9

    .line 488
    :try_start_19a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v15, "SMS Snetbox fill up is done"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V
    :try_end_1a3
    .catchall {:try_start_19a .. :try_end_1a3} :catchall_1a5
    .catch Ljava/io/FileNotFoundException; {:try_start_19a .. :try_end_1a3} :catch_cb
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_1a3} :catch_161

    goto/16 :goto_65

    .line 523
    .end local v13           #strLine:Ljava/lang/String;
    :catchall_1a5
    move-exception v14

    move-object v6, v7

    .end local v7           #fr2:Ljava/io/FileReader;
    .restart local v6       #fr2:Ljava/io/FileReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v1, v2

    .line 524
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :goto_1a9
    if-eqz v4, :cond_1ae

    :try_start_1ab
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1ae} :catch_222

    .line 528
    :cond_1ae
    :goto_1ae
    if-eqz v6, :cond_1b3

    :try_start_1b0
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1b3} :catch_224

    .line 532
    :cond_1b3
    :goto_1b3
    if-eqz v1, :cond_1b8

    :try_start_1b5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_226

    .line 534
    :cond_1b8
    :goto_1b8
    throw v14

    .line 489
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v6           #fr2:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #fr2:Ljava/io/FileReader;
    .restart local v13       #strLine:Ljava/lang/String;
    :cond_1b9
    const/4 v14, 0x3

    move/from16 v0, p2

    if-ne v0, v14, :cond_1c9

    .line 490
    :try_start_1be
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v15, "SMS Draftbox fill up is done"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    goto/16 :goto_65

    .line 491
    :cond_1c9
    const/4 v14, 0x4

    move/from16 v0, p2

    if-ne v0, v14, :cond_65

    .line 492
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v15, "SMS Outbox fill up is done"

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    goto/16 :goto_65

    .line 496
    :cond_1d9
    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 497
    .local v11, smsDatas:[Ljava/lang/String;
    array-length v14, v11
    :try_end_1e0
    .catchall {:try_start_1be .. :try_end_1e0} :catchall_1a5
    .catch Ljava/io/FileNotFoundException; {:try_start_1be .. :try_end_1e0} :catch_cb
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1e0} :catch_161

    const/4 v15, 0x3

    if-ge v14, v15, :cond_1e7

    .line 498
    add-int/lit8 v9, v9, 0x1

    .line 499
    goto/16 :goto_61

    .line 502
    :cond_1e7
    const/4 v14, 0x1

    :try_start_1e8
    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1ed
    .catchall {:try_start_1e8 .. :try_end_1ed} :catchall_1a5
    .catch Ljava/lang/NumberFormatException; {:try_start_1e8 .. :try_end_1ed} :catch_24b
    .catch Ljava/io/FileNotFoundException; {:try_start_1e8 .. :try_end_1ed} :catch_cb
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1ed} :catch_161

    move-result v12

    .line 507
    :goto_1ee
    move/from16 v0, p2

    if-ne v12, v0, :cond_61

    .line 510
    :try_start_1f2
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->insertIntoSMSDB([Ljava/lang/String;)V

    .line 511
    add-int/lit8 v10, v10, 0x1

    .line 513
    rem-int/lit8 v14, v10, 0x14

    if-nez v14, :cond_61

    const/16 v14, 0x14

    if-lt v10, v14, :cond_61

    .line 514
    const-string v14, "sms"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->insertIntoDB(Ljava/lang/String;)V
    :try_end_208
    .catchall {:try_start_1f2 .. :try_end_208} :catchall_1a5
    .catch Ljava/io/FileNotFoundException; {:try_start_1f2 .. :try_end_208} :catch_cb
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_208} :catch_161

    goto/16 :goto_61

    .line 533
    .end local v11           #smsDatas:[Ljava/lang/String;
    .end local v13           #strLine:Ljava/lang/String;
    :catch_20a
    move-exception v14

    move-object v6, v7

    .end local v7           #fr2:Ljava/io/FileReader;
    .restart local v6       #fr2:Ljava/io/FileReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v1, v2

    .line 535
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_77

    .line 525
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v6           #fr2:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #fr2:Ljava/io/FileReader;
    :catch_210
    move-exception v14

    goto/16 :goto_6a

    .line 529
    :catch_213
    move-exception v14

    goto/16 :goto_6f

    .line 525
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #fr2:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #fnfe:Ljava/io/FileNotFoundException;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v6       #fr2:Ljava/io/FileReader;
    :catch_216
    move-exception v14

    goto/16 :goto_11a

    .line 529
    :catch_219
    move-exception v14

    goto/16 :goto_11f

    .line 525
    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v8       #ioe:Ljava/io/IOException;
    :catch_21c
    move-exception v14

    goto/16 :goto_186

    .line 529
    :catch_21f
    move-exception v14

    goto/16 :goto_18b

    .line 525
    .end local v8           #ioe:Ljava/io/IOException;
    :catch_222
    move-exception v15

    goto :goto_1ae

    .line 529
    :catch_224
    move-exception v15

    goto :goto_1b3

    .line 533
    :catch_226
    move-exception v15

    goto :goto_1b8

    .line 523
    :catchall_228
    move-exception v14

    goto :goto_1a9

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_22a
    move-exception v14

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_1a9

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_22e
    move-exception v14

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_1a9

    .line 520
    :catch_233
    move-exception v8

    goto/16 :goto_165

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_236
    move-exception v8

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_165

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_23a
    move-exception v8

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_165

    .line 517
    :catch_23f
    move-exception v3

    goto/16 :goto_cf

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_242
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_cf

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_246
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_cf

    .line 503
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v6           #fr2:Ljava/io/FileReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #fr2:Ljava/io/FileReader;
    .restart local v11       #smsDatas:[Ljava/lang/String;
    .restart local v13       #strLine:Ljava/lang/String;
    :catch_24b
    move-exception v14

    goto :goto_1ee
.end method

.method private insertIntoCalllogDB([Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1428
    const-string v0, "type"

    .line 1429
    const-string v0, "number"

    .line 1430
    const-string v0, "date"

    .line 1431
    const-string v0, "duration"

    .line 1432
    const-string v0, "name"

    .line 1433
    const-string v0, "numbertype"

    .line 1434
    const-string v0, "numberlabel"

    .line 1436
    aget-object v0, p1, v6

    .line 1437
    aget-object v1, p1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1439
    invoke-static {}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$4100()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1440
    const-string v3, "number"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1441
    const-string v0, "type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1442
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1443
    const-string v0, "duration"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1444
    const-string v0, "name"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1445
    const-string v0, "numbertype"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1446
    const-string v0, "numberlabel"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1447
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1448
    iget v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    .line 1449
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    iget v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->publishProgress([Ljava/lang/Object;)V

    .line 1450
    return-void
.end method

.method private insertIntoContactDB([Ljava/lang/String;I)V
    .registers 43
    .parameter
    .parameter

    .prologue
    .line 934
    const/4 v3, 0x0

    .line 935
    const/4 v4, 0x0

    .line 937
    const/4 v5, 0x0

    aget-object v5, p1, v5

    .line 938
    const/4 v6, 0x1

    aget-object v6, p1, v6

    .line 940
    const/4 v7, 0x2

    aget-object v7, p1, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->makeImageFilePathforContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 942
    const/4 v8, 0x3

    aget-object v8, p1, v8

    .line 943
    const/4 v9, 0x4

    aget-object v9, p1, v9

    .line 944
    const/4 v10, 0x5

    aget-object v10, p1, v10

    .line 945
    const/4 v11, 0x6

    aget-object v11, p1, v11

    .line 946
    const/4 v12, 0x7

    aget-object v12, p1, v12

    .line 948
    const/16 v13, 0x8

    aget-object v13, p1, v13

    .line 949
    const/16 v14, 0x9

    aget-object v14, p1, v14

    .line 950
    const/16 v15, 0xa

    aget-object v15, p1, v15

    .line 951
    const/16 v16, 0xb

    aget-object v16, p1, v16

    .line 953
    const/16 v17, 0xc

    aget-object v17, p1, v17

    .line 955
    const/16 v18, 0xd

    aget-object v18, p1, v18

    .line 957
    const/16 v19, 0xe

    aget-object v19, p1, v19

    .line 959
    const/16 v20, 0xf

    aget-object v20, p1, v20

    .line 960
    const/16 v21, 0x10

    aget-object v21, p1, v21

    .line 961
    const/16 v22, 0x11

    aget-object v22, p1, v22

    .line 962
    const/16 v23, 0x12

    aget-object v23, p1, v23

    .line 963
    const/16 v24, 0x13

    aget-object v24, p1, v24

    .line 964
    const/16 v25, 0x14

    aget-object v25, p1, v25

    .line 965
    const/16 v26, 0x15

    aget-object v26, p1, v26

    .line 967
    const/16 v27, 0x16

    aget-object v27, p1, v27

    .line 968
    const/16 v28, 0x17

    aget-object v28, p1, v28

    .line 970
    const/16 v29, 0x18

    aget-object v29, p1, v29

    .line 972
    const/16 v30, 0x19

    aget-object v30, p1, v30

    .line 974
    const/16 v31, 0x1a

    aget-object v31, p1, v31

    .line 976
    const/16 v32, 0x1b

    aget-object v32, p1, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->makeFormedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 977
    const/16 v33, 0x1c

    aget-object v33, p1, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->makeFormedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v34, v0

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static/range {v34 .. v34}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v35, v0

    sget-object v36, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v36 .. v36}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {v35 .. v36}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 983
    const-string v35, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_979

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v35, v0

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {v35 .. v35}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v35

    const-string v36, "custom_ringtone"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "content://media/internal/audio/media/"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 989
    :goto_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v19, v0

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v35, v0

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {v35 .. v35}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v19, v0

    sget-object v35, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v35 .. v35}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v19, v0

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {v19 .. v19}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    const-string v35, "raw_contact_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v19, v0

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {v19 .. v19}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    const-string v35, "mimetype"

    const-string v36, "vnd.android.cursor.item/name"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v19, v0

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {v19 .. v19}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    const-string v35, "data2"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 996
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v5}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v19, "data3"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 997
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v6}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    const-string v5, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_216

    .line 1002
    :try_start_178
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_182
    .catchall {:try_start_178 .. :try_end_182} :catchall_9a0
    .catch Ljava/io/FileNotFoundException; {:try_start_178 .. :try_end_182} :catch_990

    .line 1003
    :try_start_182
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1005
    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1006
    const/16 v6, 0x60

    const/16 v7, 0x60

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v3, v6, v7, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1007
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_19d
    .catchall {:try_start_182 .. :try_end_19d} :catchall_9b1
    .catch Ljava/io/FileNotFoundException; {:try_start_182 .. :try_end_19d} :catch_9b3

    .line 1008
    :try_start_19d
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {v6, v4, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1009
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1a7
    .catchall {:try_start_19d .. :try_end_1a7} :catchall_9b1
    .catch Ljava/io/FileNotFoundException; {:try_start_19d .. :try_end_1a7} :catch_9b7

    .line 1012
    if-eqz v5, :cond_1ac

    .line 1014
    :try_start_1a9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1ac} :catch_9a9

    .line 1021
    :cond_1ac
    :goto_1ac
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4, v5}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data15"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1024
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "is_super_primary"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v5}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    if-eqz v3, :cond_216

    .line 1029
    :try_start_213
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_216} :catch_9ae

    .line 1036
    :cond_216
    :goto_216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "is_primary"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1049
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    invoke-virtual {v3, v4, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    invoke-virtual {v3, v4, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1073
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    invoke-virtual {v3, v4, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1074
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1089
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1095
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    invoke-virtual {v3, v4, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1098
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data5"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_669

    .line 1119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    :cond_669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data4"

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data5"

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data6"

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data7"

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data8"

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data9"

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data10"

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/note"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/nickname"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/website"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data4"

    move-object/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    const-string v3, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8e6

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    move-object/from16 v0, v32

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_8e6
    const-string v3, ""

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_953

    .line 1183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    move/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data1"

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    :cond_953
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    .line 1192
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->publishProgress([Ljava/lang/Object;)V

    .line 1193
    return-void

    .line 987
    :cond_979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    move-object/from16 v19, v0

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static/range {v19 .. v19}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-static {}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3900()Landroid/content/ContentValues;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_d9

    .line 1010
    :catch_990
    move-exception v5

    move-object/from16 v39, v4

    move-object v4, v3

    move-object/from16 v3, v39

    .line 1012
    :goto_996
    if-eqz v4, :cond_1ac

    .line 1014
    :try_start_998
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_99b
    .catch Ljava/io/IOException; {:try_start_998 .. :try_end_99b} :catch_99d

    goto/16 :goto_1ac

    .line 1015
    :catch_99d
    move-exception v4

    goto/16 :goto_1ac

    .line 1012
    :catchall_9a0
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    :goto_9a3
    if-eqz v5, :cond_9a8

    .line 1014
    :try_start_9a5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9a8
    .catch Ljava/io/IOException; {:try_start_9a5 .. :try_end_9a8} :catch_9ac

    .line 1016
    :cond_9a8
    :goto_9a8
    throw v3

    .line 1015
    :catch_9a9
    move-exception v4

    goto/16 :goto_1ac

    :catch_9ac
    move-exception v4

    goto :goto_9a8

    .line 1031
    :catch_9ae
    move-exception v3

    goto/16 :goto_216

    .line 1012
    :catchall_9b1
    move-exception v3

    goto :goto_9a3

    .line 1010
    :catch_9b3
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_996

    :catch_9b7
    move-exception v4

    move-object v4, v5

    goto :goto_996
.end method

.method private insertIntoDB(Ljava/lang/String;)V
    .registers 9
    .parameter "authority"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 585
    :try_start_3
    const-string v1, "DataCopyNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 587
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_43} :catch_44
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_43} :catch_5f

    .line 593
    :goto_43
    return-void

    .line 588
    :catch_44
    move-exception v0

    .line 589
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DataCopyNew"

    const-string v2, "%s: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 590
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_5f
    move-exception v0

    .line 591
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v1, "DataCopyNew"

    const-string v2, "%s: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private insertIntoSMSDB([Ljava/lang/String;)V
    .registers 15
    .parameter "smsDatas"

    .prologue
    .line 541
    const/4 v2, 0x0

    .line 542
    .local v2, callogType:I
    const/4 v8, 0x0

    aget-object v6, p1, v8

    .line 544
    .local v6, number:Ljava/lang/String;
    const/4 v8, 0x1

    :try_start_5
    aget-object v8, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_a} :catch_e6

    move-result v2

    .line 548
    :goto_b
    const/4 v8, 0x2

    aget-object v5, p1, v8

    .line 549
    .local v5, message:Ljava/lang/String;
    packed-switch v2, :pswitch_data_ea

    .line 563
    iget-object v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    iget-object v9, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_INBOX:Landroid/net/Uri;
    invoke-static {v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2500(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v8, v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    .line 567
    :goto_20
    const-string v1, "body"

    .line 568
    .local v1, body:Ljava/lang/String;
    const-string v0, "address"

    .line 569
    .local v0, address:Ljava/lang/String;
    const-string v3, "date"

    .line 570
    .local v3, date:Ljava/lang/String;
    const-string v7, "read"

    .line 571
    .local v7, read:Ljava/lang/String;
    const-string v4, "deletable"

    .line 573
    .local v4, deletable:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v8}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "read"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 574
    iget-object v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v8}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "date"

    new-instance v10, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 575
    iget-object v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v8}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "address"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 576
    iget-object v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v8}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "body"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 577
    iget-object v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v8}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "deletable"

    const-string v10, "1"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 578
    iget-object v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mOperationList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2300(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    .line 580
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->publishProgress([Ljava/lang/Object;)V

    .line 581
    return-void

    .line 551
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #body:Ljava/lang/String;
    .end local v3           #date:Ljava/lang/String;
    .end local v4           #deletable:Ljava/lang/String;
    .end local v7           #read:Ljava/lang/String;
    :pswitch_a2
    iget-object v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    iget-object v9, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_INBOX:Landroid/net/Uri;
    invoke-static {v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2500(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v8, v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_20

    .line 554
    :pswitch_b3
    iget-object v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    iget-object v9, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_SENTBOX:Landroid/net/Uri;
    invoke-static {v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2600(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v8, v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_20

    .line 557
    :pswitch_c4
    iget-object v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    iget-object v9, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_DRAFTBOX:Landroid/net/Uri;
    invoke-static {v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2700(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v8, v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_20

    .line 560
    :pswitch_d5
    iget-object v8, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    iget-object v9, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_SMS_OUTBOX:Landroid/net/Uri;
    invoke-static {v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {v8, v9}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2402(Lcom/android/samsungtest/DataCopy/DataCopy;Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_20

    .line 545
    .end local v5           #message:Ljava/lang/String;
    :catch_e6
    move-exception v8

    goto/16 :goto_b

    .line 549
    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_b3
        :pswitch_c4
        :pswitch_d5
    .end packed-switch
.end method

.method private makeAppParts(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "sMessage"
    .parameter "sImageFileName"

    .prologue
    .line 695
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->appPartDirectory:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3000(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/PART_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mImageTime:J
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3200(Lcom/android/samsungtest/DataCopy/DataCopy;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 696
    return-void
.end method

.method private makeFormedDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "Date"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 1491
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_15

    .line 1492
    :cond_12
    const-string v0, ""

    .line 1495
    :goto_14
    return-object v0

    .line 1494
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, formedDate:Ljava/lang/String;
    goto :goto_14
.end method

.method private makeImageFilePathforContact(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 1453
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1454
    const-string v0, ""

    .line 1472
    :goto_a
    return-object v0

    .line 1457
    :cond_b
    const-string v0, ""

    .line 1459
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt/sdcard/external_sd/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->LOADDATA_PATH:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$4200(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1462
    :try_start_31
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/sdcard/external_sd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->LOADDATA_PATH:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$4200(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_31 .. :try_end_5f} :catchall_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_5f} :catch_61

    move-result-object v0

    goto :goto_a

    .line 1464
    :catch_61
    move-exception v1

    .line 1465
    :try_start_62
    const-string v1, "DataCopyNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image File number is wrong : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v1, "Image File number is wrong."

    #calls: Lcom/android/samsungtest/DataCopy/DataCopy;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$400(Lcom/android/samsungtest/DataCopy/DataCopy;Ljava/lang/String;)V

    .line 1467
    const-string v0, ""
    :try_end_8d
    .catchall {:try_start_62 .. :try_end_8d} :catchall_8f

    goto/16 :goto_a

    .line 1468
    :catchall_8f
    move-exception v0

    throw v0
.end method

.method private makeImageFilePathforMms(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1477
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1478
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1479
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object p1, v0, v1

    .line 1483
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/external_sd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->LOADDATA_PATH:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$4200(Lcom/android/samsungtest/DataCopy/DataCopy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeMMSDBData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 25
    .parameter "sFromNumber"
    .parameter "sToNumber"
    .parameter "nType"
    .parameter "sImageFileName"
    .parameter "sMessage"

    .prologue
    .line 700
    const-wide/16 v14, -0x1

    .line 701
    .local v14, pdu_thread_id:J
    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_11

    const/4 v2, 0x3

    move/from16 v0, p3

    if-eq v0, v2, :cond_11

    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_13

    .line 702
    :cond_11
    const-string p1, "insert-address-token"

    .line 707
    :cond_13
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1b8

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    invoke-virtual {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v14

    .line 712
    :cond_26
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 713
    .local v17, tr_id:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_4b

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_56

    .line 714
    :cond_4b
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    .line 716
    :cond_56
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 717
    .local v18, valueMMSLog:Landroid/content/ContentValues;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 718
    const-string v2, "thread_id"

    long-to-int v4, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 719
    const-string v2, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_80

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_a2

    .line 721
    :cond_80
    const-string v2, "m_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "20091201/18/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@165.213.73.234"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_a2
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_b4

    .line 723
    const-string v2, "sub_cs"

    const/16 v4, 0x6a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    :cond_b4
    const-string v2, "ct_t"

    const-string v4, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_c7

    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_d5

    .line 726
    :cond_c7
    const-string v2, "exp"

    const v4, 0x93a80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    :cond_d5
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_e4

    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_e4

    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_ed

    .line 728
    :cond_e4
    const-string v2, "m_cls"

    const-string v4, "personal"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_ed
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1d7

    .line 730
    const-string v2, "m_type"

    const/16 v4, 0x84

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    :cond_ff
    :goto_ff
    const-string v2, "v"

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 735
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_11e

    .line 736
    const-string v2, "m_size"

    const/16 v4, 0x11e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    :cond_11e
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_12d

    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_12d

    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_13a

    .line 738
    :cond_12d
    const-string v2, "pri"

    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 739
    :cond_13a
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_149

    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_149

    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_156

    .line 740
    :cond_149
    const-string v2, "rr"

    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    :cond_156
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_168

    .line 742
    const-string v2, "resp_st"

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    :cond_168
    const-string v2, "tr_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_180

    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_180

    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_18d

    .line 745
    :cond_180
    const-string v2, "d_rpt"

    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    :cond_18d
    const-string v2, "deletable"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    const/4 v13, 0x0

    .line 750
    .local v13, pduUri:Landroid/net/Uri;
    packed-switch p3, :pswitch_data_5a4

    .line 764
    const-string v2, "DataCopyNew"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid MMS type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_1b7
    :goto_1b7
    return-void

    .line 709
    .end local v13           #pduUri:Landroid/net/Uri;
    .end local v17           #tr_id:Ljava/lang/String;
    .end local v18           #valueMMSLog:Landroid/content/ContentValues;
    :cond_1b8
    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_1c7

    const/4 v2, 0x3

    move/from16 v0, p3

    if-eq v0, v2, :cond_1c7

    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_26

    .line 710
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    invoke-virtual {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v14

    goto/16 :goto_26

    .line 731
    .restart local v17       #tr_id:Ljava/lang/String;
    .restart local v18       #valueMMSLog:Landroid/content/ContentValues;
    :cond_1d7
    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_1e6

    const/4 v2, 0x3

    move/from16 v0, p3

    if-eq v0, v2, :cond_1e6

    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_ff

    .line 732
    :cond_1e6
    const-string v2, "m_type"

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_ff

    .line 752
    .restart local v13       #pduUri:Landroid/net/Uri;
    :pswitch_1f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_INBOX:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3300(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 767
    :goto_20b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->messageId:I
    invoke-static {v2, v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3702(Lcom/android/samsungtest/DataCopy/DataCopy;I)I

    .line 770
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 771
    const-string v2, "msg_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->messageId:I
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3700(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 772
    const-string v2, "address"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v2, "type"

    const/16 v4, 0x89

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string v2, "charset"

    const/16 v4, 0x6a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "addr"

    invoke-static {v13, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 776
    const-string v2, "address"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v2, "type"

    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "addr"

    invoke-static {v13, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 781
    const-string v2, "/"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 782
    .local v11, fileName:Ljava/lang/String;
    const-string v2, "."

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 783
    .local v10, fileExt:Ljava/lang/String;
    const/4 v12, 0x0

    .line 784
    .local v12, mimeType:Ljava/lang/String;
    const-string v2, "png"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53d

    .line 785
    const-string v12, "image/png"

    .line 796
    :goto_2ba
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 797
    const-string v2, "mid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->messageId:I
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3700(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    const-string v2, "seq"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    const-string v2, "ct"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_583

    .line 801
    const-string v2, "name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_2ef
    :goto_2ef
    const-string v2, "cid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v11, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v2, "cl"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "part"

    invoke-static {v13, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 807
    .local v3, result:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 808
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 809
    const/16 v2, 0xc

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 810
    .local v16, sData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    const-string v4, "_"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    #setter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mImageTime:J
    invoke-static {v2, v4, v5}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3202(Lcom/android/samsungtest/DataCopy/DataCopy;J)J

    .line 811
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 813
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 814
    const-string v2, "mid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->messageId:I
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3700(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 815
    const-string v2, "seq"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 816
    const-string v2, "ct"

    const-string v4, "application/smil"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_591

    .line 818
    const-string v2, "name"

    const-string v4, "smil.xml"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_3a5
    :goto_3a5
    const-string v2, "cid"

    const-string v4, "<smil>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v2, "cl"

    const-string v4, "smil.xml"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/><region id=\"Image\" left=\"0\" top=\"0\" width=\"320px\" height=\"320px\" fit=\"meet\"/></layout></head><body><par dur=\"5000ms\"><text src=\"text_0.txt\" region=\"Text\"/><img src=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" region=\"Image\"/></par></body></smil>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 826
    .local v9, dd:Ljava/lang/String;
    const-string v2, "text"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "part"

    invoke-static {v13, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 829
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 830
    const-string v2, "mid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->messageId:I
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3700(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    const-string v2, "seq"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    const-string v2, "ct"

    const-string v4, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_434

    .line 834
    const-string v2, "name"

    const-string v4, "text_0.txt"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_434
    const-string v2, "chset"

    const/16 v4, 0x6a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    const-string v2, "seq"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    const-string v2, "cid"

    const-string v4, "<text_0>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v2, "cl"

    const-string v4, "text_0.txt"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v2, "text"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "part"

    invoke-static {v13, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 843
    const/4 v2, 0x2

    move/from16 v0, p3

    if-eq v0, v2, :cond_1b7

    .line 844
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 845
    const-string v2, "proto_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    const-string v2, "msg_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->messageId:I
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3700(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    const-string v2, "msg_type"

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    const-string v2, "err_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    const-string v2, "err_code"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    const-string v2, "retry_index"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const-string v2, "due_time"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pending_msgs"

    invoke-static {v13, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1b7

    .line 755
    .end local v3           #result:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #dd:Ljava/lang/String;
    .end local v10           #fileExt:Ljava/lang/String;
    .end local v11           #fileName:Ljava/lang/String;
    .end local v12           #mimeType:Ljava/lang/String;
    .end local v16           #sData:Ljava/lang/String;
    :pswitch_4f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_SENTBOX:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3400(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 756
    goto/16 :goto_20b

    .line 758
    :pswitch_50d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_DRAFTBOX:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3500(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 759
    goto/16 :goto_20b

    .line 761
    :pswitch_525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2900(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->CONTENT_URI_MMS_OUTBOX:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$3600(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 762
    goto/16 :goto_20b

    .line 786
    .restart local v10       #fileExt:Ljava/lang/String;
    .restart local v11       #fileName:Ljava/lang/String;
    .restart local v12       #mimeType:Ljava/lang/String;
    :cond_53d
    const-string v2, "jpg"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54d

    const-string v2, "jpeg"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_551

    .line 787
    :cond_54d
    const-string v12, "image/jpeg"

    goto/16 :goto_2ba

    .line 788
    :cond_551
    const-string v2, "bmp"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55d

    .line 789
    const-string v12, "image/x-ms-bmp"

    goto/16 :goto_2ba

    .line 790
    :cond_55d
    const-string v2, "gif"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_569

    .line 791
    const-string v12, "image/gif"

    goto/16 :goto_2ba

    .line 793
    :cond_569
    const-string v2, "DataCopyNew"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File extention error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b7

    .line 802
    :cond_583
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_2ef

    .line 803
    const-string v2, "fn"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2ef

    .line 819
    .restart local v3       #result:Landroid/net/Uri;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v16       #sData:Ljava/lang/String;
    :cond_591
    const/4 v2, 0x3

    move/from16 v0, p3

    if-eq v0, v2, :cond_59b

    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_3a5

    .line 820
    :cond_59b
    const-string v2, "fn"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_3a5

    .line 750
    :pswitch_data_5a4
    .packed-switch 0x1
        :pswitch_1f5
        :pswitch_4f5
        :pswitch_50d
        :pswitch_525
    .end packed-switch
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 8
    .parameter "args"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 375
    const-string v0, "DataCopyNew"

    const-string v1, "FillUpTask, doInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mIsMax:Z
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$500(Lcom/android/samsungtest/DataCopy/DataCopy;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 377
    invoke-direct {p0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpSMS()V

    .line 378
    invoke-direct {p0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpMMS()V

    .line 379
    invoke-direct {p0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpContact()V

    .line 381
    invoke-direct {p0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpCallLog()V

    .line 401
    :goto_1f
    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_21
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSInboxMessage:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$900(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpSMS(II)V

    .line 384
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSOutboxMessage:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1000(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpSMS(II)V

    .line 385
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSSentMessage:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1100(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpSMS(II)V

    .line 386
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSDraftMessage:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1200(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpSMS(II)V

    .line 388
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSInboxMessage:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1300(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpMMS(II)V

    .line 389
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSOutboxMessage:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1400(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpMMS(II)V

    .line 390
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSSentMessage:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1500(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpMMS(II)V

    .line 391
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSDraftMessage:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1600(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpMMS(II)V

    .line 393
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfContacts:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1700(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpContact(I)V

    .line 397
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfIncomingCall:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1800(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpCallLog(II)V

    .line 398
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfOutgoingCall:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1900(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpCallLog(II)V

    .line 399
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMissedCall:I
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2000(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->fillUpCallLog(II)V

    goto :goto_1f
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 328
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 436
    const-string v0, "DataCopyNew"

    const-string v1, "FillUpTask, onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 438
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 439
    :cond_19
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$700(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonMaxOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$200(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 441
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 328
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 347
    const-string v0, "DataCopyNew"

    const-string v1, "FillUpTask, onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 349
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 350
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Creating"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mIsMax:Z
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$500(Lcom/android/samsungtest/DataCopy/DataCopy;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 352
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/16 v1, 0x157b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 367
    :goto_39
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 368
    iput v3, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->mCurrent:I

    .line 369
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$700(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mButtonMaxOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$200(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 371
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 372
    return-void

    .line 360
    :cond_5a
    iget-object v0, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSInboxMessage:I
    invoke-static {v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$900(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v1

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSOutboxMessage:I
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1000(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSSentMessage:I
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1100(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfSMSDraftMessage:I
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1200(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSInboxMessage:I
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1300(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSOutboxMessage:I
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1400(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSSentMessage:I
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1500(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMMSDraftMessage:I
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1600(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfContacts:I
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1700(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfIncomingCall:I
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1800(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfOutgoingCall:I
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$1900(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mNumberOfMissedCall:I
    invoke-static {v2}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$2000(Lcom/android/samsungtest/DataCopy/DataCopy;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_39
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 7
    .parameter "progress"

    .prologue
    const/4 v4, 0x0

    .line 406
    const-string v1, "DataCopyNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressUpdate arg1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/app/ProgressDialog;

    move-result-object v1

    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 409
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_66

    .line 428
    :pswitch_34
    const-string v0, " "

    .line 431
    .local v0, msg:Ljava/lang/String;
    :goto_36
    iget-object v1, p0, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->this$0:Lcom/android/samsungtest/DataCopy/DataCopy;

    #getter for: Lcom/android/samsungtest/DataCopy/DataCopy;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/samsungtest/DataCopy/DataCopy;->access$800(Lcom/android/samsungtest/DataCopy/DataCopy;)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 432
    return-void

    .line 411
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_59
    const-string v0, "SMS"

    .line 412
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_36

    .line 414
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_5c
    const-string v0, "MMS"

    .line 415
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_36

    .line 417
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_5f
    const-string v0, "Contact"

    .line 418
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_36

    .line 425
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_62
    const-string v0, "Call log"

    .line 426
    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_36

    .line 409
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_34
        :pswitch_62
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 328
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/samsungtest/DataCopy/DataCopy$FillUpTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
