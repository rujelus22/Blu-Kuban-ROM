.class public Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;
.super Ljava/lang/Object;
.source "BadgeNotification.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/app/BadgeNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Apps"
.end annotation


# static fields
.field public static final BADGECOUNT:Ljava/lang/String; = "badgecount"

.field public static final CLASSNAME:Ljava/lang/String; = "class"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final PACKAGENAME:Ljava/lang/String; = "package"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUri(J)Landroid/net/Uri;
    .registers 4
    .parameter "id"

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.badge/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J
    .registers 14
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"

    .prologue
    const/4 v10, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 68
    .local v8, id:J
    :try_start_4
    sget-object v1, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "class"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_43} :catch_58
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_43} :catch_85

    move-result-object v6

    .line 77
    if-eqz v6, :cond_57

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_54

    .line 79
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v8, v0

    .line 82
    :cond_54
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_57
    :goto_57
    return-wide v8

    .line 72
    :catch_58
    move-exception v7

    .line 73
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_59
    const-string v0, "BadgeNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getId() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_b2

    .line 77
    if-eqz v6, :cond_57

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_81

    .line 79
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v8, v0

    .line 82
    :cond_81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_57

    .line 74
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_85
    move-exception v7

    .line 75
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_86
    const-string v0, "BadgeNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getId() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_86 .. :try_end_9e} :catchall_b2

    .line 77
    if-eqz v6, :cond_57

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_ae

    .line 79
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v8, v0

    .line 82
    :cond_ae
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_57

    .line 77
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_b2
    move-exception v0

    if-eqz v6, :cond_c6

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_c3

    .line 79
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    .line 82
    :cond_c3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c6
    throw v0
.end method

.method private static final getStreamFromBitmap(Landroid/graphics/Bitmap;)[B
    .registers 4
    .parameter "bmp"

    .prologue
    .line 156
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    .local v0, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static final getStreamFromDrawable(Landroid/graphics/drawable/Drawable;)[B
    .registers 8
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 162
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 164
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-static {v0}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getStreamFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 168
    .local v2, data:[B
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    return-object v2
.end method

.method public static final setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"
    .parameter "badgeCount"

    .prologue
    const/4 v5, 0x0

    .line 90
    invoke-static {p0, p1, p2}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 92
    .local v0, id:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "badgecount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_29

    .line 96
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 102
    :goto_28
    return-void

    .line 100
    :cond_29
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_28
.end method

.method public static final setIcon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"
    .parameter "bmp"

    .prologue
    const/4 v5, 0x0

    .line 122
    const-string v3, "BadgeNotification"

    const-string v4, "No supported API"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {p0, p1, p2}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 126
    .local v0, id:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "icon"

    invoke-static {p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getStreamFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 129
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_30

    .line 130
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 136
    :goto_2f
    return-void

    .line 134
    :cond_30
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public static final setIcon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 139
    const-string v3, "BadgeNotification"

    const-string v4, "No supported API"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p0, p1, p2}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 143
    .local v0, id:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "icon"

    invoke-static {p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getStreamFromDrawable(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 146
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_30

    .line 147
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 153
    :goto_2f
    return-void

    .line 151
    :cond_30
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public static final setIcon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 10
    .parameter "cr"
    .parameter "packageName"
    .parameter "className"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 105
    const-string v3, "BadgeNotification"

    const-string v4, "No supported API"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p0, p1, p2}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 109
    .local v0, id:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "icon"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 112
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_2c

    .line 113
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 119
    :goto_2b
    return-void

    .line 117
    :cond_2c
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2b
.end method
