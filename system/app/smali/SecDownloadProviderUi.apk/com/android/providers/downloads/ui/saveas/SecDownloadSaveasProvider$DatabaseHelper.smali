.class final Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SecDownloadSaveasProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;

    .line 168
    const-string v0, "downloadsaveas.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 169
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;

    #getter for: Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_V:Z
    invoke-static {v0}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->access$000(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 177
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;

    #getter for: Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->access$100(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDownloadSaveasProvider : onCreate : populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_13
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;

    #calls: Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->access$200(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 181
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 202
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    .line 203
    const/4 v0, 0x2

    if-ne p3, v0, :cond_7

    .line 216
    :goto_6
    return-void

    .line 208
    :cond_7
    const/4 p2, 0x2

    .line 210
    :cond_8
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;

    #getter for: Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->access$100(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecDownloadSaveasProvider : onUpgrade : Upgrading CDDownloads database from version "

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

    .line 214
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;

    #calls: Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->access$300(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 215
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;

    #calls: Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;->access$200(Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_6
.end method
