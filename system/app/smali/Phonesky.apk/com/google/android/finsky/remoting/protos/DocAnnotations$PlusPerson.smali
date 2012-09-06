.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusPerson"
.end annotation


# instance fields
.field private cachedSize:I

.field private displayName_:Ljava/lang/String;

.field private hasDisplayName:Z

.field private hasProfileImageUrl:Z

.field private profileImageUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 908
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->displayName_:Ljava/lang/String;

    .line 925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->profileImageUrl_:Ljava/lang/String;

    .line 961
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->cachedSize:I

    .line 903
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 964
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->cachedSize:I

    if-gez v0, :cond_7

    .line 966
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->getSerializedSize()I

    .line 968
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->cachedSize:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->profileImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 973
    const/4 v0, 0x0

    .line 974
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->hasDisplayName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 975
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 978
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->hasProfileImageUrl()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 979
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 982
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->cachedSize:I

    .line 983
    return v0
.end method

.method public hasDisplayName()Z
    .registers 2

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->hasDisplayName:Z

    return v0
.end method

.method public hasProfileImageUrl()Z
    .registers 2

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->hasProfileImageUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 991
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 992
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 996
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 997
    :sswitch_d
    return-object p0

    .line 1002
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->setDisplayName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;

    goto :goto_0

    .line 1006
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->setProfileImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;

    goto :goto_0

    .line 992
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_e
        0x22 -> :sswitch_16
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
    .line 900
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;
    .registers 3
    .parameter "value"

    .prologue
    .line 912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->hasDisplayName:Z

    .line 913
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->displayName_:Ljava/lang/String;

    .line 914
    return-object p0
.end method

.method public setProfileImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;
    .registers 3
    .parameter "value"

    .prologue
    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->hasProfileImageUrl:Z

    .line 930
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->profileImageUrl_:Ljava/lang/String;

    .line 931
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
    .line 953
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 954
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 956
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->hasProfileImageUrl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 957
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 959
    :cond_1c
    return-void
.end method
