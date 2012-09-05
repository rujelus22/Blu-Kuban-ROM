.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubCategory"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSubCategoryDisplay:Z

.field private hasSubCategoryId:Z

.field private subCategoryDisplay_:Ljava/lang/String;

.field private subCategoryId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13692
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13697
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryDisplay_:Ljava/lang/String;

    .line 13714
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryId_:Ljava/lang/String;

    .line 13750
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->cachedSize:I

    .line 13692
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 13752
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->cachedSize:I

    if-gez v0, :cond_7

    .line 13754
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->getSerializedSize()I

    .line 13756
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 13760
    const/4 v0, 0x0

    .line 13761
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryDisplay()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 13762
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->getSubCategoryDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13765
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryId()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 13766
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->getSubCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13769
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->cachedSize:I

    .line 13770
    return v0
.end method

.method public getSubCategoryDisplay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13698
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCategoryId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13715
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubCategoryDisplay()Z
    .registers 2

    .prologue
    .line 13699
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryDisplay:Z

    return v0
.end method

.method public hasSubCategoryId()Z
    .registers 2

    .prologue
    .line 13716
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13777
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 13778
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 13782
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13783
    :sswitch_d
    return-object p0

    .line 13788
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->setSubCategoryDisplay(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    goto :goto_0

    .line 13792
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->setSubCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    goto :goto_0

    .line 13778
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_e
        0x1a -> :sswitch_16
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
    .line 13690
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    move-result-object v0

    return-object v0
.end method

.method public setSubCategoryDisplay(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    .registers 3
    .parameter "value"

    .prologue
    .line 13701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryDisplay:Z

    .line 13702
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryDisplay_:Ljava/lang/String;

    .line 13703
    return-object p0
.end method

.method public setSubCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    .registers 3
    .parameter "value"

    .prologue
    .line 13718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryId:Z

    .line 13719
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryId_:Ljava/lang/String;

    .line 13720
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
    .line 13742
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryDisplay()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 13743
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->getSubCategoryDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13745
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 13746
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->getSubCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13748
    :cond_1c
    return-void
.end method
