.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

.field private static final serialVersionUID:J


# instance fields
.field private action_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

.field private header_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33289
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 33290
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->initFields()V

    .line 33291
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 32678
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 32793
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->memoizedIsInitialized:B

    .line 32819
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->memoizedSerializedSize:I

    .line 32679
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32673
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 32680
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32793
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->memoizedIsInitialized:B

    .line 32819
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->memoizedSerializedSize:I

    .line 32680
    return-void
.end method

.method static synthetic access$44800(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32673
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$44802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32673
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$44902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32673
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->header_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32673
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32673
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object p1
.end method

.method static synthetic access$45202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32673
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 1

    .prologue
    .line 32684
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    return-object v0
.end method

.method private getHeaderBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32734
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->header_:Ljava/lang/Object;

    .line 32735
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32736
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32738
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->header_:Ljava/lang/Object;

    .line 32741
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32766
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->text_:Ljava/lang/Object;

    .line 32767
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32768
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32770
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->text_:Ljava/lang/Object;

    .line 32773
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 32788
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    .line 32789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->header_:Ljava/lang/Object;

    .line 32790
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->text_:Ljava/lang/Object;

    .line 32791
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 32792
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 1

    .prologue
    .line 32919
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->access$44600()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 32922
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 3
    .parameter "index"

    .prologue
    .line 32706
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public getActionCount()I
    .registers 2

    .prologue
    .line 32703
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32696
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    return-object v0
.end method

.method public getActionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxActionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 32710
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxActionOrBuilder;

    return-object v0
.end method

.method public getActionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxActionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32700
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 2

    .prologue
    .line 32688
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    return-object v0
.end method

.method public getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2

    .prologue
    .line 32784
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32720
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->header_:Ljava/lang/Object;

    .line 32721
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32722
    check-cast v1, Ljava/lang/String;

    .line 32730
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32724
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32726
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32727
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32728
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->header_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32730
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 32821
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->memoizedSerializedSize:I

    .line 32822
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 32842
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 32824
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 32825
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 32826
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 32825
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 32829
    :cond_24
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_33

    .line 32830
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getHeaderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 32833
    :cond_33
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_43

    .line 32834
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 32837
    :cond_43
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 32838
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 32841
    :cond_50
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->memoizedSerializedSize:I

    move v2, v1

    .line 32842
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32752
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->text_:Ljava/lang/Object;

    .line 32753
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32754
    check-cast v1, Ljava/lang/String;

    .line 32762
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32756
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32758
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32759
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32760
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->text_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32762
    goto :goto_8
.end method

.method public hasError()Z
    .registers 3

    .prologue
    .line 32781
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHeader()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32717
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasText()Z
    .registers 3

    .prologue
    .line 32749
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 32795
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->memoizedIsInitialized:B

    .line 32796
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 32799
    :goto_8
    return v1

    .line 32796
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 32798
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 32849
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 32804
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getSerializedSize()I

    .line 32805
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 32806
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->action_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 32805
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 32808
    :cond_1d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2a

    .line 32809
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getHeaderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 32811
    :cond_2a
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_38

    .line 32812
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 32814
    :cond_38
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 32815
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 32817
    :cond_43
    return-void
.end method
