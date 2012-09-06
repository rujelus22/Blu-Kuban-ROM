.class public final Ldbxyzptlk/h/f;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/io/File;

.field private static c:Ljava/io/FileOutputStream;

.field private static d:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Ldbxyzptlk/h/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/h/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 275
    sget-object v2, Ldbxyzptlk/h/f;->d:Ljava/io/Writer;

    if-nez v2, :cond_a

    .line 276
    const/4 v0, 0x0

    .line 282
    :goto_9
    return v0

    .line 278
    :cond_a
    sget-object v2, Ldbxyzptlk/h/f;->d:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_40} :catch_42

    .line 282
    :goto_40
    const/4 v0, 0x1

    goto :goto_9

    .line 279
    :catch_42
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ldbxyzptlk/h/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ldbxyzptlk/h/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-static {p2}, Ldbxyzptlk/h/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ldbxyzptlk/h/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Ldbxyzptlk/h/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 223
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Ldbxyzptlk/h/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 255
    if-nez p0, :cond_5

    .line 256
    const-string v0, ""

    .line 261
    :goto_4
    return-object v0

    .line 258
    :cond_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 259
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 260
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 261
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(I)Ljava/util/List;
    .registers 6
    .parameter

    .prologue
    .line 294
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 295
    const/4 v0, 0x0

    .line 297
    const/4 v2, 0x0

    .line 299
    :try_start_7
    invoke-static {}, Ldbxyzptlk/h/f;->b()Ljava/io/Reader;

    move-result-object v4

    .line 300
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_37

    .line 302
    :cond_10
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 303
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_10

    .line 306
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v2, v0, 0x1

    if-le v0, p0, :cond_64

    .line 308
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_60
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_26} :catch_62

    move v0, v2

    goto :goto_10

    .line 314
    :cond_28
    if-eqz v1, :cond_2d

    .line 316
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 323
    :cond_2d
    :goto_2d
    return-object v3

    .line 318
    :catch_2e
    move-exception v0

    .line 319
    sget-object v1, Ldbxyzptlk/h/f;->a:Ljava/lang/String;

    const-string v2, "error closing stream"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 311
    :catch_37
    move-exception v0

    move-object v1, v2

    .line 312
    :goto_39
    :try_start_39
    sget-object v2, Ldbxyzptlk/h/f;->a:Ljava/lang/String;

    const-string v4, "error reading log"

    invoke-static {v2, v4, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_60

    .line 314
    if-eqz v1, :cond_2d

    .line 316
    :try_start_42
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_2d

    .line 318
    :catch_46
    move-exception v0

    .line 319
    sget-object v1, Ldbxyzptlk/h/f;->a:Ljava/lang/String;

    const-string v2, "error closing stream"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 314
    :catchall_4f
    move-exception v0

    move-object v1, v2

    :goto_51
    if-eqz v1, :cond_56

    .line 316
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    .line 320
    :cond_56
    :goto_56
    throw v0

    .line 318
    :catch_57
    move-exception v1

    .line 319
    sget-object v2, Ldbxyzptlk/h/f;->a:Ljava/lang/String;

    const-string v3, "error closing stream"

    invoke-static {v2, v3, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    .line 314
    :catchall_60
    move-exception v0

    goto :goto_51

    .line 311
    :catch_62
    move-exception v0

    goto :goto_39

    :cond_64
    move v0, v2

    goto :goto_10
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 79
    sget-object v0, Ldbxyzptlk/h/f;->b:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 80
    invoke-static {}, Ldbxyzptlk/h/f;->c()V

    .line 82
    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 63
    sget-object v0, Ldbxyzptlk/h/f;->d:Ljava/io/Writer;

    if-nez v0, :cond_10

    .line 64
    new-instance v0, Ljava/io/File;

    const-string v1, "log.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ldbxyzptlk/h/f;->b:Ljava/io/File;

    .line 65
    invoke-static {}, Ldbxyzptlk/h/f;->c()V

    .line 67
    :cond_10
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Ldbxyzptlk/h/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static b()Ljava/io/Reader;
    .registers 2

    .prologue
    .line 86
    :try_start_0
    sget-object v0, Ldbxyzptlk/h/f;->d:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 87
    sget-object v0, Ldbxyzptlk/h/f;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 88
    sget-object v0, Ldbxyzptlk/h/f;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 89
    new-instance v0, Ljava/io/FileReader;

    sget-object v1, Ldbxyzptlk/h/f;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 92
    :goto_1a
    return-object v0

    .line 90
    :catch_1b
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 92
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 155
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Ldbxyzptlk/h/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Ldbxyzptlk/h/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private static c()V
    .registers 3

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v1, Ldbxyzptlk/h/f;->b:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v0, Ldbxyzptlk/h/f;->c:Ljava/io/FileOutputStream;

    .line 72
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ldbxyzptlk/h/f;->c:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Ldbxyzptlk/h/f;->d:Ljava/io/Writer;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    .line 76
    :goto_13
    return-void

    .line 73
    :catch_14
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Ldbxyzptlk/h/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 234
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Ldbxyzptlk/h/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
