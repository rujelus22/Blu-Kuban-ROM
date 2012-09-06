.class public Lcom/android/gallery3d/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final IS_DEBUG_BUILD:Z

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 40
    new-array v6, v10, [J

    sput-object v6, Lcom/android/gallery3d/common/Utils;->sCrcTable:[J

    .line 42
    sget-object v6, Lcom/google/android/apps/plus/util/Property;->ENABLE_DOGFOOD_FEATURES:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v6

    if-nez v6, :cond_23

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "userdebug"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    :cond_23
    move v6, v7

    :goto_24
    sput-boolean v6, Lcom/android/gallery3d/common/Utils;->IS_DEBUG_BUILD:Z

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    if-ge v0, v10, :cond_4c

    .line 148
    int-to-long v2, v0

    .line 149
    .local v2, part:J
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2b
    const/16 v6, 0x8

    if-ge v1, v6, :cond_45

    .line 150
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_42

    const-wide v4, -0x6a536cd653b4364bL

    .line 151
    .local v4, x:J
    :goto_39
    shr-long v8, v2, v7

    xor-long v2, v8, v4

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 42
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #part:J
    .end local v4           #x:J
    :cond_40
    const/4 v6, 0x0

    goto :goto_24

    .line 150
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #part:J
    :cond_42
    const-wide/16 v4, 0x0

    goto :goto_39

    .line 153
    :cond_45
    sget-object v6, Lcom/android/gallery3d/common/Utils;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 155
    .end local v1           #j:I
    .end local v2           #part:J
    :cond_4c
    return-void
.end method

.method public static assertTrue(Z)V
    .registers 2
    .parameter "cond"

    .prologue
    .line 50
    if-nez p0, :cond_8

    .line 51
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_8
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_8
    return-object p0
.end method

.method public static closeSilently(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 214
    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 218
    :cond_5
    :goto_5
    return-void

    .line 215
    :catch_6
    move-exception v0

    .line 216
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .parameter "fd"

    .prologue
    .line 206
    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 210
    :cond_5
    :goto_5
    return-void

    .line 207
    :catch_6
    move-exception v0

    .line 208
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 176
    if-nez p0, :cond_3

    .line 182
    :goto_2
    return-void

    .line 178
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 179
    :catch_7
    move-exception v0

    .line 180
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "close fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static compare(JJ)I
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 185
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static final crc64Long(Ljava/lang/String;)J
    .registers 3
    .parameter "in"

    .prologue
    .line 138
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 139
    :cond_8
    const-wide/16 v0, 0x0

    .line 141
    :goto_a
    return-wide v0

    :cond_b
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    goto :goto_a
.end method

.method public static final crc64Long([B)J
    .registers 9
    .parameter "buffer"

    .prologue
    .line 158
    const-wide/16 v0, -0x1

    .line 159
    .local v0, crc:J
    const/4 v2, 0x0

    .local v2, k:I
    array-length v3, p0

    .local v3, n:I
    :goto_4
    if-ge v2, v3, :cond_19

    .line 160
    sget-object v4, Lcom/android/gallery3d/common/Utils;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 162
    :cond_19
    return-wide v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 74
    if-eq p0, p1, :cond_c

    if-nez p0, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    :goto_a
    if-ge v1, v2, :cond_37

    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 290
    .local v0, c:C
    sparse-switch v0, :sswitch_data_3c

    .line 296
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 291
    :sswitch_19
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 292
    :sswitch_1f
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 293
    :sswitch_25
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 294
    :sswitch_2b
    const-string v4, "&#039;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 295
    :sswitch_31
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 299
    .end local v0           #c:C
    :cond_37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 290
    :sswitch_data_3c
    .sparse-switch
        0x22 -> :sswitch_25
        0x26 -> :sswitch_31
        0x27 -> :sswitch_2b
        0x3c -> :sswitch_19
        0x3e -> :sswitch_1f
    .end sparse-switch
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 9
    .parameter "in"

    .prologue
    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 167
    .local v6, result:[B
    const/4 v4, 0x0

    .line 168
    .local v4, output:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #output:I
    .local v5, output:I
    :goto_10
    if-ge v2, v3, :cond_25

    aget-char v1, v0, v2

    .line 169
    .local v1, ch:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #output:I
    .restart local v4       #output:I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 170
    add-int/lit8 v5, v4, 0x1

    .end local v4           #output:I
    .restart local v5       #output:I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 172
    .end local v1           #ch:C
    :cond_25
    return-object v6
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 305
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_46

    move-result-object v1

    .line 309
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v2, "%s/%s; %s/%s/%s/%s; %s/%s/%s"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 306
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_46
    move-exception v0

    .line 307
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getPackageInfo failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static handleInterrruptedException(Ljava/lang/Throwable;)Z
    .registers 2
    .parameter "e"

    .prologue
    .line 275
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_8

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_11

    .line 277
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 278
    const/4 v0, 0x1

    .line 280
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "info"

    .prologue
    .line 332
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 335
    :cond_3
    :goto_3
    return-object v1

    .line 333
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "********************************"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 335
    .local v0, length:I
    sget-boolean v2, Lcom/android/gallery3d/common/Utils;->IS_DEBUG_BUILD:Z

    if-nez v2, :cond_3

    const-string v2, "********************************"

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static prevPowerOf2(I)I
    .registers 2
    .parameter "n"

    .prologue
    .line 96
    if-gtz p0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 97
    :cond_8
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static waitWithoutInterrupt(Ljava/lang/Object;)V
    .registers 5
    .parameter "object"

    .prologue
    .line 266
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 270
    :goto_3
    return-void

    .line 267
    :catch_4
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected interrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
