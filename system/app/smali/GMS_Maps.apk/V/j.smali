.class public LV/j;
.super LU/c;

# interfaces
.implements LU/m;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, LU/c;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LV/j;->b:Ljava/util/Set;

    iput-object p1, p0, LV/j;->a:Landroid/content/Context;

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATA_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([BLjava/lang/String;)I
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, LV/j;->b([BLjava/lang/String;)I
    :try_end_3
    .catch LU/n; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, LU/n;->a()I

    move-result v0

    goto :goto_4
.end method

.method public b([BLjava/lang/String;)I
    .registers 7

    const/4 v3, -0x1

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :try_start_4
    new-array p1, v0, [B

    :cond_6
    iget-object v0, p0, LV/j;->a:Landroid/content/Context;

    invoke-static {p2}, LV/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_1c} :catch_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_2c

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    return v0

    :catch_21
    move-exception v0

    new-instance v1, LU/n;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, LU/n;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_2c
    move-exception v0

    new-instance v1, LU/n;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, LU/n;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public b(Ljava/lang/String;)[B
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1}, LV/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, LV/j;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_a} :catch_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_2a

    move-result-object v2

    :try_start_b
    iget-object v3, p0, LV/j;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v0, v3, [B

    invoke-static {p1, v2, v3, v0}, LV/k;->a(Ljava/lang/String;Ljava/io/InputStream;I[B)V
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_43
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1b} :catch_47
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1b} :catch_45

    if-eqz v2, :cond_20

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_3b

    :cond_20
    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    move-object v0, v1

    :goto_23
    if-eqz v0, :cond_28

    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_3d

    :cond_28
    :goto_28
    move-object v0, v1

    goto :goto_20

    :catch_2a
    move-exception v0

    move-object v2, v1

    :goto_2c
    if-eqz v2, :cond_31

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_3f

    :cond_31
    :goto_31
    move-object v0, v1

    goto :goto_20

    :catchall_33
    move-exception v0

    move-object v2, v1

    :goto_35
    if-eqz v2, :cond_3a

    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_41

    :cond_3a
    :goto_3a
    throw v0

    :catch_3b
    move-exception v1

    goto :goto_20

    :catch_3d
    move-exception v0

    goto :goto_28

    :catch_3f
    move-exception v0

    goto :goto_31

    :catch_41
    move-exception v1

    goto :goto_3a

    :catchall_43
    move-exception v0

    goto :goto_35

    :catch_45
    move-exception v0

    goto :goto_2c

    :catch_47
    move-exception v0

    move-object v0, v2

    goto :goto_23
.end method
