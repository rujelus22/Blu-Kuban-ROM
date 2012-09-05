.class final Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DrmProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/drm/DrmProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpenDatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/drm/DrmProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/drm/DrmProvider;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    .line 60
    const-string v0, "drm.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 61
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/providers/drm/DrmProvider;->access$000(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 92
    invoke-static {}, Lcom/android/providers/drm/DrmProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading downloads database from version "

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

    .line 95
    iget-object v0, p0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/providers/drm/DrmProvider;->access$200(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    iget-object v0, p0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;->this$0:Lcom/android/providers/drm/DrmProvider;

    #calls: Lcom/android/providers/drm/DrmProvider;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/providers/drm/DrmProvider;->access$000(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    return-void
.end method
