.class final LRa;
.super Ljava/lang/Object;
.source "FileInstanceHelperImpl.java"

# interfaces
.implements LQZ;


# static fields
.field private static final a:Ljava/util/Random;

.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final a:LZJ;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Llu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "[|\\\\?*<\":>+\\[\\]/\\p{Cntrl}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LRa;->a:Ljava/util/regex/Pattern;

    .line 44
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, LRa;->a:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Llu;LZJ;LanD;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llu;",
            "LZJ;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, LRa;->a:Llu;

    .line 50
    iput-object p2, p0, LRa;->a:LZJ;

    .line 51
    iput-object p3, p0, LRa;->a:LanD;

    .line 52
    return-void
.end method

.method private a()Ljava/io/File;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, LRa;->a:LZJ;

    invoke-interface {v0}, LZJ;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/io/File;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 91
    iget-object v0, p0, LRa;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 96
    if-eqz p2, :cond_2e

    invoke-direct {p0}, LRa;->a()Ljava/io/File;

    move-result-object v1

    .line 104
    :cond_f
    :goto_f
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, LRa;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    .line 111
    if-eqz p2, :cond_33

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_68

    .line 113
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error creating randomized directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_2e
    invoke-direct {p0}, LRa;->b()Ljava/io/File;

    move-result-object v1

    goto :goto_f

    .line 116
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INITIAL_PARENT_DIRNAME"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, LRa;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 119
    :try_start_4e
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error moving randomized directory to cache"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_5c

    .line 123
    :catchall_5c
    move-exception v0

    if-eqz v1, :cond_62

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_62
    throw v0

    .line 123
    :cond_63
    if-eqz v1, :cond_68

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 130
    :cond_68
    invoke-static {p1}, LRa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    if-eqz p2, :cond_77

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 151
    :cond_76
    :goto_76
    return-object v3

    .line 137
    :cond_77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INITIAL_FILENAME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, LRa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 141
    :try_start_99
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 142
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while moving cache to randomized directory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b8
    .catchall {:try_start_99 .. :try_end_b8} :catchall_b8

    .line 145
    :catchall_b8
    move-exception v0

    if-eqz v1, :cond_be

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_be
    throw v0

    .line 145
    :cond_bf
    if-eqz v1, :cond_76

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_76
.end method

.method private a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 155
    const-string v1, ""

    .line 156
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x2

    if-ge v0, v2, :cond_24

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LRa;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 159
    :cond_24
    return-object v1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/16 v2, 0xff

    .line 261
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "\\.+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 262
    :cond_1a
    const-string v0, "file"

    .line 277
    :cond_1c
    :goto_1c
    return-object v0

    .line 273
    :cond_1d
    sget-object v0, LRa;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1c

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method private a(Ljava/lang/String;ZLjavax/crypto/SecretKey;Ljava/lang/String;)LkS;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, LRa;->a:Llu;

    invoke-direct {p0, p4, p2}, LRa;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Llu;->a(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)LkS;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, LkS;->c()V

    .line 82
    return-object v0
.end method

.method private static b(Ljava/io/File;)J
    .registers 11
    .parameter

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 235
    const-wide/16 v1, 0x0

    .line 236
    array-length v4, v3

    const/4 v0, 0x0

    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    :goto_c
    if-ge v2, v4, :cond_24

    aget-object v5, v3, v2

    .line 237
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 238
    invoke-static {v5}, LRa;->b(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 236
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 240
    :cond_1e
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_1b

    .line 244
    :cond_24
    return-wide v0
.end method

.method private b()Ljava/io/File;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, LRa;->a:LZJ;

    invoke-interface {v0}, LZJ;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public a(LQS;)I
    .registers 4
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, LRa;->a:Llu;

    invoke-virtual {p1}, LQS;->a()LkS;

    move-result-object v1

    invoke-interface {v0, v1}, Llu;->a(LkS;)I

    move-result v0

    return v0
.end method

.method public a()J
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, LRa;->a:LZJ;

    invoke-interface {v0}, LZJ;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/io/File;)J
    .registers 4
    .parameter

    .prologue
    .line 249
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)LkS;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, LRa;->a(Ljava/lang/String;ZLjavax/crypto/SecretKey;Ljava/lang/String;)LkS;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/lang/String;)LkS;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, LRa;->a(Ljava/lang/String;ZLjavax/crypto/SecretKey;Ljava/lang/String;)LkS;

    move-result-object v0

    return-object v0
.end method

.method public a(LkR;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    invoke-virtual {p1}, LkR;->c()V

    .line 178
    return-void
.end method

.method public a(LkS;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    invoke-virtual {p1}, LkS;->c()V

    .line 173
    return-void
.end method

.method public a(Ljava/io/File;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 190
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 191
    if-nez v3, :cond_c

    .line 215
    :cond_b
    :goto_b
    return v0

    .line 197
    :cond_c
    :try_start_c
    invoke-direct {p0}, LRa;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_26

    move-result v2

    .line 205
    :goto_14
    :try_start_14
    invoke-direct {p0}, LRa;->b()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_29

    move-result v1

    .line 211
    :goto_1c
    if-nez v1, :cond_b

    if-nez v2, :cond_b

    .line 212
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_b

    .line 198
    :catch_26
    move-exception v2

    move v2, v1

    .line 200
    goto :goto_14

    .line 206
    :catch_29
    move-exception v4

    goto :goto_1c
.end method

.method public b()J
    .registers 3

    .prologue
    .line 230
    invoke-direct {p0}, LRa;->b()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, LRa;->b(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(LkS;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    invoke-virtual {p1}, LkS;->b()V

    .line 221
    return-void
.end method
