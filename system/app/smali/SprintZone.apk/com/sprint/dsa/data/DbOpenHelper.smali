.class public Lcom/sprint/dsa/data/DbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbOpenHelper.java"


# static fields
.field public static final DB_CREATE_ALERT:Ljava/lang/String; = null

.field public static final DB_CREATE_CATEGORIES:Ljava/lang/String; = null

.field public static final DB_CREATE_DIAGNOSTICS:Ljava/lang/String; = null

.field public static final DB_CREATE_DIAGNOSTIC_GROUPS:Ljava/lang/String; = null

.field public static final DB_CREATE_FEATURES:Ljava/lang/String; = null

.field public static final DB_CREATE_INFO:Ljava/lang/String; = null

.field public static final DB_CREATE_PACKS:Ljava/lang/String; = null

.field public static final DB_CREATE_PACK_STRINGS:Ljava/lang/String; = null

.field public static final DB_CREATE_PACK_STYLES:Ljava/lang/String; = null

.field public static final DB_CREATE_PAGES:Ljava/lang/String; = null

.field public static final DB_CREATE_REPORTS:Ljava/lang/String; = null

.field public static final DB_CREATE_SETTINGS:Ljava/lang/String; = null

.field public static final DB_CREATE_STRINGS:Ljava/lang/String; = null

