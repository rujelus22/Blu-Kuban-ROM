.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageDependency"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPackageName:Z

.field private hasSkipPermissions:Z

.field private packageName_:Ljava/lang/String;

.field private skipPermissions_:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2128
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->packageName_:Ljava/lang/String;

    .line 2150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->skipPermissions_:Z

    .line 2186
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->cachedSize:I

    .line 2128
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2188
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->cachedSize:I

    if-gez v0, :cond_7

    .line 2190
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->getSerializedSize()I

    .line 2192
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->cachedSize:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2196
    const/4 v0, 0x0

    .line 2197
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2198
    const/16 v1, 0x29

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2201
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasSkipPermissions()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2202
    const/16 v1, 0x2a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->getSkipPermissions()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2205
    :cond_23
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->cachedSize:I

    .line 2206
    return v0
.end method

.method public getSkipPermissions()Z
    .registers 2

    .prologue
    .line 2151
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->skipPermissions_:Z

    return v0
.end method

.method public hasPackageName()Z
    .registers 2

    .prologue
    .line 2135
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasPackageName:Z

    return v0
.end method

.method public hasSkipPermissions()Z
    .registers 2

    .prologue
    .line 2152
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasSkipPermissions:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2213
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2214
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 2218
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2219
    :sswitch_d
    return-object p0

    .line 2224
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;

    goto :goto_0

    .line 2228
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->setSkipPermissions(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;

    goto :goto_0

    .line 2214
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x14a -> :sswitch_e
        0x150 -> :sswitch_16
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
    .line 2126
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;

    move-result-object v0

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    .registers 3
    .parameter "value"

    .prologue
    .line 2137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasPackageName:Z

    .line 2138
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->packageName_:Ljava/lang/String;

    .line 2139
    return-object p0
.end method

.method public setSkipPermissions(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;
    .registers 3
    .parameter "value"

    .prologue
    .line 2154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasSkipPermissions:Z

    .line 2155
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->skipPermissions_:Z

    .line 2156
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
    .line 2178
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2179
    const/16 v0, 0x29

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2181
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->hasSkipPermissions()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2182
    const/16 v0, 0x2a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto$ExtendedInfo$PackageDependency;->getSkipPermissions()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2184
    :cond_1e
    return-void
.end method
