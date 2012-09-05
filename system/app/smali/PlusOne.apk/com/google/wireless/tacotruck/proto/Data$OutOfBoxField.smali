.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

.field private static final serialVersionUID:J


# instance fields
.field private action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

.field private bitField0_:I

.field private error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

.field private image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

.field private input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29205
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    .line 29206
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->initFields()V

    .line 29207
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 28599
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 28670
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->memoizedIsInitialized:B

    .line 28699
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->memoizedSerializedSize:I

    .line 28600
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28594
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28601
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28670
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->memoizedIsInitialized:B

    .line 28699
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->memoizedSerializedSize:I

    .line 28601
    return-void
.end method

.method static synthetic access$39302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28594
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object p1
.end method

.method static synthetic access$39402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28594
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    return-object p1
.end method

.method static synthetic access$39502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28594
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object p1
.end method

.method static synthetic access$39602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28594
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object p1
.end method

.method static synthetic access$39702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28594
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    return-object p1
.end method

.method static synthetic access$39802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28594
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 1

    .prologue
    .line 28605
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 28664
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 28665
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 28666
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 28667
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 28668
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 28669
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 1

    .prologue
    .line 28803
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->access$39100()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2

    .prologue
    .line 28650
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28594
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 2

    .prologue
    .line 28609
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    return-object v0
.end method

.method public getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2

    .prologue
    .line 28640
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object v0
.end method

.method public getImage()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 2

    .prologue
    .line 28660
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    return-object v0
.end method

.method public getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 2

    .prologue
    .line 28630
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 28701
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->memoizedSerializedSize:I

    .line 28702
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 28726
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 28704
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 28705
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 28706
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28709
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 28710
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28713
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 28714
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28717
    :cond_33
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 28718
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28721
    :cond_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 28722
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28725
    :cond_52
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->memoizedSerializedSize:I

    move v1, v0

    .line 28726
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 28620
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    .line 28647
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasError()Z
    .registers 3

    .prologue
    .line 28637
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

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

.method public hasImage()Z
    .registers 3

    .prologue
    .line 28657
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasInput()Z
    .registers 3

    .prologue
    .line 28627
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28617
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 28672
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->memoizedIsInitialized:B

    .line 28673
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 28676
    :goto_8
    return v1

    .line 28673
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 28675
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->memoizedIsInitialized:B

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
    .line 28733
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 28681
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getSerializedSize()I

    .line 28682
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 28683
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28685
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 28686
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28688
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 28689
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28691
    :cond_28
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 28692
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28694
    :cond_35
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 28695
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28697
    :cond_43
    return-void
.end method
