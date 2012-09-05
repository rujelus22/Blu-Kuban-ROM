.class public Lcom/vlingo/client/core/recordstore/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# static fields
.field public static final LIFETIME_INITIAL:B = 0x0t

.field public static final LIFETIME_ONE_USE:B = 0x3t

.field public static final LIFETIME_PERSISTENT:B = 0x1t

.field public static final LIFETIME_SESSION:B = 0x2t

.field public static final TYPE_BOOLEAN:B = 0xbt

.field public static final TYPE_BYTE_ARRAY:B = 0xdt

.field public static final TYPE_INTEGER:B = 0xct

.field public static final TYPE_LONG:B = 0xet

.field public static final TYPE_STRING:B = 0xat

.field public static buf:[B = null

.field public static final resourceEscapeChars:Ljava/lang/String; = "#Resource:"


# instance fields
.field private recordID:I

.field private resourceDomain:Ljava/lang/String;

.field private resourceLifetime:B

.field private resourceName:Ljava/lang/String;

.field private resourceType:B

.field private resourceValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/16 v0, 0x7d0

    new-array v0, v0, [B

    sput-object v0, Lcom/vlingo/client/core/recordstore/Resource;->buf:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IB)V
    .registers 7
    .parameter "domain"
    .parameter "name"
    .parameter "value"
    .parameter "lifetime"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceLifetime:B

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->recordID:I

    .line 50
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceDomain:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    .line 70
    const/16 v0, 0xc

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/vlingo/client/core/recordstore/Resource;->set(Ljava/lang/String;Ljava/lang/String;BB)V

    .line 71
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JB)V
    .registers 8
    .parameter "domain"
    .parameter "name"
    .parameter "value"
    .parameter "lifetime"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceLifetime:B

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->recordID:I

    .line 50
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceDomain:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    .line 75
    const/16 v0, 0xe

    invoke-direct {p0, p1, p2, p5, v0}, Lcom/vlingo/client/core/recordstore/Resource;->set(Ljava/lang/String;Ljava/lang/String;BB)V

    .line 76
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p3, p4}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 7
    .parameter "domain"
    .parameter "name"
    .parameter "value"
    .parameter "lifetime"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceLifetime:B

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->recordID:I

    .line 50
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceDomain:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    .line 60
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/vlingo/client/core/recordstore/Resource;->set(Ljava/lang/String;Ljava/lang/String;BB)V

    .line 61
    iput-object p3, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZB)V
    .registers 7
    .parameter "domain"
    .parameter "name"
    .parameter "value"
    .parameter "lifetime"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceLifetime:B

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->recordID:I

    .line 50
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceDomain:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    .line 65
    const/16 v0, 0xb

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/vlingo/client/core/recordstore/Resource;->set(Ljava/lang/String;Ljava/lang/String;BB)V

    .line 66
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p3}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BB)V
    .registers 7
    .parameter "domain"
    .parameter "name"
    .parameter "value"
    .parameter "lifetime"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceLifetime:B

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->recordID:I

    .line 50
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceDomain:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    .line 55
    const/16 v0, 0xd

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/vlingo/client/core/recordstore/Resource;->set(Ljava/lang/String;Ljava/lang/String;BB)V

    .line 56
    iput-object p3, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public constructor <init>([B)V
    .registers 10
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v5, 0x3

    iput-byte v5, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceLifetime:B

    .line 48
    const/4 v5, -0x1

    iput v5, p0, Lcom/vlingo/client/core/recordstore/Resource;->recordID:I

    .line 50
    iput-object v6, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceDomain:Ljava/lang/String;

    .line 51
    iput-object v6, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceName:Ljava/lang/String;

    .line 52
    iput-object v6, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 88
    .local v1, buffer:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 91
    .local v3, input:Ljava/io/DataInputStream;
    const/4 v5, 0x1

    :try_start_1b
    iput-byte v5, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceLifetime:B

    .line 92
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    iput-byte v5, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceType:B

    .line 93
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceDomain:Ljava/lang/String;

    .line 94
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceName:Ljava/lang/String;

    .line 96
    iget-byte v5, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceType:B
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_58
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_31} :catch_3f

    packed-switch v5, :pswitch_data_8c

    .line 124
    :goto_34
    :try_start_34
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_81

    .line 129
    :goto_37
    return-void

    .line 98
    :pswitch_38
    :try_start_38
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_58
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_3f

    goto :goto_34

    .line 120
    :catch_3f
    move-exception v2

    .line 121
    .local v2, ex:Ljava/io/IOException;
    :try_start_40
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_58

    .line 124
    :try_start_43
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_37

    .line 125
    :catch_47
    move-exception v2

    .line 126
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 102
    .end local v2           #ex:Ljava/io/IOException;
    :pswitch_4c
    :try_start_4c
    new-instance v5, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v5, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_58
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_57} :catch_3f

    goto :goto_34

    .line 123
    :catchall_58
    move-exception v5

    .line 124
    :try_start_59
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_86

    .line 127
    :goto_5c
    throw v5

    .line 106
    :pswitch_5d
    :try_start_5d
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    iput-object v5, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    goto :goto_34

    .line 110
    :pswitch_69
    new-instance v5, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    iput-object v5, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    goto :goto_34

    .line 114
    :pswitch_75
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 115
    .local v4, len:I
    new-array v0, v4, [B

    .line 116
    .local v0, b:[B
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 117
    iput-object v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;
    :try_end_80
    .catchall {:try_start_5d .. :try_end_80} :catchall_58
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_80} :catch_3f

    goto :goto_34

    .line 125
    .end local v0           #b:[B
    .end local v4           #len:I
    :catch_81
    move-exception v2

    .line 126
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .line 125
    .end local v2           #ex:Ljava/io/IOException;
    :catch_86
    move-exception v2

    .line 126
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    .line 96
    nop

    :pswitch_data_8c
    .packed-switch 0xa
        :pswitch_38
        :pswitch_4c
        :pswitch_5d
        :pswitch_75
        :pswitch_69
    .end packed-switch
.end method

.method private set(Ljava/lang/String;Ljava/lang/String;BB)V
    .registers 5
    .parameter "domain"
    .parameter "name"
    .parameter "lifetime"
    .parameter "type"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceDomain:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceName:Ljava/lang/String;

    .line 82
    iput-byte p3, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceLifetime:B

    .line 83
    iput-byte p4, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceType:B

    .line 84
    return-void
.end method


# virtual methods
.method public convertToData()[B
    .registers 7

    .prologue
    .line 160
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 164
    .local v3, output:Ljava/io/DataOutputStream;
    :try_start_a
    iget-byte v4, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceType:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 165
    iget-object v4, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceDomain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 168
    iget-byte v4, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceType:B
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_47
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1b} :catch_2e

    packed-switch v4, :pswitch_data_7c

    .line 195
    :goto_1e
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_72

    .line 200
    :goto_21
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 170
    :pswitch_26
    :try_start_26
    iget-object v4, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_47
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_1e

    .line 191
    :catch_2e
    move-exception v2

    .line 192
    .local v2, ex:Ljava/io/IOException;
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_47

    .line 195
    :try_start_32
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_21

    .line 196
    :catch_36
    move-exception v2

    .line 197
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 174
    .end local v2           #ex:Ljava/io/IOException;
    :pswitch_3b
    :try_start_3b
    iget-object v4, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_47
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_46} :catch_2e

    goto :goto_1e

    .line 194
    :catchall_47
    move-exception v4

    .line 195
    :try_start_48
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_77

    .line 198
    :goto_4b
    throw v4

    .line 178
    :pswitch_4c
    :try_start_4c
    iget-object v4, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1e

    .line 182
    :pswitch_58
    iget-object v4, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1e

    .line 186
    :pswitch_64
    iget-object v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    check-cast v0, [B

    .line 187
    .local v0, b:[B
    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 188
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_71
    .catchall {:try_start_4c .. :try_end_71} :catchall_47
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_71} :catch_2e

    goto :goto_1e

    .line 196
    .end local v0           #b:[B
    :catch_72
    move-exception v2

    .line 197
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 196
    .end local v2           #ex:Ljava/io/IOException;
    :catch_77
    move-exception v2

    .line 197
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    .line 168
    :pswitch_data_7c
    .packed-switch 0xa
        :pswitch_26
        :pswitch_3b
        :pswitch_4c
        :pswitch_64
        :pswitch_58
    .end packed-switch
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getLifetime()I
    .registers 2

    .prologue
    .line 148
    iget-byte v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceLifetime:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->recordID:I

    return v0
.end method

.method public getType()B
    .registers 2

    .prologue
    .line 132
    iget-byte v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceType:B

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vlingo/client/core/recordstore/Resource;->resourceValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setRecordId(I)V
    .registers 2
    .parameter "recordID"

    .prologue
    .line 152
    iput p1, p0, Lcom/vlingo/client/core/recordstore/Resource;->recordID:I

    .line 153
    return-void
.end method
