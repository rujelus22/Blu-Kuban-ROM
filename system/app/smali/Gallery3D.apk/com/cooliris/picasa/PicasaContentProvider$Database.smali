.class public final Lcom/cooliris/picasa/PicasaContentProvider$Database;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PicasaContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/picasa/PicasaContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Database"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "name"

    .prologue
    .line 92
    const/4 v0, 0x0

    const/16 v1, 0x53

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 93
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 97
    sget-object v0, Lcom/cooliris/picasa/PhotoEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/cooliris/picasa/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    sget-object v0, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/cooliris/picasa/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    sget-object v0, Lcom/cooliris/picasa/UserEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/cooliris/picasa/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 106
    sget-object v0, Lcom/cooliris/picasa/PhotoEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/cooliris/picasa/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    sget-object v0, Lcom/cooliris/picasa/AlbumEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/cooliris/picasa/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 108
    sget-object v0, Lcom/cooliris/picasa/UserEntry;->SCHEMA:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/cooliris/picasa/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/cooliris/picasa/PicasaContentProvider$Database;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    return-void
.end method
