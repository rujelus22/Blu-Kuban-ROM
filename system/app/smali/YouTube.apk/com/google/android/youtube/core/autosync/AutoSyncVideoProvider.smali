.class public Lcom/google/android/youtube/core/autosync/AutoSyncVideoProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private b:Lcom/google/android/youtube/core/autosync/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "content://com.google.android.youtube.autosync"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/autosync/AutoSyncVideoProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/autosync/AutoSyncVideoProvider;->b:Lcom/google/android/youtube/core/autosync/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/autosync/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 34
    const-string v1, "videos"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 35
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 36
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/google/android/youtube/core/autosync/AutoSyncVideoProvider;->b:Lcom/google/android/youtube/core/autosync/a;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/autosync/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 47
    const-string v2, "videos"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 48
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 49
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_20

    sget-object v0, Lcom/google/android/youtube/core/autosync/AutoSyncVideoProvider;->a:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/youtube/core/autosync/a;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/autosync/AutoSyncVideoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/autosync/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/autosync/AutoSyncVideoProvider;->b:Lcom/google/android/youtube/core/autosync/a;

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/autosync/AutoSyncVideoProvider;->b:Lcom/google/android/youtube/core/autosync/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/autosync/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    const-string v1, "videos"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/autosync/AutoSyncVideoProvider;->b:Lcom/google/android/youtube/core/autosync/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/autosync/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 68
    const-string v1, "videos"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 69
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 70
    return v1
.end method
