.class final Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AndroidShadowNumbers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "dbName"

    .prologue
    .line 451
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 452
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .parameter "db"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 456
    const-string v0, "create table %s (%s text primary key, %s text, %s text, %s text)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "number_mappings"

    aput-object v2, v1, v4

    const-string v2, "destination_number"

    aput-object v2, v1, v5

    const-string v2, "destination_reversed_suffix"

    aput-object v2, v1, v6

    const-string v2, "shadow_number"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "shadow_reversed_suffix"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 460
    const-string v0, "create index %s on %s (%s)"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "idx_destination_reversed_suffix"

    aput-object v2, v1, v4

    const-string v2, "number_mappings"

    aput-object v2, v1, v5

    const-string v2, "destination_reversed_suffix"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 464
    const-string v0, "create index %s on %s (%s)"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "idx_shadow_reversed_suffix"

    aput-object v2, v1, v4

    const-string v2, "number_mappings"

    aput-object v2, v1, v5

    const-string v2, "shadow_reversed_suffix"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 472
    const-string v0, "drop index %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "idx_destination_reversed_suffix"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 473
    const-string v0, "drop index %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "idx_shadow_reversed_suffix"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 474
    const-string v0, "drop table %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "number_mappings"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 476
    return-void
.end method
