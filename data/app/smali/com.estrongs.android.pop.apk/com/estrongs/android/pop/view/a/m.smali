.class public final Lcom/estrongs/android/pop/view/a/m;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x5d

    sput v0, Lcom/estrongs/android/pop/view/a/m;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;J)J
    .registers 6

    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-wide p1

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_24

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_24
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_29

    move-result-wide p1

    goto :goto_a

    :catch_29
    move-exception v0

    goto :goto_a
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_18

    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    goto :goto_17
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;I)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    int-to-long v7, p2

    cmp-long v2, v5, v7

    if-nez v2, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1b
    :try_start_1b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_49

    const/16 v3, 0x2000

    :try_start_22
    new-array v4, v3, [B

    move v3, v1

    :goto_25
    const/4 v5, 0x0

    const/16 v6, 0x2000

    invoke-virtual {p0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_43

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_34} :catch_69

    if-eq v3, p2, :cond_17

    const/4 v2, -0x1

    if-eq p2, v2, :cond_17

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move v0, v1

    goto :goto_17

    :cond_43
    const/4 v6, 0x0

    :try_start_44
    invoke-virtual {v2, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_69

    add-int/2addr v3, v5

    goto :goto_25

    :catch_49
    move-exception v0

    move-object v2, v3

    :goto_4b
    if-eqz v2, :cond_50

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_67

    :cond_50
    :goto_50
    :try_start_50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5d

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move v0, v1

    goto :goto_17

    :catchall_5d
    move-exception v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0

    :catch_67
    move-exception v2

    goto :goto_50

    :catch_69
    move-exception v0

    goto :goto_4b
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .registers 2

    if-eqz p0, :cond_12

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Object;Z)Z
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return p1

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    move-result p1

    goto :goto_2

    :catch_c
    move-exception v0

    goto :goto_2
.end method
