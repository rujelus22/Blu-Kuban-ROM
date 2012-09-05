.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetSubCategoriesResponseProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private subCategory_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13688
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13814
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->subCategory_:Ljava/util/List;

    .line 13865
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->cachedSize:I

    .line 13688
    return-void
.end method


# virtual methods
.method public addSubCategory(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 13831
    if-nez p1, :cond_8

    .line 13832
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13834
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->subCategory_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 13835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->subCategory_:Ljava/util/List;

    .line 13837
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->subCategory_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13838
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 13867
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 13869
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->getSerializedSize()I

    .line 13871
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 13875
    const/4 v2, 0x0

    .line 13876
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->getSubCategoryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    .line 13877
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 13880
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    :cond_1c
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->cachedSize:I

    .line 13881
    return v2
.end method

.method public getSubCategoryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13817
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->subCategory_:Ljava/util/List;

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13888
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 13889
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 13893
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13894
    :sswitch_d
    return-object p0

    .line 13899
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;-><init>()V

    .line 13900
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 13901
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->addSubCategory(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    goto :goto_0

    .line 13889
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xb -> :sswitch_e
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
    .line 13686
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    move-result-object v0

    return-object v0
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
    .line 13860
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->getSubCategoryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    .line 13861
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 13863
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    :cond_19
    return-void
.end method
