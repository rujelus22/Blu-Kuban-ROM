.class public Lcom/android/mms/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# static fields
.field private static final DRM_TEMP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "content://mms/drm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static cleanupStorage(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v2, v2}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public static insert(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;)Landroid/net/Uri;
    .registers 10
    .parameter "context"
    .parameter "drmObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 50
    .local v4, uri:Landroid/net/Uri;
    :try_start_5
    sget-object v5, Lcom/android/mms/drm/DrmUtils;->DRM_TEMP_URI:Landroid/net/Uri;

    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {p0, v0, v5, v6}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_10} :catch_28

    move-result-object v4

    .line 55
    :goto_11
    const/4 v3, 0x0

    .line 57
    .local v3, os:Ljava/io/OutputStream;
    if-eqz v4, :cond_21

    .line 58
    :try_start_14
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 59
    invoke-virtual {p1}, Lcom/android/mms/drm/DrmWrapper;->getDecryptedData()[B

    move-result-object v1

    .line 63
    .local v1, data:[B
    if-eqz v1, :cond_21

    .line 64
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_36

    .line 68
    .end local v1           #data:[B
    :cond_21
    if-eqz v3, :cond_27

    .line 70
    :try_start_23
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_2b

    .line 71
    const/4 v3, 0x0

    .line 78
    :cond_27
    :goto_27
    return-object v4

    .line 51
    .end local v3           #os:Ljava/io/OutputStream;
    :catch_28
    move-exception v2

    .line 52
    .local v2, e:Ljava/lang/IllegalStateException;
    const/4 v4, 0x0

    goto :goto_11

    .line 72
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_2b
    move-exception v2

    .line 73
    .local v2, e:Ljava/io/IOException;
    const-string v5, "Mms/DrmUtils"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 68
    .end local v2           #e:Ljava/io/IOException;
    :catchall_36
    move-exception v5

    if-eqz v3, :cond_3d

    .line 70
    :try_start_39
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3e

    .line 71
    const/4 v3, 0x0

    .line 74
    :cond_3d
    :goto_3d
    throw v5

    .line 72
    :catch_3e
    move-exception v2

    .line 73
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "Mms/DrmUtils"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d
.end method
