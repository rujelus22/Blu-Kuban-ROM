.class public final Lcom/google/android/gsf/c;
.super Lcom/google/android/gsf/b;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 184
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/c;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-static {p0, p1}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_a

    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result p2

    .line 152
    :cond_a
    :goto_a
    return p2

    .line 149
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 84
    .line 87
    :try_start_1
    sget-object v1, Lcom/google/android/gsf/c;->a:Landroid/net/Uri;

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
    .catchall {:try_start_1 .. :try_end_18} :catchall_5a
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_18} :catch_2d

    move-result-object v1

    .line 89
    if-eqz v1, :cond_68

    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_62
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_25} :catch_64

    move-result-object v6

    move-object v0, v6

    .line 94
    :goto_27
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_2c
    :goto_2c
    return-object v0

    .line 90
    :catch_2d
    move-exception v0

    move-object v1, v6

    .line 92
    :goto_2f
    :try_start_2f
    const-string v2, "GoogleSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/c;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_62

    .line 94
    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_2c

    :catchall_5a
    move-exception v0

    move-object v1, v6

    :goto_5c
    if-eqz v1, :cond_61

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v0

    :catchall_62
    move-exception v0

    goto :goto_5c

    .line 90
    :catch_64
    move-exception v0

    goto :goto_2f

    :cond_66
    move-object v0, v6

    goto :goto_2c

    :cond_68
    move-object v0, v6

    goto :goto_27
.end method
