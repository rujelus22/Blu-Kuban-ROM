.class public final Lcom/google/android/gsf/e;
.super Lcom/google/android/gsf/d;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 186
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/e;->a:Landroid/net/Uri;

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 89
    :try_start_1
    sget-object v1, Lcom/google/android/gsf/e;->a:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_56
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_18} :catch_2d

    move-result-object v1

    .line 91
    if-eqz v1, :cond_64

    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_5e
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_25} :catch_60

    move-result-object v6

    move-object v0, v6

    .line 96
    :goto_27
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_2c
    :goto_2c
    return-object v0

    .line 92
    :catch_2d
    move-exception v0

    move-object v1, v6

    .line 94
    :goto_2f
    :try_start_2f
    const-string v2, "GoogleSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t get key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/e;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_5e

    .line 96
    if-eqz v1, :cond_62

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_2c

    :catchall_56
    move-exception v0

    move-object v1, v6

    :goto_58
    if-eqz v1, :cond_5d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5d
    throw v0

    :catchall_5e
    move-exception v0

    goto :goto_58

    .line 92
    :catch_60
    move-exception v0

    goto :goto_2f

    :cond_62
    move-object v0, v6

    goto :goto_2c

    :cond_64
    move-object v0, v6

    goto :goto_27
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-nez v0, :cond_7

    .line 114
    :goto_6
    return-object p2

    :cond_7
    move-object p2, v0

    goto :goto_6
.end method
