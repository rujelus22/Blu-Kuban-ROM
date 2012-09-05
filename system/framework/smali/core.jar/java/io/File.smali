.class public Ljava/io/File;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final pathSeparator:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final pathSeparatorChar:C = '\u0000'

.field public static final separator:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final separatorChar:C = '\u0000'

.field private static final serialVersionUID:J = 0x42da4450e0de4ffL

.field private static final tempFileRandom:Ljava/util/Random;


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljava/io/File;->tempFileRandom:Ljava/util/Random;

    .line 107
    const-string v0, "file.separator"

    const-string v1, "/"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Ljava/io/File;->separatorChar:C

    .line 108
    const-string v0, "path.separator"

    const-string v1, ":"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Ljava/io/File;->pathSeparatorChar:C

    .line 109
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 110
    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 124
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 124
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {p1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "dirPath"
    .parameter "name"

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    if-nez p2, :cond_b

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 152
    :cond_b
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 153
    :cond_13
    invoke-static {p2}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 159
    :goto_19
    return-void

    .line 154
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 155
    invoke-static {p1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_19

    .line 157
    :cond_27
    invoke-static {p1, p2}, Ljava/io/File;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_19
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {p1}, Ljava/io/File;->checkURI(Ljava/net/URI;)V

    .line 178
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 179
    return-void
.end method

.method private static checkURI(Ljava/net/URI;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 219
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI is not absolute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_1f
    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI is not hierarchical: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_44
    const-string v1, "file"

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 225
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected file scheme in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_69
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, rawPath:Ljava/lang/String;
    if-eqz v0, :cond_75

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 229
    :cond_75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected non-empty path in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_8e
    invoke-virtual {p0}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ad

    .line 232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found authority in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_ad
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cc

    .line 235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found query in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_cc
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_eb

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found fragment in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_eb
    return-void
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 962
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 8
    .parameter "prefix"
    .parameter "suffix"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 991
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_f

    .line 992
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "prefix must be at least 3 characters"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 994
    :cond_f
    if-nez p1, :cond_13

    .line 995
    const-string p1, ".tmp"

    .line 997
    :cond_13
    move-object v2, p2

    .line 998
    .local v2, tmpDirFile:Ljava/io/File;
    if-nez v2, :cond_23

    .line 999
    const-string v3, "java.io.tmpdir"

    const-string v4, "."

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, tmpDir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #tmpDirFile:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1004
    .end local v1           #tmpDir:Ljava/lang/String;
    .restart local v2       #tmpDirFile:Ljava/io/File;
    :cond_23
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->tempFileRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1005
    .local v0, result:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1006
    return-object v0
.end method

.method private doAccess(I)Z
    .registers 5
    .parameter "mode"

    .prologue
    .line 283
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z
    :try_end_7
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 285
    :goto_8
    return v1

    .line 284
    :catch_9
    move-exception v0

    .line 285
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private doChmod(IZ)Z
    .registers 8
    .parameter "mask"
    .parameter "set"

    .prologue
    .line 713
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v3, v4}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v2

    .line 714
    .local v2, sb:Llibcore/io/StructStat;
    if-eqz p2, :cond_17

    iget v3, v2, Llibcore/io/StructStat;->st_mode:I

    or-int v1, v3, p1

    .line 715
    .local v1, newMode:I
    :goto_e
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    .line 716
    const/4 v3, 0x1

    .line 718
    .end local v1           #newMode:I
    .end local v2           #sb:Llibcore/io/StructStat;
    :goto_16
    return v3

    .line 714
    .restart local v2       #sb:Llibcore/io/StructStat;
    :cond_17
    iget v3, v2, Llibcore/io/StructStat;->st_mode:I
    :try_end_19
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_19} :catch_1e

    xor-int/lit8 v4, p1, -0x1

    and-int v1, v3, v4

    goto :goto_e

    .line 717
    .end local v2           #sb:Llibcore/io/StructStat;
    :catch_1e
    move-exception v0

    .line 718
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const/4 v3, 0x0

    goto :goto_16
.end method

.method private filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;
    .registers 7
    .parameter "filenames"

    .prologue
    .line 846
    if-nez p1, :cond_4

    .line 847
    const/4 v2, 0x0

    .line 854
    :cond_3
    return-object v2

    .line 849
    :cond_4
    array-length v0, p1

    .line 850
    .local v0, count:I
    new-array v2, v0, [Ljava/io/File;

    .line 851
    .local v2, result:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_3

    .line 852
    new-instance v3, Ljava/io/File;

    aget-object v4, p1, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 851
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private static fixSlashes(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "origPath"

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, lastWasSlash:Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 186
    .local v6, newPath:[C
    array-length v3, v6

    .line 187
    .local v3, length:I
    const/4 v4, 0x0

    .line 188
    .local v4, newLength:I
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v4

    .end local v4           #newLength:I
    .local v5, newLength:I
    :goto_9
    if-ge v1, v3, :cond_24

    .line 189
    aget-char v0, v6, v1

    .line 190
    .local v0, ch:C
    const/16 v7, 0x2f

    if-ne v0, v7, :cond_1e

    .line 191
    if-nez v2, :cond_36

    .line 192
    add-int/lit8 v4, v5, 0x1

    .end local v5           #newLength:I
    .restart local v4       #newLength:I
    sget-char v7, Ljava/io/File;->separatorChar:C

    aput-char v7, v6, v5

    .line 193
    const/4 v2, 0x1

    .line 188
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #newLength:I
    .restart local v5       #newLength:I
    goto :goto_9

    .line 196
    :cond_1e
    add-int/lit8 v4, v5, 0x1

    .end local v5           #newLength:I
    .restart local v4       #newLength:I
    aput-char v0, v6, v5

    .line 197
    const/4 v2, 0x0

    goto :goto_1a

    .line 201
    .end local v0           #ch:C
    .end local v4           #newLength:I
    .restart local v5       #newLength:I
    :cond_24
    if-eqz v2, :cond_34

    const/4 v7, 0x1

    if-le v5, v7, :cond_34

    .line 202
    add-int/lit8 v4, v5, -0x1

    .line 205
    .end local v5           #newLength:I
    .restart local v4       #newLength:I
    :goto_2b
    if-eq v4, v3, :cond_33

    new-instance p0, Ljava/lang/String;

    .end local p0
    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v4}, Ljava/lang/String;-><init>([CII)V

    :cond_33
    return-object p0

    .end local v4           #newLength:I
    .restart local v5       #newLength:I
    .restart local p0
    :cond_34
    move v4, v5

    .end local v5           #newLength:I
    .restart local v4       #newLength:I
    goto :goto_2b

    .end local v4           #newLength:I
    .restart local v0       #ch:C
    .restart local v5       #newLength:I
    :cond_36
    move v4, v5

    .end local v5           #newLength:I
    .restart local v4       #newLength:I
    goto :goto_1a
.end method

.method private getAbsoluteName()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x2f

    .line 1096
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 1097
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1098
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_31

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1102
    :cond_31
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v2, v4, :cond_3b

    .line 1103
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 1105
    :cond_3b
    return-object v1
.end method

.method private static join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 211
    .local v1, prefixLength:I
    if-lez v1, :cond_38

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_38

    move v0, v2

    .line 212
    .local v0, haveSlash:Z
    :goto_13
    if-nez v0, :cond_24

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_3a

    move v0, v2

    .line 215
    :cond_24
    :goto_24
    if-eqz v0, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_37
    return-object v2

    .end local v0           #haveSlash:Z
    :cond_38
    move v0, v3

    .line 211
    goto :goto_13

    .restart local v0       #haveSlash:Z
    :cond_3a
    move v0, v3

    .line 213
    goto :goto_24

    .line 215
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_37
.end method

.method private static native listImpl(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static listRoots()[Ljava/io/File;
    .registers 4

    .prologue
    .line 247
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1114
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1115
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v0

    .line 1116
    .local v0, inSeparator:C
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 1117
    return-void
.end method

.method private static native readlink(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native realpath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native setLastModifiedImpl(Ljava/lang/String;J)Z
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1110
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeChar(I)V

    .line 1111
    return-void
.end method


# virtual methods
.method public canExecute()Z
    .registers 2

    .prologue
    .line 259
    sget v0, Llibcore/io/OsConstants;->X_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public canRead()Z
    .registers 2

    .prologue
    .line 268
    sget v0, Llibcore/io/OsConstants;->R_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .registers 2

    .prologue
    .line 278
    sget v0, Llibcore/io/OsConstants;->W_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/io/File;)I
    .registers 4
    .parameter "another"

    .prologue
    .line 300
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 55
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public createNewFile()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    const/4 v1, 0x0

    .line 933
    .local v1, fd:Ljava/io/FileDescriptor;
    :try_start_1
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget v4, Llibcore/io/OsConstants;->O_RDWR:I

    sget v5, Llibcore/io/OsConstants;->O_CREAT:I

    or-int/2addr v4, v5

    sget v5, Llibcore/io/OsConstants;->O_EXCL:I

    or-int/2addr v4, v5

    const/16 v5, 0x180

    invoke-interface {v2, v3, v4, v5}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_29
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_12} :catch_18

    move-result-object v1

    .line 934
    const/4 v2, 0x1

    .line 942
    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    :goto_17
    return v2

    .line 935
    :catch_18
    move-exception v0

    .line 936
    .local v0, errnoException:Llibcore/io/ErrnoException;
    :try_start_19
    iget v2, v0, Llibcore/io/ErrnoException;->errno:I

    sget v3, Llibcore/io/OsConstants;->EEXIST:I
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_29

    if-ne v2, v3, :cond_24

    .line 938
    const/4 v2, 0x0

    .line 942
    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    goto :goto_17

    .line 940
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    .line 942
    .end local v0           #errnoException:Llibcore/io/ErrnoException;
    :catchall_29
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    throw v2
.end method

.method public delete()Z
    .registers 4

    .prologue
    .line 313
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_7
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    .line 314
    const/4 v1, 0x1

    .line 316
    :goto_8
    return v1

    .line 315
    :catch_9
    move-exception v0

    .line 316
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public deleteOnExit()V
    .registers 3

    .prologue
    .line 336
    invoke-static {}, Lorg/apache/harmony/luni/util/DeleteOnExit;->getInstance()Lorg/apache/harmony/luni/util/DeleteOnExit;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/util/DeleteOnExit;->addFile(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "obj"

    .prologue
    .line 350
    instance-of v0, p1, Ljava/io/File;

    if-nez v0, :cond_6

    .line 351
    const/4 v0, 0x0

    .line 353
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public exists()Z
    .registers 2

    .prologue
    .line 363
    sget v0, Llibcore/io/OsConstants;->F_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public getAbsoluteFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 387
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 375
    invoke-virtual {p0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 376
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    .line 379
    :cond_8
    :goto_8
    return-object v0

    .line 378
    :cond_9
    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, userDir:Ljava/lang/String;
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/io/File;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public getCanonicalFile()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/io/File;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeSpace()J
    .registers 7

    .prologue
    .line 1167
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Llibcore/io/Os;->statfs(Ljava/lang/String;)Llibcore/io/StructStatFs;

    move-result-object v1

    .line 1168
    .local v1, sb:Llibcore/io/StructStatFs;
    iget-wide v2, v1, Llibcore/io/StructStatFs;->f_bfree:J

    iget-wide v4, v1, Llibcore/io/StructStatFs;->f_bsize:J
    :try_end_c
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_c} :catch_e

    mul-long/2addr v2, v4

    .line 1170
    .end local v1           #sb:Llibcore/io/StructStatFs;
    :goto_d
    return-wide v2

    .line 1169
    :catch_e
    move-exception v0

    .line 1170
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const-wide/16 v2, 0x0

    goto :goto_d
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 443
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 444
    .local v0, separatorIndex:I
    if-gez v0, :cond_d

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method public getParent()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 455
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v0, 0x0

    .line 456
    .local v0, firstInPath:I
    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1e

    const/4 v3, 0x2

    if-le v2, v3, :cond_1e

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1e

    .line 457
    const/4 v0, 0x2

    .line 459
    :cond_1e
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 460
    .local v1, index:I
    if-ne v1, v5, :cond_2b

    if-lez v0, :cond_2b

    .line 461
    const/4 v1, 0x2

    .line 463
    :cond_2b
    if-eq v1, v5, :cond_39

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_3b

    .line 464
    :cond_39
    const/4 v3, 0x0

    .line 470
    :goto_3a
    return-object v3

    .line 466
    :cond_3b
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_58

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_58

    .line 468
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    .line 470
    :cond_58
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a
.end method

.method public getParentFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 481
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, tempParent:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 483
    const/4 v1, 0x0

    .line 485
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSpace()J
    .registers 7

    .prologue
    .line 1127
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Llibcore/io/Os;->statfs(Ljava/lang/String;)Llibcore/io/StructStatFs;

    move-result-object v1

    .line 1128
    .local v1, sb:Llibcore/io/StructStatFs;
    iget-wide v2, v1, Llibcore/io/StructStatFs;->f_blocks:J

    iget-wide v4, v1, Llibcore/io/StructStatFs;->f_bsize:J
    :try_end_c
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_c} :catch_e

    mul-long/2addr v2, v4

    .line 1130
    .end local v1           #sb:Llibcore/io/StructStatFs;
    :goto_d
    return-wide v2

    .line 1129
    :catch_e
    move-exception v0

    .line 1130
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const-wide/16 v2, 0x0

    goto :goto_d
.end method

.method public getUsableSpace()J
    .registers 7

    .prologue
    .line 1149
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Llibcore/io/Os;->statfs(Ljava/lang/String;)Llibcore/io/StructStatFs;

    move-result-object v1

    .line 1150
    .local v1, sb:Llibcore/io/StructStatFs;
    iget-wide v2, v1, Llibcore/io/StructStatFs;->f_bavail:J

    iget-wide v4, v1, Llibcore/io/StructStatFs;->f_bsize:J
    :try_end_c
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_c} :catch_e

    mul-long/2addr v2, v4

    .line 1152
    .end local v1           #sb:Llibcore/io/StructStatFs;
    :goto_d
    return-wide v2

    .line 1151
    :catch_e
    move-exception v0

    .line 1152
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const-wide/16 v2, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 506
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x12d591

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAbsolute()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 519
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public isDirectory()Z
    .registers 4

    .prologue
    .line 531
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v1

    iget v1, v1, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v1}, Llibcore/io/OsConstants;->S_ISDIR(I)Z
    :try_end_d
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 534
    :goto_e
    return v1

    .line 532
    :catch_f
    move-exception v0

    .line 534
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isFile()Z
    .registers 4

    .prologue
    .line 546
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v1

    iget v1, v1, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v1}, Llibcore/io/OsConstants;->S_ISREG(I)Z
    :try_end_d
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 549
    :goto_e
    return v1

    .line 547
    :catch_f
    move-exception v0

    .line 549
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isHidden()Z
    .registers 3

    .prologue
    .line 563
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 564
    const/4 v0, 0x0

    .line 566
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public lastModified()J
    .registers 6

    .prologue
    .line 578
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v1

    iget-wide v1, v1, Llibcore/io/StructStat;->st_mtime:J
    :try_end_a
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_a} :catch_e

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 581
    :goto_d
    return-wide v1

    .line 579
    :catch_e
    move-exception v0

    .line 581
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const-wide/16 v1, 0x0

    goto :goto_d
.end method

.method public length()J
    .registers 4

    .prologue
    .line 731
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v1

    iget-wide v1, v1, Llibcore/io/StructStat;->st_size:J
    :try_end_a
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_a} :catch_b

    .line 734
    :goto_a
    return-wide v1

    .line 732
    :catch_b
    move-exception v0

    .line 734
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const-wide/16 v1, 0x0

    goto :goto_a
