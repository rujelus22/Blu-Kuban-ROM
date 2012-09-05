.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SectionMetadata"
.end annotation


# instance fields
.field private browseUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private descriptionHtml_:Ljava/lang/String;

.field private hasBrowseUrl:Z

.field private hasDescriptionHtml:Z

.field private hasHeader:Z

.field private hasListUrl:Z

.field private header_:Ljava/lang/String;

.field private listUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 838
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->header_:Ljava/lang/String;

    .line 860
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->descriptionHtml_:Ljava/lang/String;

    .line 877
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->listUrl_:Ljava/lang/String;

    .line 894
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->browseUrl_:Ljava/lang/String;

    .line 937
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->cachedSize:I

    .line 838
    return-void
.end method


# virtual methods
.method public getBrowseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->browseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 939
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->cachedSize:I

    if-gez v0, :cond_7

    .line 941
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getSerializedSize()I

    .line 943
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->cachedSize:I

    return v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->descriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getListUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->listUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 949
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 952
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasListUrl()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 953
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 956
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 957
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 960
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasDescriptionHtml()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 961
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 964
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->cachedSize:I

    .line 965
    return v0
.end method

.method public hasBrowseUrl()Z
    .registers 2

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasBrowseUrl:Z

    return v0
.end method

.method public hasDescriptionHtml()Z
    .registers 2

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasDescriptionHtml:Z

    return v0
.end method

.method public hasHeader()Z
    .registers 2

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasHeader:Z

    return v0
.end method

.method public hasListUrl()Z
    .registers 2

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasListUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 972
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 973
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 977
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 978
    :sswitch_d
    return-object p0

    .line 983
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    goto :goto_0

    .line 987
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->setListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    goto :goto_0

    .line 991
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    goto :goto_0

    .line 995
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    goto :goto_0

    .line 973
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
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
    .line 836
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasBrowseUrl:Z

    .line 899
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->browseUrl_:Ljava/lang/String;

    .line 900
    return-object p0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasDescriptionHtml:Z

    .line 865
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->descriptionHtml_:Ljava/lang/String;

    .line 866
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasHeader:Z

    .line 848
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->header_:Ljava/lang/String;

    .line 849
    return-object p0
.end method

.method public setListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;
    .registers 3
    .parameter "value"

    .prologue
    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasListUrl:Z

    .line 882
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->listUrl_:Ljava/lang/String;

    .line 883
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
    .line 923
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 924
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 926
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasListUrl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 927
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 929
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 930
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 932
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->hasDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 933
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 935
    :cond_38
    return-void
.end method
