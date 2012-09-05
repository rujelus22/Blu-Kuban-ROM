.class public final Lae;
.super Ljava/lang/Object;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ldy;
    .registers 4
    .parameter

    .prologue
    .line 43
    const-class v0, Lae;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lae;->b(Landroid/content/Context;)Ldy;

    move-result-object v1

    .line 44
    new-instance v2, Ldy;

    invoke-direct {v2}, Ldy;-><init>()V

    invoke-static {p0, v2}, Lae;->b(Landroid/content/Context;Ldy;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 45
    monitor-exit v0

    return-object v1

    .line 43
    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ldy;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 60
    const-class v0, Lae;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lae;->b(Landroid/content/Context;)Ldy;

    move-result-object v1

    .line 62
    if-eqz p1, :cond_d

    iget-object v2, p1, Ldy;->a:Lcg;

    if-nez v2, :cond_19

    .line 67
    :cond_d
    :goto_d
    if-nez v1, :cond_14

    new-instance v1, Ldy;

    invoke-direct {v1}, Ldy;-><init>()V

    .line 70
    :cond_14
    invoke-static {p0, v1}, Lae;->b(Landroid/content/Context;Ldy;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2b

    .line 71
    monitor-exit v0

    return-void

    .line 64
    :cond_19
    if-eqz v1, :cond_29

    :try_start_1b
    iget-object v2, v1, Ldy;->a:Lcg;

    if-eqz v2, :cond_29

    .line 65
    iget-object v2, p1, Ldy;->a:Lcg;

    iget-object v1, v1, Ldy;->a:Lcg;

    invoke-virtual {v2, v1}, Lcg;->mergeWithOldNotification(Lcg;)Lcg;

    move-result-object v1

    iput-object v1, p1, Ldy;->a:Lcg;
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2b

    :cond_29
    move-object v1, p1

    goto :goto_d

    .line 60
    :catchall_2b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Ldy;
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 23
    const-class v0, Lae;

    monitor-enter v0

    :try_start_4
    const-string v1, "NOTIFICATION_PILE"

    const-class v2, Ldy;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_55

    move-object p0, v4

    :goto_4d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    check-cast p0, Ldy;
    :try_end_52
    .catchall {:try_start_4 .. :try_end_52} :catchall_92
    .catch Ljava/io/InvalidClassException; {:try_start_4 .. :try_end_52} :catch_61
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_52} :catch_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_52} :catch_ad
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_52} :catch_95

    move-object v1, p0

    .line 38
    :goto_53
    monitor-exit v0

    return-object v1

    :cond_55
    move-object p0, v6

    .line 23
    goto :goto_4d

    :cond_57
    :try_start_57
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_92
    .catch Ljava/io/InvalidClassException; {:try_start_57 .. :try_end_61} :catch_61
    .catch Ljava/lang/ClassNotFoundException; {:try_start_57 .. :try_end_61} :catch_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_61} :catch_ad
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_61} :catch_95

    .line 27
    :catch_61
    move-exception v1

    .line 29
    :try_start_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifications serialVersionUID mismatch, dropping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    :goto_78
    move-object v1, v6

    .line 38
    goto :goto_53

    .line 30
    :catch_7a
    move-exception v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifications ClassNotFound, dropping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_62 .. :try_end_91} :catchall_92

    goto :goto_78

    .line 23
    :catchall_92
    move-exception v1

    monitor-exit v0

    throw v1

    .line 34
    :catch_95
    move-exception v1

    .line 36
    :try_start_96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifications IOException, dropping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_96 .. :try_end_ac} :catchall_92

    goto :goto_78

    .line 32
    :catch_ad
    move-exception v1

    goto :goto_78
.end method

.method private static b(Landroid/content/Context;Ldy;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 75
    const-string v0, "NOTIFICATION_PILE"

    if-eqz p1, :cond_1a

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_8} :catch_1b

    move-result-object v0

    const/4 v1, 0x0

    :try_start_a
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_39

    if-eqz p1, :cond_14

    :try_start_11
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_68
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_6b

    :cond_14
    :try_start_14
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_62

    :cond_17
    :goto_17
    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_66

    .line 76
    :cond_1a
    :goto_1a
    return-void

    .line 75
    :catch_1b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open file \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\", should never happen"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :catch_39
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_3d
    :try_start_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to write object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Li;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_68

    if-eqz v2, :cond_17

    :try_start_55
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_17

    :catch_59
    move-exception v1

    goto :goto_17

    :catchall_5b
    move-exception v0

    :goto_5c
    if-eqz v1, :cond_61

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_64

    :cond_61
    :goto_61
    throw v0

    :catch_62
    move-exception v1

    goto :goto_17

    :catch_64
    move-exception v1

    goto :goto_61

    :catch_66
    move-exception v0

    goto :goto_1a

    :catchall_68
    move-exception v0

    move-object v1, v2

    goto :goto_5c

    :catch_6b
    move-exception v1

    goto :goto_3d
.end method
