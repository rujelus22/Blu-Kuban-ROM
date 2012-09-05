.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetCategoriesRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPrefetchPromoData:Z

.field private prefetchPromoData_:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13923
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->prefetchPromoData_:Z

    .line 13959
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->cachedSize:I

    .line 13923
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 13961
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 13963
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->getSerializedSize()I

    .line 13965
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->cachedSize:I

    return v0
.end method

.method public getPrefetchPromoData()Z
    .registers 2

    .prologue
    .line 13929
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->prefetchPromoData_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 13969
    const/4 v0, 0x0

    .line 13970
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->hasPrefetchPromoData()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 13971
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->getPrefetchPromoData()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13974
    :cond_11
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->cachedSize:I

    .line 13975
    return v0
.end method

.method public hasPrefetchPromoData()Z
    .registers 2

    .prologue
    .line 13930
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->hasPrefetchPromoData:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13982
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 13983
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 13987
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13988
    :sswitch_d
    return-object p0

    .line 13993
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->setPrefetchPromoData(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    goto :goto_0

    .line 13983
    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 13921
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setPrefetchPromoData(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 13932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->hasPrefetchPromoData:Z

    .line 13933
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->prefetchPromoData_:Z

    .line 13934
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
    .line 13954
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->hasPrefetchPromoData()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 13955
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;->getPrefetchPromoData()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 13957
    :cond_e
    return-void
.end method
