.class public Lcom/dropbox/android/provider/CameraUploadsProvider;
.super Landroid/content/ContentProvider;
.source "panda.py"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    const-class v0, Lcom/dropbox/android/provider/CameraUploadsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/CameraUploadsProvider;->d:Ljava/lang/String;

    .line 29
    const-string v0, "com.dropbox.android.CameraUploadsProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/CameraUploadsProvider;->a:Landroid/net/Uri;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/CameraUploadsProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/CameraUploadsProvider;->b:Landroid/net/Uri;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dropbox/android/provider/c;->b:Lcom/dropbox/android/provider/a;

    invoke-virtual {v1}, Lcom/dropbox/android/provider/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/CameraUploadsProvider;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gtz v0, :cond_e

    if-eqz p3, :cond_c2

    .line 94
    :cond_e
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 98
    if-eqz p3, :cond_6b

    .line 99
    :try_start_1b
    const-string v0, "camera_upload_gallery_v2"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    :cond_22
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 108
    new-instance v3, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v0, "camera_upload_gallery_v2"

    invoke-direct {v3, v2, v0}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/dropbox/android/provider/c;->a:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 111
    sget-object v0, Lcom/dropbox/android/provider/c;->b:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 112
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/m;

    .line 113
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 114
    iget-object v7, v0, Ldbxyzptlk/p/m;->a:Ldbxyzptlk/l/k;

    iget-object v7, v7, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-static {v7}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 115
    iget-object v0, v0, Ldbxyzptlk/p/m;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 116
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_65
    .catchall {:try_start_1b .. :try_end_65} :catchall_66

    goto :goto_43

    .line 128
    :catchall_66
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 101
    :cond_6b
    :try_start_6b
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    const-string v4, "camera_upload_gallery_v2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/dropbox/android/provider/c;->a:Lcom/dropbox/android/provider/a;

    iget-object v6, v6, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6f

    .line 118
    :cond_9e
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 120
    new-instance v3, Lcom/dropbox/android/filemanager/r;

    invoke-direct {v3, p0, v1}, Lcom/dropbox/android/filemanager/r;-><init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;)V

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/m;

    .line 122
    iget-object v0, v0, Ldbxyzptlk/p/m;->a:Ldbxyzptlk/l/k;

    invoke-virtual {v3, v0}, Lcom/dropbox/android/filemanager/r;->a(Ldbxyzptlk/l/k;)V

    goto :goto_aa

    .line 126
    :cond_bc
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_bf
    .catchall {:try_start_6b .. :try_end_bf} :catchall_66

    .line 128
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 132
    :cond_c2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/CameraUploadsProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 133
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 64
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera_upload_gallery_v2 JOIN dropbox ON ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/dropbox/android/provider/c;->a:Lcom/dropbox/android/provider/a;

    invoke-virtual {v4}, Lcom/dropbox/android/provider/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "dropbox"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "canon_path"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 68
    sget-object v2, Lcom/dropbox/android/provider/B;->a:[Ljava/lang/String;

    if-eqz p5, :cond_6a

    move-object v7, p5

    :goto_4d
    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/dropbox/android/provider/CameraUploadsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/dropbox/android/provider/CameraUploadsProvider;->b:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 73
    new-instance v1, Lcom/dropbox/android/provider/C;

    const-string v2, "DropboxEntry"

    invoke-direct {v1, v0, v2}, Lcom/dropbox/android/provider/C;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    return-object v1

    .line 68
    :cond_6a
    sget-object v7, Lcom/dropbox/android/provider/CameraUploadsProvider;->c:Ljava/lang/String;

    goto :goto_4d
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
