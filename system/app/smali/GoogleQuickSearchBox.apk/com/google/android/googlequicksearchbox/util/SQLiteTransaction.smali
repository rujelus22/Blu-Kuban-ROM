.class public abstract Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;
.super Ljava/lang/Object;
.source "SQLiteTransaction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract performTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
.end method

.method public run(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 41
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;->performTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 42
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 45
    :cond_c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 47
    return-void

    .line 45
    :catchall_10
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
