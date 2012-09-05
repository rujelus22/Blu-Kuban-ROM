.class public Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SearchWordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/search/SearchWordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchWordDBHelper"
.end annotation


# static fields
.field public static final SEARCH_WORD_DB_ACCESS_DATE:Ljava/lang/String; = "AccessDate"

.field public static final SEARCH_WORD_DB_FIELDIDX_DATE_ACCESSED:I = 0x3

.field public static final SEARCH_WORD_DB_FIELDIDX_DATE_INSERT:I = 0x2

.field public static final SEARCH_WORD_DB_FIELDIDX_NAME:I = 0x1

.field public static final SEARCH_WORD_DB_FIELDIDX_PKEY:I = 0x0

.field public static final SEARCH_WORD_DB_FIELD_NAME:Ljava/lang/String; = "word"

.field public static final SEARCH_WORD_DB_FIELD_PKEY:Ljava/lang/String; = "_id"

.field public static final SEARCH_WORD_DB_INSERT_DATE:Ljava/lang/String; = "InsertDate"

.field public static final SEARCH_WORD_DB_NAME:Ljava/lang/String; = "PolarisViewerSearch.db"

.field public static final SEARCH_WORD_DB_VERSION:I = 0x1

.field public static final SEARCH_WORD_TABLE_NAME:Ljava/lang/String; = "SearchWord"


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/search/SearchWordManager;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/search/SearchWordManager;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "aCtx"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->this$0:Lcom/infraware/polarisoffice/search/SearchWordManager;

    .line 26
    const-string v0, "PolarisViewerSearch.db"

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
    .line 30
    .line 31
    const-string v0, "CREATE TABLE SearchWord(_id INTEGER PRIMARY KEY AUTOINCREMENT,word TEXT,InsertDate LONG,AccessDate LONG);"

    .line 30
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 39
    const-string v0, "DROP TABLE IF EXISTS PolarisViewerSearch.db"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/search/SearchWordManager$SearchWordDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    return-void
.end method
