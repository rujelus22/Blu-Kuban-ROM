.class public LaS/n;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 152
    const-string v0, "userfeedback.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 153
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 157
    const-string v0, "CREATE TABLE IF NOT EXISTS feedback_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, time INTEGER, cDocid TEXT, experiment TEXT, questionId TEXT, answerId TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    const-string v0, "CREATE TABLE IF NOT EXISTS listing_interaction_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, phoneTime INTEGER, directionsTime INTEGER, cDocid TEXT, phoneNumber TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    if-eq p2, p3, :cond_f

    .line 185
    const-string v0, "DROP TABLE IF EXISTS phonecall_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    const-string v0, "DROP TABLE IF EXISTS listing_interaction_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p1}, LaS/n;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 189
    :cond_f
    return-void
.end method
