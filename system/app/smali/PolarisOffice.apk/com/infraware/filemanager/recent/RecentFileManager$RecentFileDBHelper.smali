.class public Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RecentFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/recent/RecentFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentFileDBHelper"
.end annotation


# static fields
.field public static final RECENT_FILE_DB_FIELDIDX_DATE_ACCESSED:I = 0x5

.field public static final RECENT_FILE_DB_FIELDIDX_DATE_MODIFIED:I = 0x4

.field public static final RECENT_FILE_DB_FIELDIDX_DRM_TYPE:I = 0x6

.field public static final RECENT_FILE_DB_FIELDIDX_NAME:I = 0x1

.field public static final RECENT_FILE_DB_FIELDIDX_PATH:I = 0x2

.field public static final RECENT_FILE_DB_FIELDIDX_PKEY:I = 0x0

.field public static final RECENT_FILE_DB_FIELDIDX_SIZE:I = 0x3

.field public static final RECENT_FILE_DB_FIELD_DATE_ACCESSED:Ljava/lang/String; = "last_accessed"

.field public static final RECENT_FILE_DB_FIELD_DATE_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final RECENT_FILE_DB_FIELD_DRM_TYPE:Ljava/lang/String; = "drm_type"

.field public static final RECENT_FILE_DB_FIELD_NAME:Ljava/lang/String; = "filename"

.field public static final RECENT_FILE_DB_FIELD_PATH:Ljava/lang/String; = "path"

.field public static final RECENT_FILE_DB_FIELD_PKEY:Ljava/lang/String; = "_id"

.field public static final RECENT_FILE_DB_FIELD_SIZE:Ljava/lang/String; = "size"

.field public static final RECENT_FILE_DB_NAME:Ljava/lang/String; = "DocMasterRecentFiles.db"

.field public static final RECENT_FILE_DB_VERSION:I = 0x1

.field public static final RECENT_FILE_TABLE_NAME:Ljava/lang/String; = "RecentFiles"


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/recent/RecentFileManager;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/recent/RecentFileManager;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "aCtx"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->this$0:Lcom/infraware/filemanager/recent/RecentFileManager;

    .line 40
    const-string v0, "DocMasterRecentFiles.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 44
    .line 45
    const-string v0, "CREATE TABLE RecentFiles(_id INTEGER PRIMARY KEY AUTOINCREMENT,filename TEXT,path TEXT,size LONG,last_modified LONG,last_accessed LONG,drm_type INTEGER);"

    .line 44
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 56
    const-string v0, "DROP TABLE IF EXISTS DocMasterRecentFiles.db"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/infraware/filemanager/recent/RecentFileManager$RecentFileDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    return-void
.end method
