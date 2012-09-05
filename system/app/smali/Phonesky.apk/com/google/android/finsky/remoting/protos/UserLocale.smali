.class public final Lcom/google/android/finsky/remoting/protos/UserLocale;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UserLocale.java"


# instance fields
.field private cachedSize:I

.field private country_:Ljava/lang/String;

.field private hasCountry:Z

.field private hasLanguageCode:Z

.field private languageCode_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12
    const-string v0, "en-US"

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->languageCode_:Ljava/lang/String;

    .line 29
    const-string v0, "US"

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->country_:Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->cachedSize:I

    .line 7
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->cachedSize:I

    if-gez v0, :cond_7

    .line 68
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UserLocale;->getSerializedSize()I

    .line 70
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->cachedSize:I

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->country_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->languageCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UserLocale;->hasLanguageCode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 76
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UserLocale;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UserLocale;->hasCountry()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 80
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UserLocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->cachedSize:I

    .line 84
    return v0
.end method

.method public hasCountry()Z
    .registers 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->hasCountry:Z

    return v0
.end method

.method public hasLanguageCode()Z
    .registers 2

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->hasLanguageCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/UserLocale;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 92
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/UserLocale;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    :sswitch_d
    return-object p0

    .line 102
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/UserLocale;->setLanguageCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/UserLocale;

    goto :goto_0

    .line 106
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/UserLocale;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/UserLocale;

    goto :goto_0

    .line 92
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/UserLocale;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/UserLocale;

    move-result-object v0

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/UserLocale;
    .registers 3
    .parameter "value"

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->hasCountry:Z

    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->country_:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/UserLocale;
    .registers 3
    .parameter "value"

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->hasLanguageCode:Z

    .line 17
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/UserLocale;->languageCode_:Ljava/lang/String;

    .line 18
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
    .line 56
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UserLocale;->hasLanguageCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UserLocale;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 59
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UserLocale;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/UserLocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 62
    :cond_1c
    return-void
.end method
