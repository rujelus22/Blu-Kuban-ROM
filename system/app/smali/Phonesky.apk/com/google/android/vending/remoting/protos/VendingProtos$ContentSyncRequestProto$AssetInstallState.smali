.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetInstallState"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private assetReferrer_:Ljava/lang/String;

.field private assetState_:I

.field private cachedSize:I

.field private hasAssetId:Z

.field private hasAssetReferrer:Z

.field private hasAssetState:Z

.field private hasInstallTime:Z

.field private hasPackageName:Z

.field private hasUninstallTime:Z

.field private hasVersionCode:Z

.field private installTime_:J

.field private packageName_:Ljava/lang/String;

.field private uninstallTime_:J

.field private versionCode_:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 737
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 742
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetId_:Ljava/lang/String;

    .line 759
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetState_:I

    .line 776
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime_:J

    .line 793
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime_:J

    .line 810
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName_:Ljava/lang/String;

    .line 827
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode_:I

    .line 844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer_:Ljava/lang/String;

    .line 901
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->cachedSize:I

    .line 737
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetReferrer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetState()I
    .registers 2

    .prologue
    .line 761
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetState_:I

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 903
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->cachedSize:I

    if-gez v0, :cond_7

    .line 905
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getSerializedSize()I

    .line 907
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->cachedSize:I

    return v0
.end method

.method public getInstallTime()J
    .registers 3

    .prologue
    .line 777
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime_:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 911
    const/4 v0, 0x0

    .line 912
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 913
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 916
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetState()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 917
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetState()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 920
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 921
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getInstallTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 924
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 925
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getUninstallTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 928
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 929
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 932
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 933
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getVersionCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 936
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 937
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 940
    :cond_73
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->cachedSize:I

    .line 941
    return v0
.end method

.method public getUninstallTime()J
    .registers 3

    .prologue
    .line 794
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime_:J

    return-wide v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 828
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode_:I

    return v0
.end method

.method public hasAssetId()Z
    .registers 2

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId:Z

    return v0
.end method

.method public hasAssetReferrer()Z
    .registers 2

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer:Z

    return v0
.end method

.method public hasAssetState()Z
    .registers 2

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetState:Z

    return v0
.end method

.method public hasInstallTime()Z
    .registers 2

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime:Z

    return v0
.end method

.method public hasPackageName()Z
    .registers 2

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName:Z

    return v0
.end method

.method public hasUninstallTime()Z
    .registers 2

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime:Z

    return v0
.end method

.method public hasVersionCode()Z
    .registers 2

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 948
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 949
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_46

    .line 953
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 954
    :sswitch_d
    return-object p0

    .line 959
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 963
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setAssetState(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 967
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setInstallTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 971
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setUninstallTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 975
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 979
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 983
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setAssetReferrer(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    .line 949
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0x1a -> :sswitch_e
        0x20 -> :sswitch_16
        0x28 -> :sswitch_1e
        0x30 -> :sswitch_26
        0x3a -> :sswitch_2e
        0x40 -> :sswitch_36
        0x4a -> :sswitch_3e
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
    .line 735
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .registers 3
    .parameter "value"

    .prologue
    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId:Z

    .line 747
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetId_:Ljava/lang/String;

    .line 748
    return-object p0
.end method

.method public setAssetReferrer(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .registers 3
    .parameter "value"

    .prologue
    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer:Z

    .line 849
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer_:Ljava/lang/String;

    .line 850
    return-object p0
.end method

.method public setAssetState(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .registers 3
    .parameter "value"

    .prologue
    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetState:Z

    .line 764
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetState_:I

    .line 765
    return-object p0
.end method

.method public setInstallTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .registers 4
    .parameter "value"

    .prologue
    .line 780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime:Z

    .line 781
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime_:J

    .line 782
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .registers 3
    .parameter "value"

    .prologue
    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName:Z

    .line 815
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName_:Ljava/lang/String;

    .line 816
    return-object p0
.end method

.method public setUninstallTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .registers 4
    .parameter "value"

    .prologue
    .line 797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime:Z

    .line 798
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime_:J

    .line 799
    return-object p0
.end method

.method public setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .registers 3
    .parameter "value"

    .prologue
    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode:Z

    .line 832
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode_:I

    .line 833
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 879
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 881
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetState()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 882
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetState()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 884
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 885
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getInstallTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 887
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 888
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getUninstallTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 890
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 891
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 893
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 894
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getVersionCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 896
    :cond_55
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 897
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->getAssetReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 899
    :cond_64
    return-void
.end method
