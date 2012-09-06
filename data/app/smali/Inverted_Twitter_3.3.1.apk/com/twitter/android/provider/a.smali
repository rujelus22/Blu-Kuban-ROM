.class public final Lcom/twitter/android/provider/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Lcom/twitter/android/provider/a;


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CREATE TABLE user_values (_id INTEGER PRIMARY KEY,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    aput-object v1, v0, v3

    const-string v1, "CREATE TABLE activity_states (_id INTEGER PRIMARY KEY,account_name TEXT UNIQUE ON CONFLICT REPLACE,tweet INTEGER, mention INTEGER, message INTEGER, discover INTEGER); "

    aput-object v1, v0, v4

    const-string v1, "CREATE TABLE widget_settings (_id INTEGER PRIMARY KEY,widget_id INTEGER UNIQUE ON CONFLICT REPLACE,widget_type INTEGER, account_name TEXT, content_type INTEGER); "

    aput-object v1, v0, v5

    const-string v1, "CREATE TABLE account_settings (_id INTEGER PRIMARY KEY,account_name TEXT UNIQUE ON CONFLICT REPLACE,notif_id INTEGER, notif_tweet INTEGER, notif_mention INTEGER, notif_message INTEGER, interval INTEGER, vibrate INTEGER, ringtone TEXT, light INTEGER);"

    aput-object v1, v0, v6

    const-string v1, "CREATE INDEX user_values_index  ON user_values (name);"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "CREATE INDEX activity_states_index ON activity_states (account_name);"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CREATE INDEX widget_settings_index ON widget_settings (account_name);"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CREATE INDEX account_settings_index ON account_settings (account_name);"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CREATE VIEW states_settings AS SELECT activity_states.account_name AS account_name,activity_states.mention AS mention,activity_states.message AS message,activity_states.tweet AS tweet,activity_states.discover AS discover,account_settings.notif_id AS notif_id,account_settings.notif_mention AS notif_mention,account_settings.notif_message AS notif_message,account_settings.notif_tweet AS notif_tweet,account_settings.interval AS interval,account_settings.light AS light,account_settings.ringtone AS ringtone,account_settings.vibrate AS vibrate FROM activity_states LEFT JOIN account_settings ON activity_states.account_name=account_settings.account_name;"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/a;->c:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "notif_tweet"

    aput-object v1, v0, v3

    const-string v1, "notif_mention"

    aput-object v1, v0, v4

    const-string v1, "notif_message"

    aput-object v1, v0, v5

    const-string v1, "tweet"

    aput-object v1, v0, v6

    const-string v1, "mention"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "discover"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/a;->a:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "widget_id"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "content_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/twitter/android/provider/a;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "global.db"

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/a;->e:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Z)I
    .registers 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p2, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return v0

    :cond_7
    :try_start_7
    const-string v2, "account_settings"

    const-string v3, "account_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {p1, v2, p3, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_78

    const-string v2, "account_name"

    invoke-virtual {p3, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_43

    const-string v2, "notif_mention"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "notif_mention"

    const/16 v3, 0x55

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_31
    const-string v2, "notif_message"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "notif_message"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_43
    const-string v2, "notif_tweet"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "notif_tweet"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_55
    const-string v2, "interval"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "interval"

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_68
    const-string v2, "account_settings"

    const-string v3, "account_name"

    invoke-virtual {p1, v2, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6f
    .catchall {:try_start_7 .. :try_end_6f} :catchall_7a

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    move v0, v1

    goto :goto_5

    :cond_78
    move v0, v1

    goto :goto_5

    :catchall_7a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/provider/a;
    .registers 3

    const-class v1, Lcom/twitter/android/provider/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/twitter/android/provider/a;->d:Lcom/twitter/android/provider/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/twitter/android/provider/a;

    invoke-direct {v0, p0}, Lcom/twitter/android/provider/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/provider/a;->d:Lcom/twitter/android/provider/a;

    :cond_e
    sget-object v0, Lcom/twitter/android/provider/a;->d:Lcom/twitter/android/provider/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized f(Ljava/lang/String;)I
    .registers 12

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "activity_states"

    sget-object v2, Lcom/twitter/android/provider/b;->a:[Ljava/lang/String;

    const-string v3, "account_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2c

    :goto_2a
    monitor-exit p0

    return v0

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2f
    move v0, v9

    goto :goto_27

    :cond_31
    move v0, v9

    goto :goto_2a
.end method


# virtual methods
.method public final declared-synchronized a(IILjava/lang/String;I)I
    .registers 14

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "widget_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "account_name"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "widget_settings"

    const-string v5, "widget_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "widget_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "widget_settings"

    const-string v5, "widget_id"

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_52

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_50

    :cond_4e
    :goto_4e
    monitor-exit p0

    return v0

    :cond_50
    move v0, v1

    goto :goto_4e

    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)I
    .registers 13

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_6

    :goto_5
    return v10

    :cond_6
    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "states_settings"

    sget-object v2, Lcom/twitter/android/provider/a;->a:[Ljava/lang/String;

    const-string v3, "account_name=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7b

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_77

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v9, v0, :cond_77

    move v0, v9

    :goto_31
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x3

    if-eqz v4, :cond_44

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_44

    or-int/lit8 v0, v0, 0x2

    :cond_44
    and-int/lit8 v4, v2, 0xc

    if-eqz v4, :cond_4e

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_4e

    or-int/lit8 v0, v0, 0x8

    :cond_4e
    and-int/lit8 v4, v2, 0x30

    if-eqz v4, :cond_58

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_58

    or-int/lit8 v0, v0, 0x10

    :cond_58
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_62

    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_62

    or-int/lit8 v0, v0, 0x20

    :cond_62
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_72

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v9, v2, :cond_72

    or-int/lit8 v0, v0, 0x4

    :cond_72
    :goto_72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_75
    move v10, v0

    goto :goto_5

    :cond_77
    move v0, v10

    goto :goto_31

    :cond_79
    move v0, v10

    goto :goto_72

    :cond_7b
    move v0, v10

    goto :goto_75
.end method

.method public final declared-synchronized a(Ljava/lang/String;I)I
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_4
    monitor-exit p0

    return v0

    :cond_6
    :try_start_6
    const-string v0, "mention"

    invoke-direct {p0, p1}, Lcom/twitter/android/provider/a;->f(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_4

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_values"

    const-string v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "name"

    invoke-virtual {p2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "user_values"

    const-string v4, "name"

    invoke-virtual {v2, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_3a

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2c

    :goto_2a
    monitor-exit p0

    return v0

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/twitter/android/provider/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/twitter/android/provider/f;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_3a

    move v0, v1

    goto :goto_2a

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Z)I
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/twitter/android/provider/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Z)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_6

    :goto_4
    monitor-exit p0

    return v0

    :cond_6
    :try_start_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "widget_settings"

    const-string v3, "account_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_23

    move-result v0

    goto :goto_4

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    if-nez p1, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return v0

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "account_settings"

    const-string v5, "account_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3d

    const-string v4, "account_name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "account_settings"

    const-string v5, "account_name"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_3f

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    move v0, v1

    goto :goto_5

    :cond_3d
    move v0, v1

    goto :goto_5

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([I)I
    .registers 11

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    array-length v3, p1

    move v1, v0

    :goto_8
    if-ge v0, v3, :cond_22

    aget v4, p1, v0

    const-string v5, "widget_settings"

    const-string v6, "widget_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_24

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    monitor-exit p0

    return v1

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)I
    .registers 13

    const/4 v9, -0x1

    const/4 v10, 0x0

    monitor-enter p0

    if-nez p1, :cond_7

    :goto_5
    monitor-exit p0

    return v9

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "notif_id"

    aput-object v3, v2, v1

    const-string v1, "account_settings"

    const-string v3, "account_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_3d

    move-result-object v1

    if-eqz v1, :cond_43

    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_40

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_40

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_82

    move-result v9

    :try_start_39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_5

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_40
    :try_start_40
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_43
    const-string v1, "account_settings"

    const-string v3, "notif_id NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "notif_id ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_9f

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_87

    move v1, v10

    :goto_59
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_5c
    if-ltz v1, :cond_9d

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "notif_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/twitter/android/provider/a;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/twitter/android/provider/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Z)I

    move-result v0

    if-nez v0, :cond_9d

    const-string v0, "GlobalDatabaseHelper"

    const-string v1, "Failed to save notification id"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    :goto_80
    move v9, v0

    goto :goto_5

    :catchall_82
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_87
    :goto_87
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_91
    .catchall {:try_start_40 .. :try_end_91} :catchall_3d

    move-result v1

    sub-int v3, v1, v10

    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_9a

    move v10, v1

    goto :goto_87

    :cond_9a
    add-int/lit16 v1, v10, 0x3e8

    goto :goto_59

    :cond_9d
    move v0, v1

    goto :goto_80

    :cond_9f
    move v1, v9

    goto :goto_5c
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return v0

    :cond_7
    :try_start_7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "activity_states"

    const-string v5, "account_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "account_name"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "activity_states"

    const-string v5, "account_name"

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    :cond_3a
    iget-object v0, p0, Lcom/twitter/android/provider/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/twitter/android/provider/e;->a:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_4c

    move v0, v1

    goto :goto_5

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_6

    :goto_4
    monitor-exit p0

    return v0

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "account_settings"

    const-string v2, "account_name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_19

    move-result v0

    goto :goto_4

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_6

    :goto_4
    monitor-exit p0

    return v0

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "activity_states"

    const-string v2, "account_name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_19

    move-result v0

    goto :goto_4

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(Ljava/lang/String;)I
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Lcom/twitter/android/provider/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "account_settings"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "interval"

    aput-object v3, v2, v6

    const-string v3, "account_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_31

    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_34

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2d
    return v0

    :cond_2e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_31
    const/16 v0, 0x3c

    goto :goto_2d

    :catchall_34
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    sget-object v1, Lcom/twitter/android/provider/a;->c:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 13

    const/4 v0, 0x1

    if-ne p2, v0, :cond_203

    const/4 v0, 0x2

    :goto_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    const-string v0, "CREATE TABLE widget_settings (_id INTEGER PRIMARY KEY,widget_id INTEGER UNIQUE ON CONFLICT REPLACE,widget_type INTEGER, account_name TEXT, content_type INTEGER); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX widget_settings_index ON widget_settings (account_name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x3

    :cond_12
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    const-string v0, "DROP TABLE scribe"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x4

    :cond_1b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x5

    :cond_1f
    const/4 v1, 0x5

    if-ne v0, v1, :cond_168

    const-string v0, "CREATE TABLE account_settings (_id INTEGER PRIMARY KEY,account_name TEXT UNIQUE ON CONFLICT REPLACE,notif_id INTEGER, notif_tweet INTEGER, notif_mention INTEGER, notif_message INTEGER, interval INTEGER, vibrate INTEGER, ringtone TEXT, light INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX account_settings_index ON account_settings (account_name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/provider/a;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const/4 v2, 0x5

    if-ge p2, v2, :cond_bd

    const-string v2, "interval"

    const-string v3, "polling_interval"

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "notif_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "notif_tweet"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "notif_mention"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "notif_message"

    aput-object v4, v2, v3

    :goto_70
    const-string v3, "vibrate"

    const-string v4, "vibrate"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "ringtone"

    const-string v4, "ringtone"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "light"

    const-string v4, "use_led"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/twitter/android/provider/a;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v3, "com.twitter.android.auth.login"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/provider/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v8

    array-length v4, v3

    const/4 v0, 0x0

    :goto_b1
    if-ge v0, v4, :cond_df

    aget-object v5, v3, v0

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v1, v8}, Lcom/twitter/android/provider/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Z)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    :cond_bd
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "notif_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "interval"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "notif_tweet"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "notif_mention"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "notif_message"

    aput-object v4, v2, v3

    goto :goto_70

    :cond_df
    const-string v1, "activity_states"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_167

    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    :goto_f3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_164

    const/4 v2, 0x5

    if-ne p2, v2, :cond_10f

    const-string v2, "interval"

    const-string v3, "interval"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_10f
    const-string v2, "notif_id"

    const-string v3, "notif_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "notif_tweet"

    const-string v3, "notif_tweet"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "notif_mention"

    const-string v3, "notif_mention"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "notif_message"

    const-string v3, "notif_message"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1, v8}, Lcom/twitter/android/provider/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Z)I

    goto :goto_f3

    :cond_164
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_167
    const/4 v0, 0x6

    :cond_168
    const/4 v1, 0x6

    if-ne v0, v1, :cond_171

    const-string v0, "ALTER TABLE activity_states ADD COLUMN discover INTEGER; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x7

    :cond_171
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1e9

    const-string v1, "account_settings"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "account_name"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "notif_tweet"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "notif_mention"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "notif_message"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/provider/a;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v0, :cond_1e7

    :cond_19f
    :goto_19f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1e4

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v4, :cond_1bf

    if-nez v5, :cond_1bf

    if-eqz v6, :cond_19f

    :cond_1bf
    new-instance v4, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v6, "notif_mention"

    or-int/lit8 v5, v5, 0x10

    or-int/lit8 v5, v5, 0x4

    or-int/lit8 v5, v5, 0x40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v3, v4, v2}, Lcom/twitter/android/provider/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Z)I

    new-instance v4, Landroid/accounts/Account;

    const-string v5, "com.twitter.android.auth.login"

    invoke-direct {v4, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;J)V

    goto :goto_19f

    :cond_1e4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1e7
    const/16 v0, 0x8

    :cond_1e9
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1ef

    const/16 v0, 0x9

    :cond_1ef
    const/16 v1, 0x9

    if-ne v0, v1, :cond_202

    const-string v0, "DROP VIEW IF EXISTS states_settings;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW states_settings AS SELECT activity_states.account_name AS account_name,activity_states.mention AS mention,activity_states.message AS message,activity_states.tweet AS tweet,activity_states.discover AS discover,account_settings.notif_id AS notif_id,account_settings.notif_mention AS notif_mention,account_settings.notif_message AS notif_message,account_settings.notif_tweet AS notif_tweet,account_settings.interval AS interval,account_settings.light AS light,account_settings.ringtone AS ringtone,account_settings.vibrate AS vibrate FROM activity_states LEFT JOIN account_settings ON activity_states.account_name=account_settings.account_name;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE account_settings SET notif_id=null;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_202
    return-void

    :cond_203
    move v0, p2

    goto/16 :goto_4
.end method
