.class public final Lcom/google/android/youtube/googlemobile/common/io/a/i;
.super Lcom/google/android/youtube/googlemobile/common/io/c;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/io/a/i;->a:Landroid/content/Context;

    return-void
.end method

.method private b([BLjava/lang/String;)I
    .registers 7

    const/4 v3, -0x1

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :try_start_4
    new-array p1, v0, [B

    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/i;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/youtube/googlemobile/common/io/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

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

    new-instance v1, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_2c
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DATA_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a([BLjava/lang/String;)I
    .registers 4

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/a/i;->b([BLjava/lang/String;)I
    :try_end_3
    .catch Lcom/google/android/youtube/googlemobile/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v0

    goto :goto_4
.end method

.method public final b(Ljava/lang/String;)[B
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/youtube/googlemobile/common/io/a/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_18} :catch_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_1c

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    move-object v0, v1

    goto :goto_18

    :catch_1c
    move-exception v0

    move-object v0, v1

    goto :goto_18
.end method
