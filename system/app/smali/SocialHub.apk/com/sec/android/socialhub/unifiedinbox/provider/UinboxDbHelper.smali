.class public Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UinboxDbHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "UinboxDbHelper"

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "name"

    .prologue
    .line 25
    const/4 v0, 0x0

    const/16 v1, 0x15

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    return-void
.end method

.method static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 92
    const-string v0, "create table if not exists accounts (_id integer primary key autoincrement, account_id integer, real_email_id integer, app text, account text, email text, new integer, unread integer default 0, presence integer, user_name text, last_id integer, _order integer, support_msg integer, app_type integer, display_name text, is_eas integer default -1, CONSTRAINT id_uk unique(account_id,app) );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v0, "create table if not exists messages (_id INTEGER PRIMARY KEY AUTOINCREMENT,date INTEGER,type INTEGER,app_type INTEGER NOT NULL,number TEXT,name TEXT,reversed_name TEXT,email_address TEXT,_id_origin TEXT,m_content TEXT,m_subject TEXT,new INTEGER,count INTEGER,error INTEGER,thread_id INTEGER,locked INTEGER default -1,href TEXT,account_id INTEGER,sp_type INTEGER default -1,sns_pkey TEXT,sns_receiver_count TEXT,contactid TEXT,hasAttachment INTEGER,flag_view SMALL INTEGER default 1,flagFavorite SMALL INTEGER default 0, ext1 TEXT,ext2 TEXT,ext3 TEXT,flagStatus INTEGER,importance INTEGER,smimeFlags INTEGER,umCallerId TEXT,messageType INTEGER,flags INTEGER,lastVerb INTEGER,presence INTEGER,status INTEGER default 0,remove_req_cnt INTEGER default 0,remove_req_time INTEGER, name_original TEXT, CONSTRAINT id_uk unique(_id_origin,thread_id,app_type) );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v0, "create table if not exists temp_email_sync (_id INTEGER PRIMARY KEY, flagRead INTEGER, flagFavorite INTEGER, flag_op SMALL INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string v0, "create table if not exists temp_messaging_sync (_id INTEGER PRIMARY KEY, date INTEGER, unread_count INTEGER, flag_op SMALL INTEGER, message_count INTEGER, error INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v0, "create index messages_index_1 on messages(_id_origin)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-static {p0}, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;->createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;->TAG:Ljava/lang/String;

    const-string v1, "createTable()"

    const-string v2, "db is created"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method static createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 106
    invoke-static {}, Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;->getRemoveAccountTrigger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method static dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 126
    const-string v0, "DROP TABLE IF EXISTS accounts"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const-string v0, "DROP TABLE IF EXISTS messages"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v0, "DROP TABLE IF EXISTS temp_email_sync"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string v0, "DROP TABLE IF EXISTS temp_messaging_sync"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 36
    invoke-static {p1}, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 42
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;->TAG:Ljava/lang/String;

    const-string v1, "onUpgrade()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , which will desotry all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    return-void
.end method
