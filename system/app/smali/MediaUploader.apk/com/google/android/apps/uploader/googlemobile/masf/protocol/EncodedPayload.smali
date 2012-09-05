.class public Lcom/google/android/apps/uploader/googlemobile/masf/protocol/EncodedPayload;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;


# instance fields
.field private payloadLength:I

.field private theInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_2f

    iput p2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/EncodedPayload;->payloadLength:I

    :goto_7
    if-eqz p1, :cond_61

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move-object v1, p3

    :goto_e
    if-lez v0, :cond_56

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/16 v2, 0x2c

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    move v0, v2

    goto :goto_e

    :cond_2f
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/EncodedPayload;->payloadLength:I

    goto :goto_7

    :cond_33
    const-string v3, "n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    move v0, v2

    goto :goto_e

    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognised encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    if-lez p2, :cond_62

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/EncodedPayload;->payloadLength:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/EncodedPayload;->theInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    :cond_61
    :goto_61
    return-void

    :cond_62
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/EncodedPayload;->theInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    goto :goto_61
.end method


# virtual methods
.method public bufferAndDetach()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/EncodedPayload;->theInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;->bufferAndDetach()V

    return-void
.end method

.method public dispose()V
    .registers 1

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/EncodedPayload;->theInputStream:Lcom/google/android/apps/uploader/googlemobile/masf/DelimitedInputStream;

    return-object v0
.end method

.method public getStreamLength()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/EncodedPayload;->payloadLength:I

    return v0
.end method
