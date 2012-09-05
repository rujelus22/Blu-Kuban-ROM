.class final Lcom/sec/android/providers/downloads/SecDownloadProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SecDownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/providers/downloads/SecDownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/providers/downloads/SecDownloadProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/providers/downloads/SecDownloadProvider;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider$DatabaseHelper;->this$0:Lcom/sec/android/providers/downloads/SecDownloadProvider;

    .line 187
    const-string v0, "sisodownloads.db"

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 188
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider$DatabaseHelper;->this$0:Lcom/sec/android/providers/downloads/SecDownloadProvider;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->access$000(Lcom/sec/android/providers/downloads/SecDownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 221
    const/16 v0, 0x1f

    if-ne p2, v0, :cond_b

    .line 222
    const/16 v0, 0x64

    if-ne p3, v0, :cond_9

    .line 235
    :goto_8
    return-void

    .line 227
    :cond_9
    const/16 p2, 0x64

    .line 229
    :cond_b
    const-string v0, "SecDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecDownloadProvider : onUpgrade : Upgrading CDDownloads database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider$DatabaseHelper;->this$0:Lcom/sec/android/providers/downloads/SecDownloadProvider;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadProvider;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->access$100(Lcom/sec/android/providers/downloads/SecDownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadProvider$DatabaseHelper;->this$0:Lcom/sec/android/providers/downloads/SecDownloadProvider;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/sec/android/providers/downloads/SecDownloadProvider;->access$000(Lcom/sec/android/providers/downloads/SecDownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_8
.end method
