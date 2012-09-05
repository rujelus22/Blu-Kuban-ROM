.class public Lcom/sec/android/providers/downloads/SecHelpers;
.super Ljava/lang/Object;
.source "SecHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/providers/downloads/SecHelpers$Lexer;
    }
.end annotation


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field public static sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/sec/android/providers/downloads/SecHelpers;->sRandom:Ljava/util/Random;

    .line 60
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"?([^\"]*)\"?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/providers/downloads/SecHelpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static GetDownloadTempPath(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "storageType"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1162
    const/4 v1, 0x0

    .line 1163
    .local v1, root:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1165
    .local v0, base:Ljava/io/File;
    sget-boolean v3, Lcom/sec/android/providers/downloads/SecConstants;->bInternalSDFlag:Z

    if-ne v5, v3, :cond_5a

    .line 1166
    if-nez p1, :cond_2d

    .line 1167
    invoke-static {p0}, Lcom/sec/android/providers/downloads/SecHelpers;->GetSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    if-eqz v1, :cond_2c

    .line 1169
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.downloadTemp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1204
    .restart local v0       #base:Ljava/io/File;
    :goto_28
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_2c
    return-object v2

    .line 1177
    :cond_2d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v5, v3, :cond_2c

    .line 1178
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1179
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.downloadTemp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #base:Ljava/io/File;
    goto :goto_28

    .line 1187
    :cond_5a
    if-nez p1, :cond_2c

    .line 1188
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1189
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1190
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.downloadTemp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #base:Ljava/io/File;
    goto :goto_28
.end method

.method public static GetMemoryStatus(Landroid/content/Context;I)Z
    .registers 5
    .parameter "context"
    .parameter "storageType"

    .prologue
    .line 1210
    const/4 v0, 0x0

    .line 1213
    .local v0, Status:Z
    const/4 v1, 0x1

    sget-boolean v2, Lcom/sec/android/providers/downloads/SecConstants;->bInternalSDFlag:Z

    if-ne v1, v2, :cond_1b

    .line 1214
    if-nez p1, :cond_d

    .line 1215
    invoke-static {p0}, Lcom/sec/android/providers/downloads/SecHelpers;->haveSDCard(Landroid/content/Context;)Z

    move-result v0

    .line 1229
    :cond_c
    :goto_c
    return v0

    .line 1217
    :cond_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1218
    const/4 v0, 0x1

    goto :goto_c

    .line 1222
    :cond_1b
    if-nez p1, :cond_c

    .line 1223
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1224
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private static GetSDCardPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "context"

    .prologue
    .line 1083
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1084
    .local v2, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 1085
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v4

    .line 1087
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_44

    .line 1088
    aget-object v6, v4, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    .line 1089
    .local v5, subsystem:Ljava/lang/String;
    if-eqz v5, :cond_41

    .line 1090
    const-string v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    aget-object v6, v4, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1091
    aget-object v6, v4, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1092
    .local v3, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1093
    aget-object v6, v4, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1099
    .end local v3           #state:Ljava/lang/String;
    .end local v5           #subsystem:Ljava/lang/String;
    :goto_40
    return-object v6

    .line 1087
    .restart local v5       #subsystem:Ljava/lang/String;
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1099
    .end local v5           #subsystem:Ljava/lang/String;
    :cond_44
    const/4 v6, 0x0

    goto :goto_40
.end method

