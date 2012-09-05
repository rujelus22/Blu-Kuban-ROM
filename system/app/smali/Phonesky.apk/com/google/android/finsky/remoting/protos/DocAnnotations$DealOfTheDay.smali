.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DealOfTheDay"
.end annotation


# instance fields
.field private cachedSize:I

.field private colorThemeArgb_:Ljava/lang/String;

.field private featuredHeader_:Ljava/lang/String;

.field private hasColorThemeArgb:Z

.field private hasFeaturedHeader:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2790
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->featuredHeader_:Ljava/lang/String;

    .line 2812
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->colorThemeArgb_:Ljava/lang/String;

    .line 2847
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->cachedSize:I

    .line 2790
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2849
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->cachedSize:I

    if-gez v0, :cond_7

    .line 2851
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getSerializedSize()I

    .line 2853
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->cachedSize:I

    return v0
.end method

.method public getColorThemeArgb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->colorThemeArgb_:Ljava/lang/String;

    return-object v0
.end method

.method public getFeaturedHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->featuredHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2857
    const/4 v0, 0x0

    .line 2858
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasFeaturedHeader()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2859
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getFeaturedHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2862
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasColorThemeArgb()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2863
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2866
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->cachedSize:I

    .line 2867
    return v0
.end method

.method public hasColorThemeArgb()Z
    .registers 2

    .prologue
    .line 2814
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasColorThemeArgb:Z

    return v0
.end method

.method public hasFeaturedHeader()Z
    .registers 2

    .prologue
    .line 2797
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasFeaturedHeader:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2874
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2875
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 2879
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2880
    :sswitch_d
    return-object p0

    .line 2885
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->setFeaturedHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    goto :goto_0

    .line 2889
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    goto :goto_0

    .line 2875
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
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
    .line 2788
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v0

    return-object v0
.end method

.method public setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    .registers 3
    .parameter "value"

    .prologue
    .line 2816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasColorThemeArgb:Z

    .line 2817
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->colorThemeArgb_:Ljava/lang/String;

    .line 2818
    return-object p0
.end method

.method public setFeaturedHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    .registers 3
    .parameter "value"

    .prologue
    .line 2799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasFeaturedHeader:Z

    .line 2800
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->featuredHeader_:Ljava/lang/String;

    .line 2801
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
    .line 2839
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasFeaturedHeader()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2840
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getFeaturedHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2842
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasColorThemeArgb()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2843
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2845
    :cond_1c
    return-void
.end method
