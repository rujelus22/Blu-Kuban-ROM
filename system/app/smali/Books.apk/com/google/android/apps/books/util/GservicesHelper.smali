.class public final Lcom/google/android/apps/books/util/GservicesHelper;
.super Ljava/lang/Object;
.source "GservicesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/GservicesHelper$Tester;
    }
.end annotation


# static fields
.field public static final sEclairContentUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string v0, "content://settings/gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/GservicesHelper;->sEclairContentUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method private static getApplicationContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "context"

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 116
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, valString:Ljava/lang/String;
    if-eqz v0, :cond_f

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 127
    .end local p2
    :cond_f
    :goto_f
    return p2

    .line 119
    .restart local p2
    :cond_10
    sget-object v1, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 120
    const/4 p2, 0x1

    goto :goto_f

    .line 121
    :cond_1e
    sget-object v1, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 122
    const/4 p2, 0x0

    goto :goto_f

    .line 125
    :cond_2c
    const-string v1, "GservicesHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to read gservices key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\") as boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 7
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 101
    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Lcom/google/android/apps/books/util/GservicesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_c

    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_e

    move-result v2

    .line 108
    .local v2, value:I
    :goto_b
    return v2

    .end local v2           #value:I
    :cond_c
    move v2, p2

    .line 104
    goto :goto_b

    .line 105
    :catch_e
    move-exception v0

    .line 106
    .local v0, ignored:Ljava/lang/NumberFormatException;
    move v2, p2

    .restart local v2       #value:I
    goto :goto_b
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, newGservices:Z
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_c

    .line 56
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/util/GservicesHelper;->getStringEclair(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    .end local p2
    :goto_b
    return-object p2

    .line 59
    .restart local p2
    :cond_c
    const/4 v0, 0x1

    .line 62
    invoke-static {p0}, Lcom/google/android/apps/books/util/GservicesHelper;->getApplicationContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_16

    move-result-object p2

    goto :goto_b

    .line 63
    :catch_16
    move-exception v1

    .line 64
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "GservicesHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getString(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method private static getStringEclair(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 77
    const/4 v6, 0x0

    .line 79
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-static {p0}, Lcom/google/android/apps/books/util/GservicesHelper;->getApplicationContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/apps/books/util/GservicesHelper;->sEclairContentUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_47
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_20} :catch_39

    move-result-object v6

    .line 85
    if-eqz v6, :cond_26

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 93
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_26
    :goto_26
    if-eqz v6, :cond_38

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :cond_38
    return-object p2

    .line 82
    .restart local p2
    :catch_39
    move-exception v7

    .line 83
    .local v7, t:Ljava/lang/Throwable;
    :try_start_3a
    const-string v1, "GservicesHelper"

    const-string v2, "Query of gservices failed."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_47

    .line 85
    if-eqz v6, :cond_26

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_26

    .line 85
    .end local v7           #t:Ljava/lang/Throwable;
    :catchall_47
    move-exception v1

    if-eqz v6, :cond_4d

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4d
    throw v1
.end method
