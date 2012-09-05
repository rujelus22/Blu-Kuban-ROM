.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Term"
.end annotation


# instance fields
.field private body_:Ljava/lang/String;

.field private cachedSize:I

.field private hasBody:Z

.field private hasHeader:Z

.field private header_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2937
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2942
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->header_:Ljava/lang/String;

    .line 2959
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->body_:Ljava/lang/String;

    .line 2994
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->cachedSize:I

    .line 2937
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2996
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->cachedSize:I

    if-gez v0, :cond_7

    .line 2998
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getSerializedSize()I

    .line 3000
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->cachedSize:I

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 3004
    const/4 v0, 0x0

    .line 3005
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3006
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3009
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3010
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3013
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->cachedSize:I

    .line 3014
    return v0
.end method

.method public hasBody()Z
    .registers 2

    .prologue
    .line 2961
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasBody:Z

    return v0
.end method

.method public hasHeader()Z
    .registers 2

    .prologue
    .line 2944
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasHeader:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3021
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3022
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 3026
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3027
    :sswitch_d
    return-object p0

    .line 3032
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    goto :goto_0

    .line 3036
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->setBody(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    goto :goto_0

    .line 3022
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x2a -> :sswitch_e
        0x32 -> :sswitch_16
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
    .line 2935
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    .registers 3
    .parameter "value"

    .prologue
    .line 2963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasBody:Z

    .line 2964
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->body_:Ljava/lang/String;

    .line 2965
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    .registers 3
    .parameter "value"

    .prologue
    .line 2946
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasHeader:Z

    .line 2947
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->header_:Ljava/lang/String;

    .line 2948
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
    .line 2986
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2987
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2989
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2990
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2992
    :cond_1c
    return-void
.end method
