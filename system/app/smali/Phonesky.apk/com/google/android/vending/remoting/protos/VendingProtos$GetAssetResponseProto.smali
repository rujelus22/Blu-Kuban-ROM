.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAssetResponseProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    }
.end annotation


# instance fields
.field private additionalFile_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasInstallAsset:Z

.field private installAsset_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12576
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13057
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->installAsset_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    .line 13076
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->additionalFile_:Ljava/util/List;

    .line 13134
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->cachedSize:I

    .line 12576
    return-void
.end method


# virtual methods
.method public addAdditionalFile(Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 13093
    if-nez p1, :cond_8

    .line 13094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13096
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->additionalFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 13097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->additionalFile_:Ljava/util/List;

    .line 13099
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->additionalFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13100
    return-object p0
.end method

.method public getAdditionalFileList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13079
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->additionalFile_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 13136
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 13138
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getSerializedSize()I

    .line 13140
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->cachedSize:I

    return v0
.end method

.method public getInstallAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .registers 2

    .prologue
    .line 13059
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->installAsset_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 13144
    const/4 v2, 0x0

    .line 13145
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->hasInstallAsset()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 13146
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getInstallAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13149
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getAdditionalFileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    .line 13150
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    const/16 v3, 0xf

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_19

    .line 13153
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    :cond_2d
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->cachedSize:I

    .line 13154
    return v2
.end method

.method public hasInstallAsset()Z
    .registers 2

    .prologue
    .line 13058
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->hasInstallAsset:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13161
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 13162
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 13166
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13167
    :sswitch_d
    return-object p0

    .line 13172
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;-><init>()V

    .line 13173
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 13174
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->setInstallAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    goto :goto_0

    .line 13178
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    :sswitch_1b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;-><init>()V

    .line 13179
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 13180
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->addAdditionalFile(Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    goto :goto_0

    .line 13162
    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xb -> :sswitch_e
        0x7a -> :sswitch_1b
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
    .line 12574
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setInstallAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 13061
    if-nez p1, :cond_8

    .line 13062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13064
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->hasInstallAsset:Z

    .line 13065
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->installAsset_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    .line 13066
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13126
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->hasInstallAsset()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 13127
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getInstallAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 13129
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getAdditionalFileList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    .line 13130
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_16

    .line 13132
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    :cond_28
    return-void
.end method
