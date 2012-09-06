.class public Ljcifs/dcerpc/DcerpcException;
.super Ljava/io/IOException;

# interfaces
.implements Ljcifs/dcerpc/d;
.implements Ljcifs/smb/cm;


# instance fields
.field private error:I

.field private rootCause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-static {p1}, Ljcifs/dcerpc/DcerpcException;->getMessageByDcerpcError(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Ljcifs/dcerpc/DcerpcException;->error:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method static getMessageByDcerpcError(I)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Ljcifs/dcerpc/DcerpcException;->a:[I

    array-length v0, v0

    :goto_4
    if-lt v0, v1, :cond_21

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Ljcifs/dcerpc/DcerpcException;->a:[I

    aget v3, v3, v2

    if-le p0, v3, :cond_13

    add-int/lit8 v1, v2, 0x1

    goto :goto_4

    :cond_13
    sget-object v0, Ljcifs/dcerpc/DcerpcException;->a:[I

    aget v0, v0, v2

    if-ge p0, v0, :cond_1c

    add-int/lit8 v0, v2, -0x1

    goto :goto_4

    :cond_1c
    sget-object v0, Ljcifs/dcerpc/DcerpcException;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    :goto_20
    return-object v0

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    iget v0, p0, Ljcifs/dcerpc/DcerpcException;->error:I

    return v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e
.end method