.method public static GetSavePath(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "storageType"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1103
    const/4 v1, 0x0

    .line 1104
    .local v1, root:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1106
    .local v0, base:Ljava/io/File;
    sget-boolean v3, Lcom/sec/android/providers/downloads/SecConstants;->bInternalSDFlag:Z

    if-ne v5, v3, :cond_62

    .line 1107
    if-nez p1, :cond_35

    .line 1108
    invoke-static {p0}, Lcom/sec/android/providers/downloads/SecHelpers;->GetSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1109
    if-eqz v1, :cond_34

    .line 1110
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1148
    .restart local v0       #base:Ljava/io/File;
    :goto_28
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_91

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_91

    .line 1156
    :cond_34
    :goto_34
    return-object v2

    .line 1118
    :cond_35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v5, v3, :cond_34

    .line 1119
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1120
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #base:Ljava/io/File;
    goto :goto_28

    .line 1129
    :cond_62
    if-nez p1, :cond_34

    .line 1130
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1131
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1132
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #base:Ljava/io/File;
    goto :goto_28

    .line 1156
    :cond_91
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_34
.end method

.method public static IsDrmSupportedMime(Ljava/lang/String;)Z
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 1234
    const/4 v0, 0x1

    .line 1250
    .local v0, Status:Z
    const-string v1, "audio/ogg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1251
    const/4 v0, 0x0

    .line 1260
    :goto_a
    return v0

    .line 1252
    :cond_b
    const-string v1, "video/ogg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1253
    const/4 v0, 0x0

    goto :goto_a

    .line 1254
    :cond_15
    const-string v1, "application/ogg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1255
    const/4 v0, 0x0

    goto :goto_a

    .line 1257
    :cond_1f
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static chooseExtensionFromMimeType(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "mimeType"
    .parameter "useDefaults"
    .parameter "ext"

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_37

    .line 334
    invoke-static {p0}, Lcom/sec/android/providers/downloads/SecHelpers;->isDrmMime(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 335
    const-string v1, "application/vnd.oma.drm.message"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 336
    const-string v0, ".dm"

    .line 359
    :cond_13
    :goto_13
    if-nez v0, :cond_37

    .line 360
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_32

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    :cond_32
    if-nez v0, :cond_37

    if-eqz p2, :cond_37

    .line 372
    move-object v0, p2

    .line 379
    :cond_37
    if-nez v0, :cond_51

    .line 380
    if-eqz p0, :cond_8e

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 381
    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 385
    const-string v0, ".html"

    .line 399
    :cond_51
    :goto_51
    return-object v0

    .line 337
    :cond_52
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 338
    const-string v0, ".dcf"

    goto :goto_13

    .line 339
    :cond_5d
    const-string v1, "application/vnd.oma.drm.dcf"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 340
    const-string v0, ".odf"

    goto :goto_13

    .line 342
    :cond_68
    const-string v0, ".xml"

    goto :goto_13

    .line 347
    :cond_6b
    invoke-static {}, Lcom/sec/android/providers/downloads/SecContentType;->getSingleton()Lcom/sec/android/providers/downloads/SecContentType;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/providers/downloads/SecContentType;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_13

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 386
    :cond_89
    if-eqz p1, :cond_51

    .line 390
    const-string v0, ".txt"

    goto :goto_51

    .line 392
    :cond_8e
    if-eqz p1, :cond_51

    .line 396
    const-string v0, ".bin"

    goto :goto_51
.end method

.method public static chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "destination"

    .prologue
    const/16 v7, 0x3f

    const/16 v6, 0x2f

    .line 223
    const/4 v2, 0x0

    .line 226
    .local v2, filename:Ljava/lang/String;
    if-eqz p2, :cond_1d

    .line 227
    invoke-static {p2}, Lcom/sec/android/providers/downloads/SecHelpers;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_1d

    .line 235
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 236
    .local v3, index:I
    if-lez v3, :cond_1d

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    .end local v3           #index:I
    :cond_1d
    if-nez v2, :cond_39

    if-eqz p1, :cond_39

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 249
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 253
    .restart local v3       #index:I
    if-lez v3, :cond_97

    .line 254
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    .end local v3           #index:I
    :cond_39
    :goto_39
    if-nez v2, :cond_5d

    if-eqz p3, :cond_5d

    .line 264
    invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, decodedContentLocation:Ljava/lang/String;
    if-eqz v0, :cond_5d

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5d

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_5d

    .line 271
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 272
    .restart local v3       #index:I
    if-lez v3, :cond_99

    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 281
    .end local v0           #decodedContentLocation:Ljava/lang/String;
    .end local v3           #index:I
    :cond_5d
    :goto_5d
    if-nez v2, :cond_84

    .line 282
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, decodedUrl:Ljava/lang/String;
    if-eqz v1, :cond_84

    .line 284
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 286
    .local v4, queryIndex:I
    if-lez v4, :cond_70

    .line 287
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 289
    :cond_70
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 290
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 291
    .restart local v3       #index:I
    if-lez v3, :cond_84

    .line 292
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .end local v1           #decodedUrl:Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #queryIndex:I
    :cond_84
    if-eqz v2, :cond_8c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8e

    .line 304
    :cond_8c
    const-string v2, "downloadfile"

    .line 322
    :cond_8e
    const-string v5, "[^a-zA-Z0-9\uac00-\ud7a3\\.\\-_]+"

    const-string v6, "_"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    return-object v2

    .line 256
    .restart local v3       #index:I
    :cond_97
    move-object v2, p1

    goto :goto_39

    .line 275
    .restart local v0       #decodedContentLocation:Ljava/lang/String;
    :cond_99
    move-object v2, v0

    goto :goto_5d
.end method

.method public static chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .parameter "destination"
    .parameter "filename"
    .parameter "extension"
    .parameter "recoveryDir"

    .prologue
    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, fullFilename:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_29

    if-eqz p3, :cond_27

    const/4 v4, 0x1

    if-eq p0, v4, :cond_29

    const/4 v4, 0x2

    if-eq p0, v4, :cond_29

    const/4 v4, 0x3

    if-eq p0, v4, :cond_29

    :cond_27
    move-object v4, v0

    .line 471
    :goto_28
    return-object v4

    .line 443
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 458
    const/4 v3, 0x1

    .line 459
    .local v3, sequence:I
    const/4 v2, 0x1

    .local v2, magnitude:I
    :goto_3e
    const v4, 0x3b9aca00

    if-ge v2, v4, :cond_79

    .line 460
    const/4 v1, 0x0

    .local v1, iteration:I
    :goto_44
    const/16 v4, 0x9

    if-ge v1, v4, :cond_76

    .line 461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6a

    move-object v4, v0

    .line 463
    goto :goto_28

    .line 468
    :cond_6a
    sget-object v4, Lcom/sec/android/providers/downloads/SecHelpers;->sRandom:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 459
    :cond_76
    mul-int/lit8 v2, v2, 0xa

    goto :goto_3e

    .line 471
    .end local v1           #iteration:I
    :cond_79
    const/4 v4, 0x0

    goto :goto_28
.end method

.method public static final discardPurgeableFiles(Landroid/content/Context;J)Z
    .registers 16
    .parameter "context"
    .parameter "targetBytes"

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const-string v3, "( status = \'200\' AND destination = \'2\' )"

    const-string v5, "lastmod"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 490
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_14

    .line 518
    :goto_13
    return v12

    .line 493
    :cond_14
    const-wide/16 v10, 0x0

    .line 495
    .local v10, totalFreed:J
    :try_start_16
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 496
    :goto_19
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5c

    cmp-long v0, v10, p1

    if-gez v0, :cond_5c

    .line 497
    new-instance v7, Ljava/io/File;

    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v10, v0

    .line 503
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 504
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 505
    .local v8, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 507
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_56
    .catchall {:try_start_16 .. :try_end_56} :catchall_57

    goto :goto_19

    .line 510
    .end local v7           #file:Ljava/io/File;
    .end local v8           #id:J
    :catchall_57
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 518
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_68

    const/4 v0, 0x1

    :goto_66
    move v12, v0

    goto :goto_13

    :cond_68
    move v0, v12

    goto :goto_66
.end method

.method public static generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Lcom/sec/android/providers/downloads/SecDownloadFileInfo;
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 102
    if-eqz p6, :cond_5

    const/4 v1, 0x2

    if-ne p6, v1, :cond_21

    .line 104
    :cond_5
    if-nez p5, :cond_11

    .line 108
    new-instance v1, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x196

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    .line 216
    :goto_10
    return-object v1

    .line 111
    :cond_11
    invoke-static {p0, p5}, Lcom/sec/android/providers/downloads/SecHelpers;->isSupportMimeType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 113
    new-instance v1, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x196

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto :goto_10

    .line 117
    :cond_21
    invoke-static {p1, p2, p3, p4, p6}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 122
    const/4 v1, 0x0

    .line 123
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 124
    if-lez v3, :cond_10e

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 129
    :goto_38
    const/4 v2, 0x0

    .line 131
    if-eqz p3, :cond_3f

    .line 132
    invoke-static {p3}, Lcom/sec/android/providers/downloads/SecHelpers;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    :cond_3f
    if-eqz v1, :cond_45

    if-nez p9, :cond_4a

    if-nez v2, :cond_4a

    .line 135
    :cond_45
    const/4 v2, 0x1

    invoke-static {p5, v2, v1}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseExtensionFromMimeType(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    :cond_4a
    const/4 v2, 0x1

    if-eq p6, v2, :cond_53

    const/4 v2, 0x2

    if-eq p6, v2, :cond_53

    const/4 v2, 0x3

    if-ne p6, v2, :cond_5d

    .line 157
    :cond_53
    new-instance v1, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto :goto_10

    .line 162
    :cond_5d
    move/from16 v0, p8

    invoke-static {p0, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->GetDownloadTempPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 164
    if-nez v2, :cond_7b

    .line 165
    if-nez p8, :cond_71

    .line 166
    new-instance v1, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x279

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto :goto_10

    .line 168
    :cond_71
    new-instance v1, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto :goto_10

    .line 172
    :cond_7b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_97

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_97

    .line 178
    new-instance v1, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto/16 :goto_10

    .line 181
    :cond_97
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    .line 189
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v7, v4

    .line 190
    mul-long v4, v5, v7

    .line 191
    move/from16 v0, p7

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_ba

    .line 195
    new-instance v1, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto/16 :goto_10

    .line 198
    :cond_ba
    const-string v4, "recovery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    const-class v3, Lcom/sec/android/providers/downloads/SecHelpers;

    monitor-enter v3

    .line 210
    :try_start_eb
    invoke-static {p6, v2, v1, v4}, Lcom/sec/android/providers/downloads/SecHelpers;->chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 213
    if-eqz v2, :cond_102

    .line 214
    new-instance v1, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    monitor-exit v3

    goto/16 :goto_10

    .line 218
    :catchall_ff
    move-exception v1

    monitor-exit v3
    :try_end_101
    .catchall {:try_start_eb .. :try_end_101} :catchall_ff

    throw v1

    .line 216
    :cond_102
    :try_start_102
    new-instance v1, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1ec

    invoke-direct {v1, v2, v4, v5}, Lcom/sec/android/providers/downloads/SecDownloadFileInfo;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    monitor-exit v3
    :try_end_10c
    .catchall {:try_start_102 .. :try_end_10c} :catchall_ff

    goto/16 :goto_10

    :cond_10e
    move-object v3, v2

    goto/16 :goto_38
.end method

.method public static getStatusText(I)Ljava/lang/String;
    .registers 2
    .parameter "status"

    .prologue
    .line 1008
    const/4 v0, 0x0

    .line 1010
    .local v0, statusText:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_20

    .line 1056
    const-string v0, "952 Device Aborted"

    .line 1059
    :goto_6
    return-object v0

    .line 1015
    :sswitch_7
    const-string v0, "900 Success"

    .line 1016
    goto :goto_6

    .line 1020
    :sswitch_a
    const-string v0, "901 Insufficient memory"

    .line 1021
    goto :goto_6

    .line 1023
    :sswitch_d
    const-string v0, "902 User Canceled"

    .line 1024
    goto :goto_6

    .line 1029
    :sswitch_10
    const-string v0, "905 Attribute mismatch"

    .line 1030
    goto :goto_6

    .line 1032
    :sswitch_13
    const-string v0, "951 Invalid DDVersion"

    .line 1033
    goto :goto_6

    .line 1035
    :sswitch_16
    const-string v0, "906 Invalid descriptor"

    .line 1036
    goto :goto_6

    .line 1042
    :sswitch_19
    const-string v0, "953 Non-Acceptable Content"

    .line 1043
    goto :goto_6

    .line 1053
    :sswitch_1c
    const-string v0, "954 Loader Error"

    .line 1054
    goto :goto_6

    .line 1010
    nop

    :sswitch_data_20
    .sparse-switch
        0xc8 -> :sswitch_7
        0xc9 -> :sswitch_7
        0xca -> :sswitch_7
        0xcb -> :sswitch_7
        0x190 -> :sswitch_1c
        0x196 -> :sswitch_19
        0x19b -> :sswitch_1c
        0x1ea -> :sswitch_d
        0x1ed -> :sswitch_1c
        0x1ee -> :sswitch_1c
        0x1ef -> :sswitch_1c
        0x1f0 -> :sswitch_1c
        0x1f1 -> :sswitch_1c
        0x259 -> :sswitch_16
        0x25a -> :sswitch_13
        0x262 -> :sswitch_19
        0x26c -> :sswitch_19
        0x26d -> :sswitch_10
        0x276 -> :sswitch_a
        0x277 -> :sswitch_a
        0x278 -> :sswitch_a
        0x27a -> :sswitch_19
    .end sparse-switch
.end method

.method public static guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "url"

    .prologue
    .line 1271
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static haveSDCard(Landroid/content/Context;)Z
    .registers 8
    .parameter "context"

    .prologue
    .line 1063
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 1064
    .local v2, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 1065
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v4

    .line 1067
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_3f

    .line 1068
    aget-object v6, v4, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    .line 1069
    .local v5, subsystem:Ljava/lang/String;
    if-eqz v5, :cond_3c

    .line 1070
    const-string v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    aget-object v6, v4, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1071
    aget-object v6, v4, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1072
    .local v3, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1073
    const/4 v6, 0x1

    .line 1079
    .end local v3           #state:Ljava/lang/String;
    .end local v5           #subsystem:Ljava/lang/String;
    :goto_3b
    return v6

    .line 1067
    .restart local v5       #subsystem:Ljava/lang/String;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1079
    .end local v5           #subsystem:Ljava/lang/String;
    :cond_3f
    const/4 v6, 0x0

    goto :goto_3b
.end method

.method public static isAvailableMemorySpace(Landroid/content/Context;II)Z
    .registers 15
    .parameter "context"
    .parameter "storageType"
    .parameter "contSize"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 922
    if-nez p1, :cond_31

    if-lez p2, :cond_31

    .line 923
    const/4 v7, 0x0

    .line 924
    .local v7, storageDirectory:Ljava/lang/String;
    sget-boolean v10, Lcom/sec/android/providers/downloads/SecConstants;->bInternalSDFlag:Z

    if-ne v8, v10, :cond_26

    .line 925
    invoke-static {p0}, Lcom/sec/android/providers/downloads/SecHelpers;->GetSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 930
    :goto_f
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 931
    .local v4, fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v5, v10

    .line 932
    .local v5, numBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 933
    .local v2, blockSize:J
    mul-long v0, v5, v2

    .line 934
    .local v0, InBytes:J
    int-to-long v10, p2

    cmp-long v10, v0, v10

    if-lez v10, :cond_2f

    .line 955
    .end local v0           #InBytes:J
    .end local v2           #blockSize:J
    .end local v4           #fs:Landroid/os/StatFs;
    .end local v5           #numBlocks:J
    .end local v7           #storageDirectory:Ljava/lang/String;
    :cond_25
    :goto_25
    return v8

    .line 928
    .restart local v7       #storageDirectory:Ljava/lang/String;
    :cond_26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    .restart local v0       #InBytes:J
    .restart local v2       #blockSize:J
    .restart local v4       #fs:Landroid/os/StatFs;
    .restart local v5       #numBlocks:J
    :cond_2f
    move v8, v9

    .line 937
    goto :goto_25

    .line 939
    .end local v0           #InBytes:J
    .end local v2           #blockSize:J
    .end local v4           #fs:Landroid/os/StatFs;
    .end local v5           #numBlocks:J
    .end local v7           #storageDirectory:Ljava/lang/String;
    :cond_31
    if-ne v8, p1, :cond_25

    if-lez p2, :cond_25

    .line 941
    sget-boolean v10, Lcom/sec/android/providers/downloads/SecConstants;->bInternalSDFlag:Z

    if-nez v10, :cond_3b

    move v8, v9

    .line 942
    goto :goto_25

    .line 944
    :cond_3b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 945
    .restart local v7       #storageDirectory:Ljava/lang/String;
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 946
    .restart local v4       #fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v5, v10

    .line 947
    .restart local v5       #numBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 948
    .restart local v2       #blockSize:J
    mul-long v0, v5, v2

    .line 949
    .restart local v0       #InBytes:J
    int-to-long v10, p2

    cmp-long v10, v0, v10

    if-gtz v10, :cond_25

    move v8, v9

    .line 952
    goto :goto_25
.end method

.method public static isDrmMime(Ljava/lang/String;)Z
    .registers 4
    .parameter "mimeType"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 894
    if-nez p0, :cond_c

    .line 895
    const-string v1, "SecDownloader"

    const-string v2, "SecHelpers : isDrmMime: Incroect Mime type input."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_b
    :goto_b
    return v0

    .line 910
    :cond_c
    const-string v2, "application/vnd.oma.drm.message"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    .line 911
    goto :goto_b

    .line 912
    :cond_16
    const-string v2, "application/vnd.oma.drm.content"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    .line 913
    goto :goto_b
.end method

.method public static isFilenameValid(Ljava/lang/String;)Z
    .registers 4
    .parameter "filename"

    .prologue
    .line 573
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 576
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 525
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 527
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_13

    .line 528
    const-string v3, "SecDownloader"

    const-string v4, "SecHelpers : isNetworkAvailable: couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_11
    const/4 v3, 0x0

    :goto_12
    return v3

    .line 530
    :cond_13
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 531
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_11

    .line 532
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    array-length v3, v2

    if-ge v1, v3, :cond_11

    .line 533
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_29

    .line 537
    const/4 v3, 0x1

    goto :goto_12

    .line 532
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public static isNetworkRoaming(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 552
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 554
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_13

    .line 555
    const-string v2, "SecDownloader"

    const-string v3, "SecHelpers : isNetworkRoaming: couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_11
    :goto_11
    const/4 v2, 0x0

    return v2

    .line 557
    :cond_13
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 558
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_11

    .line 559
    const-string v2, "SecDownloader"

    const-string v3, "SecHelpers : isNetworkRoaming: network is not roaming"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public static isSupportMimeType(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .parameter "context"
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 848
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v5

    if-nez v5, :cond_d

    .line 880
    :cond_c
    :goto_c
    return v3

    .line 854
    :cond_d
    invoke-static {p1}, Lcom/sec/android/providers/downloads/SecHelpers;->isDrmMime(Ljava/lang/String;)Z

    move-result v5

    if-ne v3, v5, :cond_22

    .line 855
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v4

    if-ne v4, v3, :cond_c

    .line 856
    invoke-static {p1}, Lcom/sec/android/providers/downloads/SecHelpers;->isSupportedDrmMime(Ljava/lang/String;)Z

    move-result v3

    goto :goto_c

    .line 869
    :cond_22
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 870
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 871
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v5, "file"

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const/high16 v5, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 874
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_c

    move v3, v4

    .line 878
    goto :goto_c
.end method

.method public static isSupportedDrmMime(Ljava/lang/String;)Z
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 885
    if-nez p0, :cond_b

    .line 886
    const-string v0, "SecDownloader"

    const-string v1, "SecHelpers : isSupportedDrmMime: Incroect Mime type input."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/4 v0, 0x0

    .line 889
    :goto_a
    return v0

    :cond_b
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "contentDisposition"

    .prologue
    .line 74
    :try_start_0
    sget-object v1, Lcom/sec/android/providers/downloads/SecHelpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 75
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v1

    .line 81
    .end local v0           #m:Ljava/util/regex/Matcher;
    :goto_11
    return-object v1

    .line 78
    :catch_12
    move-exception v1

    .line 81
    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static parseExpression(Lcom/sec/android/providers/downloads/SecHelpers$Lexer;)V
    .registers 3
    .parameter "lexer"

    .prologue
    .line 608
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 609
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->advance()V

    .line 610
    invoke-static {p0}, Lcom/sec/android/providers/downloads/SecHelpers;->parseExpression(Lcom/sec/android/providers/downloads/SecHelpers$Lexer;)V

    .line 611
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, unmatched parenthese"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->advance()V

    .line 619
    :goto_1f
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    .line 624
    return-void

    .line 617
    :cond_27
    invoke-static {p0}, Lcom/sec/android/providers/downloads/SecHelpers;->parseStatement(Lcom/sec/android/providers/downloads/SecHelpers$Lexer;)V

    goto :goto_1f

    .line 622
    :cond_2b
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->advance()V

    goto :goto_0
.end method

.method private static parseStatement(Lcom/sec/android/providers/downloads/SecHelpers$Lexer;)V
    .registers 3
    .parameter "lexer"

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    .line 631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->advance()V

    .line 636
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2f

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->advance()V

    .line 638
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2b

    .line 639
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected quoted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_2b
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->advance()V

    .line 652
    :goto_2e
    return-void

    .line 646
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4d

    .line 647
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->advance()V

    .line 648
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->currentToken()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_49

    .line 649
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_49
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->advance()V

    goto :goto_2e

    .line 656
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error after column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateSelection(Ljava/lang/String;Ljava/util/Set;)V
    .registers 7
    .parameter "selection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, allowedColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 601
    :cond_8
    return-void

    .line 587
    :cond_9
    new-instance v1, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 588
    .local v1, lexer:Lcom/sec/android/providers/downloads/SecHelpers$Lexer;
    invoke-static {v1}, Lcom/sec/android/providers/downloads/SecHelpers;->parseExpression(Lcom/sec/android/providers/downloads/SecHelpers$Lexer;)V

    .line 589
    invoke-virtual {v1}, Lcom/sec/android/providers/downloads/SecHelpers$Lexer;->currentToken()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_8

    .line 590
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_21} :catch_21

    .line 592
    .end local v1           #lexer:Lcom/sec/android/providers/downloads/SecHelpers$Lexer;
    :catch_21
    move-exception v0

    .line 596
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "SecDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecHelpers : validateSelection: invalid selection triggered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    throw v0
.end method
