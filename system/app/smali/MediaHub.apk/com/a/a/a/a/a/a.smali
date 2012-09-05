.class public final Lcom/a/a/a/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/a/a/a/a/a/b;
    .registers 9

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    :goto_e
    return-object v0

    :cond_f
    new-instance v1, Lcom/a/a/a/a/a/b;

    invoke-direct {v1}, Lcom/a/a/a/a/a/b;-><init>()V

    iput-object p1, v1, Lcom/a/a/a/a/a/b;->a:Ljava/lang/String;

    :try_start_16
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_6c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_42

    :try_start_1b
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_71
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_77

    :try_start_20
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/a/a/a/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/a/a/a/a/a/b;->c:J
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_75
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2c} :catch_7d

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_34

    :goto_2f
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3b

    :goto_32
    move-object v0, v1

    goto :goto_e

    :catch_34
    move-exception v0

    const-string v2, "Failed to close ObjectInputStream"

    invoke-static {v2, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    :catch_3b
    move-exception v0

    const-string v2, "Failed to close FileInputStream"

    invoke-static {v2, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :catch_42
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_47
    :try_start_47
    const-string v3, "Failed to load File"

    invoke-static {v3, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_53
    if-eqz v2, :cond_58

    :try_start_55
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5e

    :cond_58
    :goto_58
    if-eqz v3, :cond_5d

    :try_start_5a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_65

    :cond_5d
    :goto_5d
    throw v0

    :catch_5e
    move-exception v1

    const-string v2, "Failed to close ObjectInputStream"

    invoke-static {v2, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    :catch_65
    move-exception v1

    const-string v2, "Failed to close FileInputStream"

    invoke-static {v2, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    :catchall_6c
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_53

    :catchall_71
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_53

    :catchall_75
    move-exception v0

    goto :goto_53

    :catch_77
    move-exception v1

    move-object v2, v3

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_47

    :catch_7d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_47
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J[B)V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    :goto_f
    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "Cache Directory not exist or failed to make dir."

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->c(Ljava/lang/String;)I

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const/4 v0, 0x1

    goto :goto_f

    :cond_1d
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_51

    :try_start_30
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_7e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_56

    :try_start_35
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_82
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_87

    :try_start_3a
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    invoke-virtual {v1, p5}, Ljava/io/ObjectOutputStream;->write([B)V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_85
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_43} :catch_8b

    :try_start_43
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_77

    :goto_46
    :try_start_46
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_1a

    :catch_4a
    move-exception v0

    const-string v1, "Failed to close FileOutputStream"

    invoke-static {v1, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0

    :catch_56
    move-exception v0

    move-object v1, v2

    :goto_58
    :try_start_58
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    move-object v3, v2

    :goto_5e
    if-eqz v1, :cond_63

    :try_start_60
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_69

    :cond_63
    :goto_63
    if-eqz v3, :cond_68

    :try_start_65
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_70

    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v1

    const-string v2, "Failed to close ObjectOutputStream"

    invoke-static {v2, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    :catch_70
    move-exception v1

    const-string v2, "Failed to close FileOutputStream"

    invoke-static {v2, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    :catch_77
    move-exception v0

    const-string v1, "Failed to close ObjectOutputStream"

    invoke-static {v1, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    :catchall_7e
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_5e

    :catchall_82
    move-exception v0

    move-object v1, v2

    goto :goto_5e

    :catchall_85
    move-exception v0

    goto :goto_5e

    :catch_87
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_58

    :catch_8b
    move-exception v0

    move-object v2, v3

    goto :goto_58
.end method

.method public final a()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_e
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-lt v0, v2, :cond_b

    return-void

    :cond_b
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkFile() cacheDir = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public final c(Ljava/lang/String;)[B
    .registers 9

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_85
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_97

    :try_start_14
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_8c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_9e

    :try_start_19
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x400

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_92
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_a4

    :try_start_20
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readLong()J

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_2a
    invoke-virtual {v2, v0}, Ljava/io/ObjectInputStream;->read([B)I

    move-result v4

    if-gez v4, :cond_45

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_51
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_33} :catch_4a

    move-result-object v0

    :try_start_34
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_62

    :goto_37
    :try_start_37
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_69

    :goto_3a
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_e

    :catch_3e
    move-exception v1

    const-string v2, "Failed to close FileInputStream"

    invoke-static {v2, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :cond_45
    const/4 v5, 0x0

    :try_start_46
    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_51
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_2a

    :catch_4a
    move-exception v0

    :goto_4b
    :try_start_4b
    const-string v4, "Failed to load File"

    invoke-static {v4, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    :goto_52
    if-eqz v1, :cond_57

    :try_start_54
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_70

    :cond_57
    :goto_57
    if-eqz v2, :cond_5c

    :try_start_59
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_77

    :cond_5c
    :goto_5c
    if-eqz v3, :cond_61

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_7e

    :cond_61
    :goto_61
    throw v0

    :catch_62
    move-exception v1

    const-string v4, "Failed to close ByteArrayOutputStream"

    invoke-static {v4, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    :catch_69
    move-exception v1

    const-string v2, "Failed to close ObjectInputStream"

    invoke-static {v2, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    :catch_70
    move-exception v1

    const-string v4, "Failed to close ByteArrayOutputStream"

    invoke-static {v4, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    :catch_77
    move-exception v1

    const-string v2, "Failed to close ObjectInputStream"

    invoke-static {v2, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    :catch_7e
    move-exception v1

    const-string v2, "Failed to close FileInputStream"

    invoke-static {v2, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    :catchall_85
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_52

    :catchall_8c
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_52

    :catchall_92
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_52

    :catch_97
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4b

    :catch_9e
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4b

    :catch_a4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4b
.end method

.method public final d(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/a/a/a/a;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
