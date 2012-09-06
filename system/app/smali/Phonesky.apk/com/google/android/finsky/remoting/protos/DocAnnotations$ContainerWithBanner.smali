.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerWithBanner"
.end annotation


# instance fields
.field private cachedSize:I

.field private colorThemeArgb_:Ljava/lang/String;

.field private hasColorThemeArgb:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2009
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2014
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->colorThemeArgb_:Ljava/lang/String;

    .line 2046
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->cachedSize:I

    .line 2009
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2049
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->cachedSize:I

    if-gez v0, :cond_7

    .line 2051
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getSerializedSize()I

    .line 2053
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->cachedSize:I

    return v0
.end method

.method public getColorThemeArgb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->colorThemeArgb_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2058
    const/4 v0, 0x0

    .line 2059
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->hasColorThemeArgb()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2060
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2063
    :cond_11
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->cachedSize:I

    .line 2064
    return v0
.end method

.method public hasColorThemeArgb()Z
    .registers 2

    .prologue
    .line 2016
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->hasColorThemeArgb:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2072
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2073
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 2077
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2078
    :sswitch_d
    return-object p0

    .line 2083
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    goto :goto_0

    .line 2073
    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2006
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v0

    return-object v0
.end method

.method public setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    .registers 3
    .parameter "value"

    .prologue
    .line 2018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->hasColorThemeArgb:Z

    .line 2019
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->colorThemeArgb_:Ljava/lang/String;

    .line 2020
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->hasColorThemeArgb()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2042
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2044
    :cond_e
    return-void
.end method