.end method

.method public list()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/io/File;->listImpl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .registers 9
    .parameter "filter"

    .prologue
    .line 769
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, filenames:[Ljava/lang/String;
    if-eqz p1, :cond_8

    if-nez v2, :cond_a

    :cond_8
    move-object v6, v2

    .line 779
    :goto_9
    return-object v6

    .line 773
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 774
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v4, :cond_23

    aget-object v1, v0, v3

    .line 775
    .local v1, filename:Ljava/lang/String;
    invoke-interface {p1, p0, v1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 776
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 779
    .end local v1           #filename:Ljava/lang/String;
    :cond_23
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_9
.end method

.method public listFiles()[Ljava/io/File;
    .registers 2

    .prologue
    .line 791
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;->filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .registers 9
    .parameter "filter"

    .prologue
    .line 826
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 827
    .local v2, files:[Ljava/io/File;
    if-eqz p1, :cond_8

    if-nez v2, :cond_a

    :cond_8
    move-object v6, v2

    .line 836
    :goto_9
    return-object v6

    .line 830
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 831
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v4, :cond_23

    aget-object v1, v0, v3

    .line 832
    .local v1, file:Ljava/io/File;
    invoke-interface {p1, v1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 833
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 836
    .end local v1           #file:Ljava/io/File;
    :cond_23
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/File;

    goto :goto_9
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 3
    .parameter "filter"

    .prologue
    .line 809
    invoke-virtual {p0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;->filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public mkdir()Z
    .registers 5

    .prologue
    .line 871
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget v3, Llibcore/io/OsConstants;->S_IRWXU:I

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V
    :try_end_9
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_9} :catch_b

    .line 872
    const/4 v1, 0x1

    .line 874
    :goto_a
    return v1

    .line 873
    :catch_b
    move-exception v0

    .line 874
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public mkdirs()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 892
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 908
    :cond_8
    :goto_8
    return v2

    .line 897
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_11

    move v2, v1

    .line 898
    goto :goto_8

    .line 901
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, parentDir:Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 908
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_2a

    :goto_28
    move v2, v1

    goto :goto_8

    :cond_2a
    move v1, v2

    goto :goto_28
.end method

.method public renameTo(Ljava/io/File;)Z
    .registers 6
    .parameter "newPath"

    .prologue
    .line 1030
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    iget-object v3, p1, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_9} :catch_b

    .line 1031
    const/4 v1, 0x1

    .line 1033
    :goto_a
    return v1

    .line 1032
    :catch_b
    move-exception v0

    .line 1033
    .local v0, errnoException:Llibcore/io/ErrnoException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setExecutable(Z)Z
    .registers 3
    .parameter "executable"

    .prologue
    .line 648
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setExecutable(ZZ)Z
    .registers 5
    .parameter "executable"
    .parameter "ownerOnly"

    .prologue
    .line 639
    if-eqz p2, :cond_9

    sget v0, Llibcore/io/OsConstants;->S_IXUSR:I

    :goto_4
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    move-result v0

    return v0

    :cond_9
    sget v0, Llibcore/io/OsConstants;->S_IXUSR:I

    sget v1, Llibcore/io/OsConstants;->S_IXGRP:I

    or-int/2addr v0, v1

    sget v1, Llibcore/io/OsConstants;->S_IXOTH:I

    or-int/2addr v0, v1

    goto :goto_4
.end method

.method public setLastModified(J)Z
    .registers 5
    .parameter "time"

    .prologue
    .line 600
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "time < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_e
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Ljava/io/File;->setLastModifiedImpl(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setReadOnly()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setReadable(Z)Z
    .registers 3
    .parameter "readable"

    .prologue
    .line 679
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setReadable(ZZ)Z
    .registers 5
    .parameter "readable"
    .parameter "ownerOnly"

    .prologue
    .line 670
    if-eqz p2, :cond_9

    sget v0, Llibcore/io/OsConstants;->S_IRUSR:I

    :goto_4
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    move-result v0

    return v0

    :cond_9
    sget v0, Llibcore/io/OsConstants;->S_IRUSR:I

    sget v1, Llibcore/io/OsConstants;->S_IRGRP:I

    or-int/2addr v0, v1

    sget v1, Llibcore/io/OsConstants;->S_IROTH:I

    or-int/2addr v0, v1

    goto :goto_4
.end method

.method public setWritable(Z)Z
    .registers 3
    .parameter "writable"

    .prologue
    .line 708
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setWritable(ZZ)Z
    .registers 5
    .parameter "writable"
    .parameter "ownerOnly"

    .prologue
    .line 699
    if-eqz p2, :cond_9

    sget v0, Llibcore/io/OsConstants;->S_IWUSR:I

    :goto_4
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    move-result v0

    return v0

    :cond_9
    sget v0, Llibcore/io/OsConstants;->S_IWUSR:I

    sget v1, Llibcore/io/OsConstants;->S_IWGRP:I

    or-int/2addr v0, v1

    sget v1, Llibcore/io/OsConstants;->S_IWOTH:I

    or-int/2addr v0, v1

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1045
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1056
    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v3

    .line 1058
    .local v3, name:Ljava/lang/String;
    :try_start_5
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1060
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3           #name:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :goto_2a
    return-object v0

    .line 1061
    .restart local v3       #name:Ljava/lang/String;
    :cond_2b
    const-string v0, "//"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1062
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const-string v2, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 1065
    .end local v3           #name:Ljava/lang/String;
    :catch_3e
    move-exception v6

    .local v6, e:Ljava/net/URISyntaxException;
    move-object v0, v7

    .line 1067
    goto :goto_2a

    .line 1064
    .end local v6           #e:Ljava/net/URISyntaxException;
    .restart local v3       #name:Ljava/lang/String;
    :cond_41
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_4b} :catch_3e

    goto :goto_2a
.end method

.method public toURL()Ljava/net/URL;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 1084
    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v4

    .line 1085
    .local v4, name:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1087
    new-instance v0, Ljava/net/URL;

    const-string v1, "file"

    const-string v2, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #name:Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 1091
    :goto_2a
    return-object v0

    .line 1088
    .restart local v4       #name:Ljava/lang/String;
    :cond_2b
    const-string v0, "//"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1089
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    .line 1091
    :cond_4c
    new-instance v0, Ljava/net/URL;

    const-string v1, "file"

    const-string v2, ""

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_2a
.end method
