.class public Ljcifs/util/MimeMap;
.super Ljava/lang/Object;
.source "MimeMap.java"


# static fields
.field private static final IN_SIZE:I = 0x1b58

.field private static final ST_COMM:I = 0x2

.field private static final ST_EXT:I = 0x5

.field private static final ST_GAP:I = 0x4

.field private static final ST_START:I = 0x1

.field private static final ST_TYPE:I = 0x3


# instance fields
.field private in:[B

.field private inLen:I


# direct methods
.method public constructor <init>()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1b58

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-array v2, v5, [B

    iput-object v2, p0, Ljcifs/util/MimeMap;->in:[B

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "jcifs/util/mime.map"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 43
    .local v0, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    iput v2, p0, Ljcifs/util/MimeMap;->inLen:I

    .line 44
    :goto_1a
    iget-object v2, p0, Ljcifs/util/MimeMap;->in:[B

    iget v3, p0, Ljcifs/util/MimeMap;->inLen:I

    iget v4, p0, Ljcifs/util/MimeMap;->inLen:I

    rsub-int v4, v4, 0x1b58

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, n:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3b

    .line 47
    iget v2, p0, Ljcifs/util/MimeMap;->inLen:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_33

    iget v2, p0, Ljcifs/util/MimeMap;->inLen:I

    if-ne v2, v5, :cond_41

    .line 48
    :cond_33
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error reading jcifs/util/mime.map resource"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_3b
    iget v2, p0, Ljcifs/util/MimeMap;->inLen:I

    add-int/2addr v2, v1

    iput v2, p0, Ljcifs/util/MimeMap;->inLen:I

    goto :goto_1a

    .line 50
    :cond_41
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 51
    return-void
.end method


# virtual methods
.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "extension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const-string v0, "application/octet-stream"

    invoke-virtual {p0, p1, v0}, Ljcifs/util/MimeMap;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "extension"
    .parameter "def"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/16 v11, 0x80

    new-array v8, v11, [B

    .line 60
    .local v8, type:[B
    const/16 v11, 0x10

    new-array v0, v11, [B

    .line 61
    .local v0, buf:[B
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 63
    .local v2, ext:[B
    const/4 v5, 0x1

    .line 64
    .local v5, state:I
    const/4 v3, 0x0

    .local v3, i:I
    move v9, v3

    .local v9, x:I
    move v6, v3

    .line 65
    .local v6, t:I
    const/4 v4, 0x0

    .local v4, off:I
    :goto_17
    iget v11, p0, Ljcifs/util/MimeMap;->inLen:I

    if-lt v4, v11, :cond_1c

    .line 120
    .end local p2
    :goto_1b
    return-object p2

    .line 66
    .restart local p2
    :cond_1c
    iget-object v11, p0, Ljcifs/util/MimeMap;->in:[B

    aget-byte v1, v11, v4

    .line 67
    .local v1, ch:B
    packed-switch v5, :pswitch_data_8c

    .line 65
    :cond_23
    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 69
    :pswitch_26
    const/16 v11, 0x20

    if-eq v1, v11, :cond_23

    const/16 v11, 0x9

    if-eq v1, v11, :cond_23

    .line 71
    const/16 v11, 0x23

    if-ne v1, v11, :cond_34

    .line 72
    const/4 v5, 0x2

    .line 73
    goto :goto_23

    .line 75
    :cond_34
    const/4 v5, 0x3

    .line 77
    :pswitch_35
    const/16 v11, 0x20

    if-eq v1, v11, :cond_3d

    const/16 v11, 0x9

    if-ne v1, v11, :cond_3f

    .line 78
    :cond_3d
    const/4 v5, 0x4

    goto :goto_23

    .line 80
    :cond_3f
    add-int/lit8 v7, v6, 0x1

    .end local v6           #t:I
    .local v7, t:I
    aput-byte v1, v8, v6

    move v6, v7

    .line 82
    .end local v7           #t:I
    .restart local v6       #t:I
    goto :goto_23

    .line 84
    :pswitch_45
    const/16 v11, 0xa

    if-ne v1, v11, :cond_23

    .line 85
    const/4 v3, 0x0

    move v9, v3

    move v6, v3

    .line 86
    const/4 v5, 0x1

    .line 88
    goto :goto_23

    .line 90
    :pswitch_4e
    const/16 v11, 0x20

    if-eq v1, v11, :cond_23

    const/16 v11, 0x9

    if-eq v1, v11, :cond_23

    .line 93
    const/4 v5, 0x5

    .line 95
    :pswitch_57
    sparse-switch v1, :sswitch_data_9a

    .line 115
    add-int/lit8 v10, v9, 0x1

    .end local v9           #x:I
    .local v10, x:I
    aput-byte v1, v0, v9

    move v9, v10

    .end local v10           #x:I
    .restart local v9       #x:I
    goto :goto_23

    .line 100
    :sswitch_60
    const/4 v3, 0x0

    :goto_61
    if-ge v3, v9, :cond_6c

    array-length v11, v2

    if-ne v9, v11, :cond_6c

    aget-byte v11, v0, v3

    aget-byte v12, v2, v3

    if-eq v11, v12, :cond_78

    .line 103
    :cond_6c
    array-length v11, v2

    if-ne v3, v11, :cond_7b

    .line 104
    new-instance p2, Ljava/lang/String;

    .end local p2
    const/4 v11, 0x0

    const-string v12, "ASCII"

    invoke-direct {p2, v8, v11, v6, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_1b

    .line 100
    .restart local p2
    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 106
    :cond_7b
    const/16 v11, 0x23

    if-ne v1, v11, :cond_82

    .line 107
    const/4 v5, 0x2

    .line 112
    :cond_80
    :goto_80
    const/4 v9, 0x0

    .line 113
    goto :goto_23

    .line 108
    :cond_82
    const/16 v11, 0xa

    if-ne v1, v11, :cond_80

    .line 109
    const/4 v3, 0x0

    move v9, v3

    move v6, v3

    .line 110
    const/4 v5, 0x1

    goto :goto_80

    .line 67
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_45
        :pswitch_35
        :pswitch_4e
        :pswitch_57
    .end packed-switch

    .line 95
    :sswitch_data_9a
    .sparse-switch
        0x9 -> :sswitch_60
        0xa -> :sswitch_60
        0x20 -> :sswitch_60
        0x23 -> :sswitch_60
    .end sparse-switch
.end method
