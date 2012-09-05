.class Lcom/sec/android/provider/badge/BadgeProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BadgeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/badge/BadgeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 144
    const-string v0, "badge.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 145
    iput-object p1, p0, Lcom/sec/android/provider/badge/BadgeProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 151
    invoke-static {}, Lcom/sec/android/provider/badge/BadgeProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "creating new badge database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "CREATE TABLE apps (_id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT NOT NULL,class TEXT NOT NULL UNIQUE,badgecount INTEGER NOT NULL DEFAULT 0,icon BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 161
    move v0, p2

    .line 162
    .local v0, version:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    .line 163
    const-string v1, "DROP TABLE IF EXISTS apps"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/sec/android/provider/badge/BadgeProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 166
    :cond_c
    return-void
.end method
