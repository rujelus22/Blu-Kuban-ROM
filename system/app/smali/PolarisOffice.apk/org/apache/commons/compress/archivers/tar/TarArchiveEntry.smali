.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
.super Ljava/lang/Object;
.source "TarArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/tar/TarConstants;
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# static fields
.field public static final DEFAULT_DIR_MODE:I = 0x41ed

.field public static final DEFAULT_FILE_MODE:I = 0x81a4

.field public static final MAX_NAMELEN:I = 0x1f

.field public static final MILLIS_PER_SECOND:I = 0x3e8


# instance fields
.field private devMajor:I

.field private devMinor:I

.field private file:Ljava/io/File;

.field private groupId:I

.field private groupName:Ljava/lang/String;

.field private linkFlag:B

.field private linkName:Ljava/lang/String;

.field private magic:Ljava/lang/String;

.field private modTime:J

.field private mode:I

.field private name:Ljava/lang/String;

.field private size:J

.field private userId:I

.field private userName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 6

    .prologue
    const/16 v4, 0x1f

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const-string v1, "ustar\u0000"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 146
    const-string v1, "00"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 147
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 148
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 150
    const-string v1, "user.name"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, user:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_28

    .line 153
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_28
    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:I

    .line 157
    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:I

    .line 158
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 159
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .parameter "file"

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 9
    .parameter "file"
    .parameter "fileName"

    .prologue
    const/4 v5, 0x0

    .line 240
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>()V

    .line 242
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    .line 244
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 247
    const/16 v1, 0x41ed

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 248
    const/16 v1, 0x35

    iput-byte v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 250
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 251
    .local v0, nameLength:I
    if-eqz v0, :cond_28

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_4f

    .line 252
    :cond_28
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 256
    :goto_3d
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 264
    .end local v0           #nameLength:I
    :goto_41
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 265
    iput v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 266
    iput v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 267
    return-void

    .line 254
    .restart local v0       #nameLength:I
    :cond_4f
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    goto :goto_3d

    .line 258
    .end local v0           #nameLength:I
    :cond_52
    const v1, 0x81a4

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 259
    const/16 v1, 0x30

    iput-byte v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 260
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 261
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    goto :goto_41
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;Z)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .registers 4
    .parameter "name"
    .parameter "linkFlag"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 214
    iput-byte p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 215
    const/16 v0, 0x4c

    if-ne p2, v0, :cond_11

    .line 216
    const-string v0, "ustar "

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 217
    const-string v0, " \u0000"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 219
    :cond_11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 9
    .parameter "name"
    .parameter "preserveLeadingSlashes"

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>()V

    .line 186
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 187
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 189
    .local v0, isDir:Z
    iput v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 190
    iput v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 191
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 192
    if-eqz v0, :cond_47

    const/16 v1, 0x41ed

    :goto_18
    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 193
    if-eqz v0, :cond_4b

    const/16 v1, 0x35

    :goto_1e
    iput-byte v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 194
    iput v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:I

    .line 195
    iput v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:I

    .line 196
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 197
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 198
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 199
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 200
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 201
    iput v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 202
    iput v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 204
    return-void

    .line 192
    :cond_47
    const v1, 0x81a4

    goto :goto_18

    .line 193
    :cond_4b
    const/16 v1, 0x30

    goto :goto_1e
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "headerBuf"

    .prologue
    .line 276
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>()V

    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([B)V

    .line 278
    return-void
.end method

.method private static normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12
    .parameter "fileName"
    .parameter "preserveLeadingSlashes"

    .prologue
    const/16 v9, 0x3a

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 708
    const-string v4, "os.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, osname:Ljava/lang/String;
    if-eqz v3, :cond_40

    .line 715
    const-string v4, "windows"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 716
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_40

    .line 717
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 718
    .local v0, ch1:C
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 720
    .local v1, ch2:C
    if-ne v1, v9, :cond_40

    const/16 v4, 0x61

    if-lt v0, v4, :cond_34

    const/16 v4, 0x7a

    if-le v0, v4, :cond_3c

    :cond_34
    const/16 v4, 0x41

    if-lt v0, v4, :cond_40

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_40

    .line 723
    :cond_3c
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 734
    .end local v0           #ch1:C
    .end local v1           #ch2:C
    :cond_40
    :goto_40
    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x2f

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 739
    :goto_48
    if-nez p1, :cond_6c

    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 740
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_48

    .line 726
    :cond_57
    const-string v4, "netware"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v6, :cond_40

    .line 727
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 728
    .local v2, colon:I
    if-eq v2, v6, :cond_40

    .line 729
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_40

    .line 742
    .end local v2           #colon:I
    :cond_6c
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "it"

    .prologue
    .line 299
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_e

    .line 300
    :cond_c
    const/4 v0, 0x0

    .line 302
    .end local p1
    :goto_d
    return v0

    .restart local p1
    :cond_e
    check-cast p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->equals(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z

    move-result v0

    goto :goto_d
.end method

.method public equals(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z
    .registers 4
    .parameter "it"

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDirectoryEntries()[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .registers 8

    .prologue
    .line 603
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_10

    .line 604
    :cond_c
    const/4 v3, 0x0

    new-array v2, v3, [Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 614
    :cond_f
    return-object v2

    .line 607
    :cond_10
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, list:[Ljava/lang/String;
    array-length v3, v1

    new-array v2, v3, [Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 610
    .local v2, result:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    array-length v3, v1

    if-ge v0, v3, :cond_f

    .line 611
    new-instance v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    aget-object v6, v1, v0

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/io/File;)V

    aput-object v3, v2, v0

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 397
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 497
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLinkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModTime()Ljava/util/Date;
    .registers 6

    .prologue
    .line 492
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 515
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 524
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    return-wide v0
.end method

.method public getUserId()I
    .registers 2

    .prologue
    .line 379
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDescendent(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z
    .registers 4
    .parameter "desc"

    .prologue
    .line 323
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 581
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    if-eqz v1, :cond_c

    .line 582
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 593
    :cond_b
    :goto_b
    return v0

    .line 585
    :cond_c
    iget-byte v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v2, 0x35

    if-eq v1, v2, :cond_b

    .line 589
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 593
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isGNULongNameEntry()Z
    .registers 3

    .prologue
    .line 548
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "././@LongLink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isGlobalPaxHeader()Z
    .registers 3

    .prologue
    .line 572
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x67

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPaxHeader()Z
    .registers 3

    .prologue
    .line 560
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x78

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x58

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public parseTarHeader([B)V
    .registers 11
    .parameter "header"

    .prologue
    const/16 v8, 0x64

    const/16 v7, 0x20

    const/16 v6, 0xc

    const/16 v5, 0x8

    .line 662
    const/4 v0, 0x0

    .line 664
    .local v0, offset:I
    invoke-static {p1, v0, v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 665
    add-int/lit8 v0, v0, 0x64

    .line 666
    invoke-static {p1, v0, v5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 667
    add-int/lit8 v0, v0, 0x8

    .line 668
    invoke-static {p1, v0, v5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:I

    .line 669
    add-int/lit8 v0, v0, 0x8

    .line 670
    invoke-static {p1, v0, v5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:I

    .line 671
    add-int/lit8 v0, v0, 0x8

    .line 672
    invoke-static {p1, v0, v6}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 673
    add-int/lit8 v0, v0, 0xc

    .line 674
    invoke-static {p1, v0, v6}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 675
    add-int/lit8 v0, v0, 0xc

    .line 676
    add-int/lit8 v0, v0, 0x8

    .line 677
    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .local v1, offset:I
    aget-byte v3, p1, v0

    iput-byte v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 678
    invoke-static {p1, v1, v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 679
    add-int/lit8 v0, v1, 0x64

    .line 680
    .end local v1           #offset:I
    .restart local v0       #offset:I
    const/4 v3, 0x6

    invoke-static {p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 681
    add-int/lit8 v0, v0, 0x6

    .line 682
    const/4 v3, 0x2

    invoke-static {p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 683
    add-int/lit8 v0, v0, 0x2

    .line 684
    invoke-static {p1, v0, v7}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 685
    add-int/lit8 v0, v0, 0x20

    .line 686
    invoke-static {p1, v0, v7}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 687
    add-int/lit8 v0, v0, 0x20

    .line 688
    invoke-static {p1, v0, v5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 689
    add-int/lit8 v0, v0, 0x8

    .line 690
    invoke-static {p1, v0, v5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 691
    add-int/lit8 v0, v0, 0x8

    .line 692
    const/16 v3, 0x9b

    invoke-static {p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, prefix:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ad

    .line 695
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 697
    :cond_ad
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_ce

    .line 698
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 700
    :cond_ce
    return-void
.end method

.method public setGroupId(I)V
    .registers 2
    .parameter "groupId"

    .prologue
    .line 406
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:I

    .line 407
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .registers 2
    .parameter "groupName"

    .prologue
    .line 442
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setIds(II)V
    .registers 3
    .parameter "userId"
    .parameter "groupId"

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(I)V

    .line 453
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(I)V

    .line 454
    return-void
.end method

.method public setLinkName(Ljava/lang/String;)V
    .registers 2
    .parameter "link"

    .prologue
    .line 370
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public setModTime(J)V
    .registers 5
    .parameter "time"

    .prologue
    .line 474
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 475
    return-void
.end method

.method public setModTime(Ljava/util/Date;)V
    .registers 6
    .parameter "time"

    .prologue
    .line 483
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 484
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 350
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 351
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setNames(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "userName"
    .parameter "groupName"

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserName(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupName(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public setSize(J)V
    .registers 6
    .parameter "size"

    .prologue
    .line 535
    const-wide v0, 0x1ffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_f

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_28

    .line 536
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Size is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_28
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 539
    return-void
.end method

.method public setUserId(I)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 388
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:I

    .line 389
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .parameter "userName"

    .prologue
    .line 424
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public writeEntryHeader([B)V
    .registers 14
    .parameter "outbuf"

    .prologue
    const/16 v11, 0x64

    const/16 v10, 0xc

    const/16 v9, 0x20

    const/16 v8, 0x8

    .line 623
    const/4 v4, 0x0

    .line 625
    .local v4, offset:I
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-static {v6, p1, v4, v11}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v4

    .line 626
    iget v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    int-to-long v6, v6

    invoke-static {v6, v7, p1, v4, v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatOctalBytes(J[BII)I

    move-result v4

    .line 627
    iget v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:I

    int-to-long v6, v6

    invoke-static {v6, v7, p1, v4, v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatOctalBytes(J[BII)I

    move-result v4

    .line 628
    iget v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:I

    int-to-long v6, v6

    invoke-static {v6, v7, p1, v4, v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatOctalBytes(J[BII)I

    move-result v4

    .line 629
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    invoke-static {v6, v7, p1, v4, v10}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result v4

    .line 630
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    invoke-static {v6, v7, p1, v4, v10}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result v4

    .line 632
    move v3, v4

    .line 634
    .local v3, csOffset:I
    const/4 v0, 0x0

    .local v0, c:I
    move v5, v4

    .end local v4           #offset:I
    .local v5, offset:I
    :goto_33
    if-ge v0, v8, :cond_3d

    .line 635
    add-int/lit8 v4, v5, 0x1

    .end local v5           #offset:I
    .restart local v4       #offset:I
    aput-byte v9, p1, v5

    .line 634
    add-int/lit8 v0, v0, 0x1

    move v5, v4

    .end local v4           #offset:I
    .restart local v5       #offset:I
    goto :goto_33

    .line 638
    :cond_3d
    add-int/lit8 v4, v5, 0x1

    .end local v5           #offset:I
    .restart local v4       #offset:I
    iget-byte v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    aput-byte v6, p1, v5

    .line 639
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    invoke-static {v6, p1, v4, v11}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v4

    .line 640
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    const/4 v7, 0x6

    invoke-static {v6, p1, v4, v7}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v4

    .line 641
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v6, p1, v4, v7}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v4

    .line 642
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    invoke-static {v6, p1, v4, v9}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v4

    .line 643
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    invoke-static {v6, p1, v4, v9}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v4

    .line 644
    iget v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    int-to-long v6, v6

    invoke-static {v6, v7, p1, v4, v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatOctalBytes(J[BII)I

    move-result v4

    .line 645
    iget v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    int-to-long v6, v6

    invoke-static {v6, v7, p1, v4, v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatOctalBytes(J[BII)I

    move-result v4

    .line 647
    :goto_71
    array-length v6, p1

    if-ge v4, v6, :cond_7b

    .line 648
    add-int/lit8 v5, v4, 0x1

    .end local v4           #offset:I
    .restart local v5       #offset:I
    const/4 v6, 0x0

    aput-byte v6, p1, v4

    move v4, v5

    .end local v5           #offset:I
    .restart local v4       #offset:I
    goto :goto_71

    .line 651
    :cond_7b
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->computeCheckSum([B)J

    move-result-wide v1

    .line 653
    .local v1, chk:J
    invoke-static {v1, v2, p1, v3, v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatCheckSumOctalBytes(J[BII)I

    .line 654
    return-void
.end method
