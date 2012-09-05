.class Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VideoDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/db/VideoDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/db/VideoDB;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/db/VideoDB;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;->this$0:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 95
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 96
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;->this$0:Lcom/sec/android/app/videoplayer/db/VideoDB;

    #calls: Lcom/sec/android/app/videoplayer/db/VideoDB;->updateDatabases(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->access$000(Lcom/sec/android/app/videoplayer/db/VideoDB;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/VideoDB$DatabaseHelper;->this$0:Lcom/sec/android/app/videoplayer/db/VideoDB;

    #calls: Lcom/sec/android/app/videoplayer/db/VideoDB;->updateDatabases(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->access$000(Lcom/sec/android/app/videoplayer/db/VideoDB;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    return-void
.end method
