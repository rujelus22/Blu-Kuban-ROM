.class public final Lf;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lg;

    invoke-direct {v0}, Lg;-><init>()V

    sput-object v0, Lf;->a:Lg;

    return-void
.end method

.method public static a([B)[B
    .registers 5

    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_c
    sget-object v0, Lf;->a:Lg;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v0, p0, v2, v3, v1}, Lg;->a([BIILjava/io/OutputStream;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_18

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception encoding base64 string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
