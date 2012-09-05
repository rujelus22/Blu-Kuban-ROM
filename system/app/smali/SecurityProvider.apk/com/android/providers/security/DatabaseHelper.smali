.class public Lcom/android/providers/security/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sSingleton:Lcom/android/providers/security/DatabaseHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/android/providers/security/DatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/security/DatabaseHelper;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/security/DatabaseHelper;->sSingleton:Lcom/android/providers/security/DatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 32
    const-string v0, "security.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 34
    iput-object p1, p0, Lcom/android/providers/security/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/security/DatabaseHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 38
    const-class v1, Lcom/android/providers/security/DatabaseHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/providers/security/DatabaseHelper;->sSingleton:Lcom/android/providers/security/DatabaseHelper;

    if-nez v0, :cond_e

    .line 39
    new-instance v0, Lcom/android/providers/security/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/security/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/security/DatabaseHelper;->sSingleton:Lcom/android/providers/security/DatabaseHelper;

    .line 41
    :cond_e
    sget-object v0, Lcom/android/providers/security/DatabaseHelper;->sSingleton:Lcom/android/providers/security/DatabaseHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 50
    sget-object v0, Lcom/android/providers/security/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Bootstrapping database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v0, "CREATE TABLE passwords (_id INTEGER PRIMARY KEY AUTOINCREMENT,password TEXT UNIQUE NOT NULL,set_date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 46
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 61
    if-eq p2, p3, :cond_1b

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error upgrading the database to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1b
    return-void
.end method
