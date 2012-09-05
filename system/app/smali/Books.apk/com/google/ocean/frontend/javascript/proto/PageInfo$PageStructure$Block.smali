.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Block"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;,
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;


# instance fields
.field private appearance_:Ljava/lang/String;

.field private box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

.field private hasAppearance:Z

.field private hasBox:Z

.field private memoizedSerializedSize:I

.field private paragraph_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1226
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;-><init>(Z)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    .line 1227
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo;->internalForceInit()V

    .line 1228
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->initFields()V

    .line 1229
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->appearance_:Ljava/lang/String;

    .line 849
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->memoizedSerializedSize:I

    .line 405
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->initFields()V

    .line 406
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->appearance_:Ljava/lang/String;

    .line 849
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->memoizedSerializedSize:I

    .line 407
    return-void
.end method

.method static synthetic access$2400(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasAppearance:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->appearance_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasBox:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
    .registers 1

    .prologue
    .line 411
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 867
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 868
    return-void
.end method

.method public static newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    .registers 1

    .prologue
    .line 982
    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;->access$2200()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppearance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->appearance_:Ljava/lang/String;

    return-object v0
.end method

.method public getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->box_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object v0
.end method

.method public getParagraphList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;",
            ">;"
        }
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->paragraph_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 895
    iget v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->memoizedSerializedSize:I

    .line 896
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 912
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 898
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 899
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getParagraphList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    .line 900
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
    const/4 v4, 0x2

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_10

    .line 903
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
    :cond_23
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasAppearance()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 904
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getAppearance()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 907
    :cond_33
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasBox()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 908
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 911
    :cond_44
    iput v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->memoizedSerializedSize:I

    move v3, v2

    .line 912
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_6
.end method

.method public hasAppearance()Z
    .registers 2

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasAppearance:Z

    return v0
.end method

.method public hasBox()Z
    .registers 2

    .prologue
    .line 863
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasBox:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 870
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getParagraphList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    .line 871
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_9

    .line 876
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
    :cond_1b
    :goto_1b
    return v2

    .line 873
    :cond_1c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasBox()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 874
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 876
    :cond_2c
    const/4 v2, 0x1

    goto :goto_1b
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getSerializedSize()I

    .line 882
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getParagraphList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;

    .line 883
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    goto :goto_b

    .line 885
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block$Paragraph;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasAppearance()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 886
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getAppearance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 888
    :cond_2a
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->hasBox()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 889
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->getBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 891
    :cond_39
    return-void
.end method
