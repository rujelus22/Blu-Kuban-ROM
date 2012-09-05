.class Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DSMContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/DSMContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/dsm/system/DSMContentProvider;


# direct methods
.method constructor <init>(Lcom/sec/dsm/system/DSMContentProvider;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;->this$0:Lcom/sec/dsm/system/DSMContentProvider;

    .line 29
    const-string v0, "profile.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 34
    monitor-enter p1

    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;->this$0:Lcom/sec/dsm/system/DSMContentProvider;

    #getter for: Lcom/sec/dsm/system/DSMContentProvider;->DSMProvider:Lcom/sec/dsm/system/DSMProvider;
    invoke-static {v0}, Lcom/sec/dsm/system/DSMContentProvider;->access$000(Lcom/sec/dsm/system/DSMContentProvider;)Lcom/sec/dsm/system/DSMProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/dsm/system/DSMProvider;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    monitor-exit p1

    .line 37
    return-void

    .line 36
    :catchall_c
    move-exception v0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 41
    monitor-enter p1

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;->this$0:Lcom/sec/dsm/system/DSMContentProvider;

    #getter for: Lcom/sec/dsm/system/DSMContentProvider;->DSMProvider:Lcom/sec/dsm/system/DSMProvider;
    invoke-static {v0}, Lcom/sec/dsm/system/DSMContentProvider;->access$000(Lcom/sec/dsm/system/DSMContentProvider;)Lcom/sec/dsm/system/DSMProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/dsm/system/DSMProvider;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 43
    monitor-exit p1

    .line 44
    return-void

    .line 43
    :catchall_c
    move-exception v0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method
