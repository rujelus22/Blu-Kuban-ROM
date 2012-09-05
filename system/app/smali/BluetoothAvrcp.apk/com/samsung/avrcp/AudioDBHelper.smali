.class Lcom/samsung/avrcp/AudioDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AudioDBHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 47
    const-string v0, "Audio.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 51
    const-string v0, "create table AUDIO(_id INTEGER PRIMARY KEY AUTOINCREMENT,_display_name Text,title TEXT,mediaNumber INTEGER,mediaTotal INTEGER,shuffle INTEGER,repeat INTEGER,isplaying INTEGER,duration long,position INTEGER,artist_id INTEGER,artist TEXT,album TEXT,action TEXT)"

    .line 52
    .local v0, create:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 56
    return-void
.end method