.field public static final DB_CREATE_VERSIONS:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SprintZone_DbOpenHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    const-string v0, "pages_tbl"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 19
    const-string v2, "id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v4

    .line 20
    const-string v2, "pid INTEGER"

    aput-object v2, v1, v5

    .line 21
    const-string v2, "sid INTEGER"

    aput-object v2, v1, v6

    .line 22
    const-string v2, "page_order INTEGER"

    aput-object v2, v1, v7

    .line 24
    const-string v2, "pack_id TEXT"

    aput-object v2, v1, v8

    .line 18
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_PAGES:Ljava/lang/String;

    .line 28
    const-string v0, "versions_tbl"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 29
    const-string v2, "_id INTEGER PRIMARY KEY"

    aput-object v2, v1, v4

    .line 30
    const-string v2, "promo_ver TEXT NOT NULL"

    aput-object v2, v1, v5

    .line 31
    const-string v2, "alert_ver TEXT NOT NULL"

    aput-object v2, v1, v6

    .line 32
    const-string v2, "setting_ver TEXT NOT NULL"

    aput-object v2, v1, v7

    .line 33
    const-string v2, "pages_ver TEXT NOT NULL"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 34
    const-string v3, "last_update INTEGER NOT NULL"

    aput-object v3, v1, v2

    .line 28
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_VERSIONS:Ljava/lang/String;

    .line 38
    const-string v0, "report_tbl"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    .line 39
    const-string v2, "_ID INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v4

    .line 40
    const-string v2, "id TEXT"

    aput-object v2, v1, v5

    .line 41
    const-string v2, "type INTEGER"

    aput-object v2, v1, v6

    .line 42
    const-string v2, "action TEXT"

    aput-object v2, v1, v7

    .line 43
    const-string v2, "time TEXT"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 44
    const-string v3, "slot INTEGER"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 46
    const-string v3, "data TEXT"

    aput-object v3, v1, v2

    .line 38
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_REPORTS:Ljava/lang/String;

    .line 50
    const-string v0, "table_settings"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 51
    const-string v2, "id INTEGER NOT NULL"

    aput-object v2, v1, v4

    .line 52
    const-string v2, "show INTEGER NOT NULL"

    aput-object v2, v1, v5

    .line 53
    const-string v2, "tag TEXT NOT NULL"

    aput-object v2, v1, v6

    .line 54
    const-string v2, "title TEXT NOT NULL"

    aput-object v2, v1, v7

    .line 55
    const-string v2, "desc TEXT NOT NULL"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 57
    const-string v3, "pack_id TEXT"

    aput-object v3, v1, v2

    .line 50
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_SETTINGS:Ljava/lang/String;

    .line 61
    const-string v0, "table_alert"

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    .line 62
    const-string v2, "id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v4

    .line 63
    const-string v2, "sid INTEGER NOT NULL"

    aput-object v2, v1, v5

    .line 64
    const-string v2, "campaign TEXT"

    aput-object v2, v1, v6

    .line 65
    const-string v2, "header TEXT"

    aput-object v2, v1, v7

    .line 66
    const-string v2, "title TEXT"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 67
    const-string v3, "desc TEXT"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 68
    const-string v3, "expiration INTEGER"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 69
    const-string v3, "action TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 70
    const-string v3, "uri TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 71
    const-string v3, "extra TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 72
    const-string v3, "imgurl TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 73
    const-string v3, "icon ICON BLOB"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 75
    const-string v3, "pack_id TEXT"

    aput-object v3, v1, v2

    .line 61
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_ALERT:Ljava/lang/String;

    .line 79
    const-string v0, "categories_tbl"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 80
    const-string v2, "sid INTEGER PRIMARY KEY"

    aput-object v2, v1, v4

    .line 81
    const-string v2, "title TEXT NOT NULL"

    aput-object v2, v1, v5

    .line 82
    const-string v2, "app_scheme TEXT NOT NULL"

    aput-object v2, v1, v6

    .line 83
    const-string v2, "expanded INTEGER"

    aput-object v2, v1, v7

    .line 85
    const-string v2, "pack_id TEXT"

    aput-object v2, v1, v8

    .line 79
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_CATEGORIES:Ljava/lang/String;

    .line 89
    const-string v0, "features_tbl"

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/String;

    .line 90
    const-string v2, "id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v4

    .line 91
    const-string v2, "sid INTEGER NOT NULL"

    aput-object v2, v1, v5

    .line 92
    const-string v2, "app_scheme TEXT NOT NULL"

    aput-object v2, v1, v6

    .line 93
    const-string v2, "campaign TEXT"

    aput-object v2, v1, v7

    .line 94
    const-string v2, "title TEXT NOT NULL"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 95
    const-string v3, "desc TEXT NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 96
    const-string v3, "expiration INTEGER"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 97
    const-string v3, "cost TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 98
    const-string v3, "rating INTEGER"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 99
    const-string v3, "action TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 100
    const-string v3, "uri TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 101
    const-string v3, "extra TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 102
    const-string v3, "enabled INTEGER"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 103
    const-string v3, "visible INTEGER"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 104
    const-string v3, "imgurl TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 105
    const-string v3, "icon ICON BLOB"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    .line 107
    const-string v3, "pack_id TEXT"

    aput-object v3, v1, v2

    .line 89
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_FEATURES:Ljava/lang/String;

    .line 111
    const-string v0, "packs_tbl"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 113
    const-string v2, "pack_id TEXT NOT NULL UNIQUE"

    aput-object v2, v1, v4

    .line 114
    const-string v2, "name TEXT"

    aput-object v2, v1, v5

    .line 115
    const-string v2, "version TEXT"

    aput-object v2, v1, v6

    .line 116
    const-string v2, "active INTEGER"

    aput-object v2, v1, v7

    .line 117
    const-string v2, "alertIcon ICON BLOB"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 118
    const-string v3, "backgroundImage ICON BLOB"

    aput-object v3, v1, v2

    .line 111
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_PACKS:Ljava/lang/String;

    .line 122
    const-string v0, "packs_styles_tbl"

    new-array v1, v8, [Ljava/lang/String;

    .line 123
    const-string v2, "pack_id TEXT NOT NULL"

    aput-object v2, v1, v4

    .line 124
    const-string v2, "tag TEXT"

    aput-object v2, v1, v5

    .line 125
    const-string v2, "name TEXT"

    aput-object v2, v1, v6

    .line 126
    const-string v2, "value TEXT"

    aput-object v2, v1, v7

    .line 122
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_PACK_STYLES:Ljava/lang/String;

    .line 130
    const-string v0, "packs_strings_tbl"

    new-array v1, v7, [Ljava/lang/String;

    .line 131
    const-string v2, "pack_id TEXT NOT NULL"

    aput-object v2, v1, v4

    .line 132
    const-string v2, "name TEXT"

    aput-object v2, v1, v5

    .line 133
    const-string v2, "value TEXT"

    aput-object v2, v1, v6

    .line 130
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_PACK_STRINGS:Ljava/lang/String;

    .line 137
    const-string v0, "diagnostics_tbl"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 138
    const-string v2, "key TEXT NOT NULL UNIQUE"

    aput-object v2, v1, v4

    .line 139
    const-string v2, "title TEXT"

    aput-object v2, v1, v5

    .line 140
    const-string v2, "description TEXT"

    aput-object v2, v1, v6

    .line 141
    const-string v2, "group_key TEXT"

    aput-object v2, v1, v7

    .line 142
    const-string v2, "rank INTEGER"

    aput-object v2, v1, v8

    .line 137
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_DIAGNOSTICS:Ljava/lang/String;

    .line 146
    const-string v0, "diagnostic_groups_tbl"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 147
    const-string v2, "key TEXT NOT NULL UNIQUE"

    aput-object v2, v1, v4

    .line 148
    const-string v2, "title TEXT"

    aput-object v2, v1, v5

    .line 149
    const-string v2, "description TEXT"

    aput-object v2, v1, v6

    .line 150
    const-string v2, "rank INTEGER"

    aput-object v2, v1, v7

    .line 151
    const-string v2, "sub_keys TEXT"

    aput-object v2, v1, v8

    .line 146
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_DIAGNOSTIC_GROUPS:Ljava/lang/String;

    .line 155
    const-string v0, "info_tbl"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 156
    const-string v2, "id TEXT NOT NULL"

    aput-object v2, v1, v4

    .line 157
    const-string v2, "title TEXT "

    aput-object v2, v1, v5

    .line 158
    const-string v2, "description TEXT"

    aput-object v2, v1, v6

    .line 159
    const-string v2, "action TEXT"

    aput-object v2, v1, v7

    .line 160
    const-string v2, "uri TEXT"

    aput-object v2, v1, v8

    .line 155
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_INFO:Ljava/lang/String;

    .line 164
    const-string v0, "strings_tbl"

    new-array v1, v7, [Ljava/lang/String;

    .line 165
    const-string v2, "id TEXT NOT NULL"

    aput-object v2, v1, v4

    .line 166
    const-string v2, "name TEXT NOT NULL"

    aput-object v2, v1, v5

    .line 167
    const-string v2, "value TEXT"

    aput-object v2, v1, v6

    .line 164
    invoke-static {v0, v1}, Lcom/sprint/dsa/data/DbOpenHelper;->createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    sput-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_STRINGS:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "dbName"

    .prologue
    .line 187
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 188
    return-void
.end method

.method public static addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "tableName"
    .parameter "colName"
    .parameter "colType"

    .prologue
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALTER TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ADD COLUMN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, sqlAlterTable:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public static final createTableSQL(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "tableName"
    .parameter "cols"

    .prologue
    .line 172
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, sql:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CREATE TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    array-length v2, p1

    if-lt v0, v2, :cond_2c

    .line 180
    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 177
    :cond_2c
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3b

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method


# virtual methods
.method protected addDiagnosticsSupport(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 276
    sget-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_DIAGNOSTICS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_DIAGNOSTIC_GROUPS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_INFO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_STRINGS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method protected addPackSupport(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .parameter "db"

    .prologue
    .line 255
    const-string v1, "%tableName%"

    .line 257
    .local v1, TABLE_NAME:Ljava/lang/String;
    const-string v0, "ALTER TABLE %tableName% ADD COLUMN pack_id TEXT;"

    .line 261
    .local v0, SQL_ALTER_PACK_ID:Ljava/lang/String;
    sget-object v2, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_PACKS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    sget-object v2, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_PACK_STYLES:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    sget-object v2, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_PACK_STRINGS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    const-string v2, "ALTER TABLE %tableName% ADD COLUMN pack_id TEXT;"

    const-string v3, "%tableName%"

    const-string v4, "pages_tbl"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v2, "ALTER TABLE %tableName% ADD COLUMN pack_id TEXT;"

    const-string v3, "%tableName%"

    const-string v4, "categories_tbl"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    const-string v2, "ALTER TABLE %tableName% ADD COLUMN pack_id TEXT;"

    const-string v3, "%tableName%"

    const-string v4, "features_tbl"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v2, "ALTER TABLE %tableName% ADD COLUMN pack_id TEXT;"

    const-string v3, "%tableName%"

    const-string v4, "table_alert"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    const-string v2, "ALTER TABLE %tableName% ADD COLUMN pack_id TEXT;"

    const-string v3, "%tableName%"

    const-string v4, "table_settings"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method protected dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 291
    const-string v0, "DROP TABLE IF EXISTS pages_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    const-string v0, "DROP TABLE IF EXISTS versions_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    const-string v0, "DROP TABLE IF EXISTS report_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    const-string v0, "DROP TABLE IF EXISTS table_settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    const-string v0, "DROP TABLE IF EXISTS categories_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    const-string v0, "DROP TABLE IF EXISTS features_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    const-string v0, "DROP TABLE IF EXISTS table_alert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    const-string v0, "DROP TABLE IF EXISTS packs_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    const-string v0, "DROP TABLE IF EXISTS packs_styles_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    const-string v0, "DROP TABLE IF EXISTS packs_strings_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    const-string v0, "DROP TABLE IF EXISTS diagnostics_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    const-string v0, "DROP TABLE IF EXISTS diagnostic_groups_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    const-string v0, "DROP TABLE IF EXISTS info_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const-string v0, "DROP TABLE IF EXISTS strings_tbl"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method protected dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 193
    :try_start_0
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_PAGES:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_VERSIONS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_REPORTS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_SETTINGS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_CATEGORIES:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_FEATURES:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_ALERT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_PACKS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 201
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_PACK_STYLES:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_PACK_STRINGS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_DIAGNOSTICS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_DIAGNOSTIC_GROUPS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_STRINGS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 206
    sget-object v1, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_INFO:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_46
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_46} :catch_47

    .line 210
    :goto_46
    return-void

    .line 207
    :catch_47
    move-exception v0

    .line 208
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "SprintZone_DbOpenHelper"

    const-string v2, "SQL Exception - Failed to create database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 215
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 220
    if-ge p2, v2, :cond_b

    .line 221
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/data/DbOpenHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 222
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/data/DbOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 251
    :cond_a
    :goto_a
    return-void

    .line 226
    :cond_b
    if-ne p2, v2, :cond_1c

    if-lt p3, v3, :cond_1c

    .line 228
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/data/DbOpenHelper;->addPackSupport(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 233
    const-string v2, "report_tbl"

    invoke-virtual {p0, p1, v2}, Lcom/sprint/dsa/data/DbOpenHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 234
    sget-object v2, Lcom/sprint/dsa/data/DbOpenHelper;->DB_CREATE_REPORTS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    :cond_1c
    if-gt p2, v3, :cond_a

    const/4 v2, 0x5

    if-lt p3, v2, :cond_a

    .line 238
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/data/DbOpenHelper;->addDiagnosticsSupport(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_25

    goto :goto_a

    .line 241
    :catch_25
    move-exception v0

    .line 242
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error upgrading SprintZone database from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/data/DbOpenHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/data/DbOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_a
.end method
