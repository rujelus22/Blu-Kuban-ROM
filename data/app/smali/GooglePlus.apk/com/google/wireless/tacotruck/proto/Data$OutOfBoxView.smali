.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxViewOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

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

.field private dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

.field private field_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;",
            ">;"
        }
    .end annotation
.end field

.field private header_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31345
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    .line 31346
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->initFields()V

    .line 31347
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 30593
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 30730
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->memoizedIsInitialized:B

    .line 30759
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->memoizedSerializedSize:I

    .line 30594
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30588
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 30595
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30730
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->memoizedIsInitialized:B

    .line 30759
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->memoizedSerializedSize:I

    .line 30595
    return-void
.end method

.method static synthetic access$41902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30588
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    return-object p1
.end method

.method static synthetic access$42000(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30588
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30588
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42100(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30588
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30588
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$42202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30588
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$42302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30588
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->header_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$42402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30588
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 1

    .prologue
    .line 30599
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object v0
.end method

.method private getHeaderBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30712
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->header_:Ljava/lang/Object;

    .line 30713
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30714
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30716
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->header_:Ljava/lang/Object;

    .line 30719
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

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30680
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->title_:Ljava/lang/Object;

    .line 30681
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30682
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30684
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->title_:Ljava/lang/Object;

    .line 30687
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
    .line 30724
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    .line 30725
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    .line 30726
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

    .line 30727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->title_:Ljava/lang/Object;

    .line 30728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->header_:Ljava/lang/Object;

    .line 30729
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 1

    .prologue
    .line 30863
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->access$41700()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 30866
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 3
    .parameter "index"

    .prologue
    .line 30652
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public getActionCount()I
    .registers 2

    .prologue
    .line 30649
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

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
    .line 30642
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

    return-object v0
.end method

.method public getActionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxActionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 30656
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

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
    .line 30646
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30588
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    .registers 2

    .prologue
    .line 30603
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    return-object v0
.end method

.method public getDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;
    .registers 2

    .prologue
    .line 30614
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    return-object v0
.end method

.method public getField(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 3
    .parameter "index"

    .prologue
    .line 30631
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    return-object v0
.end method

.method public getFieldCount()I
    .registers 2

    .prologue
    .line 30628
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFieldList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30621
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    return-object v0
.end method

.method public getFieldOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 30635
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOrBuilder;

    return-object v0
.end method

.method public getFieldOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30625
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 5

    .prologue
    .line 30698
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->header_:Ljava/lang/Object;

    .line 30699
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 30700
    check-cast v1, Ljava/lang/String;

    .line 30708
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 30702
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30704
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30705
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 30706
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->header_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 30708
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 30761
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->memoizedSerializedSize:I

    .line 30762
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 30786
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 30764
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 30765
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 30766
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30769
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_31

    .line 30770
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30769
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 30773
    :cond_31
    const/4 v0, 0x0

    :goto_32
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4b

    .line 30774
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30773
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 30777
    :cond_4b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_5a

    .line 30778
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30781
    :cond_5a
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_6a

    .line 30782
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getHeaderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 30785
    :cond_6a
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->memoizedSerializedSize:I

    move v2, v1

    .line 30786
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 30666
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->title_:Ljava/lang/Object;

    .line 30667
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 30668
    check-cast v1, Ljava/lang/String;

    .line 30676
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 30670
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30672
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30673
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 30674
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->title_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 30676
    goto :goto_8
.end method

.method public hasDialog()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30611
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasHeader()Z
    .registers 3

    .prologue
    .line 30695
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 30663
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I

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

    .line 30732
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->memoizedIsInitialized:B

    .line 30733
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 30736
    :goto_8
    return v1

    .line 30733
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 30735
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30588
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 30864
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30588
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;
    .registers 2

    .prologue
    .line 30868
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 30793
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

    .line 30741
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getSerializedSize()I

    .line 30742
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 30743
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->dialog_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30745
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 30746
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->field_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30745
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 30748
    :cond_28
    const/4 v0, 0x0

    :goto_29
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 30749
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->action_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30748
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 30751
    :cond_40
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_4d

    .line 30752
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30754
    :cond_4d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_5b

    .line 30755
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getHeaderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30757
    :cond_5b
    return-void
.end method
