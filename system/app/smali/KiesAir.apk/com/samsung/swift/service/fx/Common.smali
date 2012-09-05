.class public Lcom/samsung/swift/service/fx/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x1a86

.field public static final HDR_BYTE_WRITTEN:Ljava/lang/String; = "written"

.field public static final HDR_DATA_SIZE:Ljava/lang/String; = "dataSize"

.field public static final HDR_DATA_START:Ljava/lang/String; = "dataStart"

.field public static final HDR_DEST_FILE:Ljava/lang/String; = "destFile"

.field public static final HDR_ERROR_CODE:Ljava/lang/String; = "errorcode"

.field public static final HDR_ERROR_DISKSPACE:I = 0x4

.field public static final HDR_ERROR_IO:I = 0x8

.field public static final HDR_ERROR_NO_DEST:I = 0x1

.field public static final HDR_ERROR_NO_TMPDEST:I = 0x2

.field public static final HDR_FILE_SIZE:Ljava/lang/String; = "fileSize"

.field public static final IOB:I = 0x1000

.field public static final NETB:I = 0x10000

.field public static final PACKET_MAGIC:Ljava/lang/String; = "SWIFTFTP"

.field public static final PART_FILE_EXT:Ljava/lang/String; = "ext="


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 141
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p0

    .line 146
    .end local p0
    :goto_6
    return-object p0

    .line 144
    .restart local p0
    :catch_7
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public static load([B)Ljava/util/Properties;
    .registers 9
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 117
    .local v2, lnr:Ljava/io/LineNumberReader;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 120
    .local v3, p:Ljava/util/Properties;
    :cond_14
    :goto_14
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, s:Ljava/lang/String;
    if-nez v4, :cond_1e

    .line 133
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V

    .line 134
    return-object v3

    .line 124
    :cond_1e
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, i:I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_14

    .line 127
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v3, v1, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method
