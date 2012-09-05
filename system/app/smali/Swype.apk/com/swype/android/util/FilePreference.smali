.class public Lcom/swype/android/util/FilePreference;
.super Ljava/lang/Object;
.source "FilePreference.java"


# static fields
.field private static final PREFS_DIR:Ljava/lang/String; = "prefs"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static deletePreference(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .parameter "ctx"
    .parameter "pref"

    .prologue
    .line 231
    invoke-static {p0}, Lcom/swype/android/util/FilePreference;->getPrefsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 232
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_24

    .line 234
    const/4 v2, 0x1

    .line 236
    :goto_23
    return v2

    :cond_24
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_23
.end method

.method public static exists(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-static {p0, p1}, Lcom/swype/android/util/FilePreference;->getPrefFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 217
    const/4 v0, 0x1

    .line 219
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static getPrefFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-static {p0}, Lcom/swype/android/util/FilePreference;->getPrefsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    return-object v1
.end method

.method public static getPrefsDir(Landroid/content/Context;)Ljava/io/File;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 178
    if-nez p0, :cond_5

    move-object v0, v3

    .line 190
    :cond_4
    :goto_4
    return-object v0

    .line 181
    :cond_5
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "prefs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 185
    if-nez v1, :cond_4

    move-object v0, v3

    .line 187
    goto :goto_4
.end method

.method public static readBoolPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    .line 162
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/swype/android/util/FilePreference;->readStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :try_start_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    move-result v0

    .line 168
    :goto_d
    return v0

    :catch_e
    move-exception v0

    move v0, p2

    goto :goto_d
.end method

.method public static readIntPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    .line 142
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/swype/android/util/FilePreference;->readStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    move-result v0

    .line 148
    :goto_d
    return v0

    :catch_e
    move-exception v0

    move v0, p2

    goto :goto_d
.end method

.method public static readStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 102
    .line 103
    invoke-static {p0}, Lcom/swype/android/util/FilePreference;->getPrefsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_25

    move-object v0, p2

    .line 128
    :goto_24
    return-object v0

    .line 109
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    :try_start_2a
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_74
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2f} :catch_95
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_66

    .line 113
    :try_start_2f
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_88
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_36} :catch_99
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_8d

    .line 114
    const/16 v3, 0x1000

    :try_start_38
    new-array v3, v3, [B

    .line 116
    :goto_3a
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_56

    .line 117
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_4a} :catch_4b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4a} :catch_91

    goto :goto_3a

    :catch_4b
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    .line 125
    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_80

    .line 126
    :goto_51
    :try_start_51
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_63

    move-object v0, p2

    goto :goto_24

    .line 119
    :cond_56
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_59} :catch_4b
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_91

    move-result-object v0

    .line 125
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_7e

    .line 126
    :goto_5d
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_24

    .line 127
    :catch_61
    move-exception v1

    goto :goto_24

    :catch_63
    move-exception v0

    move-object v0, p2

    goto :goto_24

    :catch_66
    move-exception v0

    move-object v0, v4

    move-object v1, v4

    .line 125
    :goto_69
    :try_start_69
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_82

    .line 126
    :goto_6c
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_71

    move-object v0, p2

    goto :goto_24

    .line 127
    :catch_71
    move-exception v0

    move-object v0, p2

    goto :goto_24

    .line 125
    :catchall_74
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    :goto_77
    :try_start_77
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_84

    .line 126
    :goto_7a
    :try_start_7a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_86

    :goto_7d
    throw v0

    :catch_7e
    move-exception v1

    goto :goto_5d

    :catch_80
    move-exception v0

    goto :goto_51

    :catch_82
    move-exception v0

    goto :goto_6c

    :catch_84
    move-exception v1

    goto :goto_7a

    :catch_86
    move-exception v1

    goto :goto_7d

    .line 125
    :catchall_88
    move-exception v0

    move-object v1, v4

    goto :goto_77

    :catchall_8b
    move-exception v0

    goto :goto_77

    :catch_8d
    move-exception v0

    move-object v0, v4

    move-object v1, v2

    goto :goto_69

    :catch_91
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_69

    :catch_95
    move-exception v0

    move-object v0, v4

    move-object v1, v4

    goto :goto_4e

    :catch_99
    move-exception v0

    move-object v0, v4

    move-object v1, v2

    goto :goto_4e
.end method

.method public static saveBoolPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4
    .parameter "ctx"
    .parameter "pref"
    .parameter "value"

    .prologue
    .line 89
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/swype/android/util/FilePreference;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static saveIntPreference(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4
    .parameter "ctx"
    .parameter "pref"
    .parameter "value"

    .prologue
    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/swype/android/util/FilePreference;->saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static saveStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 37
    .line 39
    invoke-static {p0}, Lcom/swype/android/util/FilePreference;->getPrefsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    .line 44
    :try_start_24
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_46

    .line 52
    :cond_27
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 54
    :try_start_2b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_65
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_49
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_57

    .line 55
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_37} :catch_88
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_80

    move-result-object v1

    .line 56
    :try_start_38
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 57
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3e} :catch_8c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_84

    .line 58
    const/4 v0, 0x1

    .line 62
    :try_start_3f
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_6f

    .line 63
    :goto_42
    :try_start_42
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_71

    .line 66
    :goto_45
    return v0

    .line 46
    :catch_46
    move-exception v0

    move v0, v4

    goto :goto_45

    :catch_49
    move-exception v0

    move-object v0, v5

    move-object v1, v5

    .line 62
    :goto_4c
    :try_start_4c
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_73

    .line 63
    :goto_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_54

    move v0, v4

    goto :goto_45

    .line 64
    :catch_54
    move-exception v0

    move v0, v4

    goto :goto_45

    :catch_57
    move-exception v0

    move-object v0, v5

    move-object v1, v5

    .line 62
    :goto_5a
    :try_start_5a
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_75

    .line 63
    :goto_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_62

    move v0, v4

    goto :goto_45

    .line 64
    :catch_62
    move-exception v0

    move v0, v4

    goto :goto_45

    .line 62
    :catchall_65
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    :goto_68
    :try_start_68
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_77

    .line 63
    :goto_6b
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_79

    :goto_6e
    throw v0

    :catch_6f
    move-exception v1

    goto :goto_42

    .line 64
    :catch_71
    move-exception v1

    goto :goto_45

    :catch_73
    move-exception v0

    goto :goto_4f

    :catch_75
    move-exception v0

    goto :goto_5d

    :catch_77
    move-exception v1

    goto :goto_6b

    :catch_79
    move-exception v1

    goto :goto_6e

    .line 62
    :catchall_7b
    move-exception v0

    move-object v1, v5

    goto :goto_68

    :catchall_7e
    move-exception v0

    goto :goto_68

    :catch_80
    move-exception v0

    move-object v0, v5

    move-object v1, v2

    goto :goto_5a

    :catch_84
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_5a

    :catch_88
    move-exception v0

    move-object v0, v5

    move-object v1, v2

    goto :goto_4c

    :catch_8c
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_4c
.end method
