.class public Ljcifs/netbios/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Hashtable;

.field private static c:J

.field private static d:I

.field private static e:Ljcifs/util/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "jcifs.netbios.lmhosts"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljcifs/netbios/a;->b:Ljava/util/Hashtable;

    const-wide/16 v0, 0x1

    sput-wide v0, Ljcifs/netbios/a;->c:J

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/a;->e:Ljcifs/util/e;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljcifs/netbios/g;
    .registers 5

    const-class v1, Ljcifs/netbios/a;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljcifs/netbios/b;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Ljcifs/netbios/a;->a(Ljcifs/netbios/b;)Ljcifs/netbios/g;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_11

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Ljcifs/netbios/b;)Ljcifs/netbios/g;
    .registers 8

    const-class v2, Ljcifs/netbios/a;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_4
    sget-object v0, Ljcifs/netbios/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_6e

    new-instance v0, Ljava/io/File;

    sget-object v3, Ljcifs/netbios/a;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sget-wide v5, Ljcifs/netbios/a;->c:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_2b

    sput-wide v3, Ljcifs/netbios/a;->c:J

    sget-object v3, Ljcifs/netbios/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    const/4 v3, 0x0

    sput v3, Ljcifs/netbios/a;->d:I

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Ljcifs/netbios/a;->a(Ljava/io/Reader;)V

    :cond_2b
    sget-object v0, Ljcifs/netbios/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/g;
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_33} :catch_36
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_33} :catch_61

    :goto_33
    move-object v1, v0

    :cond_34
    :goto_34
    monitor-exit v2

    return-object v1

    :catch_36
    move-exception v0

    :try_start_37
    sget-object v3, Ljcifs/netbios/a;->e:Ljcifs/util/e;

    sget v3, Ljcifs/util/e;->a:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_34

    sget-object v3, Ljcifs/netbios/a;->e:Ljcifs/util/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lmhosts file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljcifs/netbios/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    sget-object v3, Ljcifs/netbios/a;->e:Ljcifs/util/e;

    invoke-virtual {v0, v3}, Ljava/io/FileNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_5d
    .catchall {:try_start_37 .. :try_end_5d} :catchall_5e

    goto :goto_34

    :catchall_5e
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_61
    move-exception v0

    :try_start_62
    sget-object v3, Ljcifs/netbios/a;->e:Ljcifs/util/e;

    sget v3, Ljcifs/util/e;->a:I

    if-lez v3, :cond_34

    sget-object v3, Ljcifs/netbios/a;->e:Ljcifs/util/e;

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_5e

    goto :goto_34

    :cond_6e
    move-object v0, v1

    goto :goto_33
.end method

.method static a(Ljava/io/Reader;)V
    .registers 14

    const/16 v12, 0x5c

    const/16 v10, 0x2e

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_b
    :goto_b
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14b

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_d7

    const-string v0, "#INCLUDE "

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v0, Ljcifs/netbios/a;->d:I

    if-lez v0, :cond_9e

    :try_start_54
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljcifs/smb/bc;

    invoke-direct {v2, v1}, Ljcifs/smb/bc;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Ljcifs/netbios/a;->a(Ljava/io/Reader;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_61} :catch_7e

    sget v0, Ljcifs/netbios/a;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ljcifs/netbios/a;->d:I

    :cond_67
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#END_ALTERNATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    goto :goto_b

    :catch_7e
    move-exception v0

    sget-object v2, Ljcifs/netbios/a;->e:Ljcifs/util/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lmhosts URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    sget-object v1, Ljcifs/netbios/a;->e:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_b

    :cond_9e
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljcifs/smb/bc;

    invoke-direct {v2, v1}, Ljcifs/smb/bc;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Ljcifs/netbios/a;->a(Ljava/io/Reader;)V

    goto/16 :goto_b

    :cond_ad
    const-string v0, "#BEGIN_ALTERNATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    sget v0, Ljcifs/netbios/a;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljcifs/netbios/a;->d:I

    goto/16 :goto_b

    :cond_bd
    const-string v0, "#END_ALTERNATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Ljcifs/netbios/a;->d:I

    if-lez v0, :cond_b

    sget v0, Ljcifs/netbios/a;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ljcifs/netbios/a;->d:I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "no lmhosts alternate includes loaded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d7
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    move v0, v10

    move v1, v3

    move v2, v3

    :goto_e8
    array-length v4, v8

    if-ge v1, v4, :cond_14c

    if-ne v0, v10, :cond_14c

    move v5, v1

    move v1, v3

    :goto_ef
    array-length v4, v8

    if-ge v5, v4, :cond_108

    aget-char v4, v8, v5

    const/16 v0, 0x30

    if-lt v4, v0, :cond_107

    const/16 v0, 0x39

    if-gt v4, v0, :cond_107

    mul-int/lit8 v0, v1, 0xa

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    move v0, v4

    goto :goto_ef

    :cond_107
    move v0, v4

    :cond_108
    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    add-int/lit8 v1, v5, 0x1

    goto :goto_e8

    :goto_10e
    array-length v1, v8

    if-ge v0, v1, :cond_11d

    aget-char v1, v8, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_11d

    add-int/lit8 v1, v0, 0x1

    move v0, v1

    goto :goto_10e

    :cond_11d
    move v4, v0

    :goto_11e
    array-length v1, v8

    if-ge v4, v1, :cond_12d

    aget-char v1, v8, v4

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_12d

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_11e

    :cond_12d
    new-instance v1, Ljcifs/netbios/b;

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-direct {v1, v0, v4, v5}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Ljcifs/netbios/g;

    sget-object v9, Ljcifs/netbios/g;->d:[B

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v7

    invoke-direct/range {v0 .. v9}, Ljcifs/netbios/g;-><init>(Ljcifs/netbios/b;IZIZZZZ[B)V

    sget-object v2, Ljcifs/netbios/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_14b
    return-void

    :cond_14c
    move v0, v1

    goto :goto_10e
.end method
