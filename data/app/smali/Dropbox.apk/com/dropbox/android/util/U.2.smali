.class public final Lcom/dropbox/android/util/U;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field a:Lcom/dropbox/android/provider/g;

.field b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/provider/g;)V
    .registers 2
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/dropbox/android/util/U;->a:Lcom/dropbox/android/provider/g;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dropbox/android/util/U;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_11

    .line 18
    iget-object v0, p0, Lcom/dropbox/android/util/U;->a:Lcom/dropbox/android/provider/g;

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/util/U;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    iget-object v0, p0, Lcom/dropbox/android/util/U;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 21
    :cond_11
    iget-object v0, p0, Lcom/dropbox/android/util/U;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/android/util/U;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_9

    .line 26
    iget-object v0, p0, Lcom/dropbox/android/util/U;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 28
    :cond_9
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/util/U;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 32
    iget-object v0, p0, Lcom/dropbox/android/util/U;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/util/U;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    :cond_c
    return-void
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dropbox/android/util/U;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
