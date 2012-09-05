.class public final Lcom/google/api/client/http/ByteArrayContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "ByteArrayContent.java"


# static fields
.field private static final EMPTY_ARRAY:[B


# instance fields
.field private final byteArray:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/api/client/http/ByteArrayContent;->EMPTY_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/api/client/http/AbstractInputStreamContent;-><init>()V

    .line 72
    sget-object v0, Lcom/google/api/client/http/ByteArrayContent;->EMPTY_ARRAY:[B

    iput-object v0, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "contentString"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/api/client/http/AbstractInputStreamContent;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Lcom/google/api/client/util/Strings;->toBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    .line 66
    return-void
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 85
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public retrySupported()Z
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method
