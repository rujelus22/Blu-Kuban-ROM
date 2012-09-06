.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

.field private bitField0_:I

.field private error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

.field private image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

.field private input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

.field private text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31596
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 31768
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 31811
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 31854
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 31897
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 31940
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 31597
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->maybeForceBuilderInitialization()V

    .line 31598
    return-void
.end method

.method static synthetic access$42600()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 1

    .prologue
    .line 31591
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 1

    .prologue
    .line 31603
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 31601
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31591
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 3

    .prologue
    .line 31630
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    .line 31631
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 31632
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 31634
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31591
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 6

    .prologue
    .line 31648
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 31649
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31650
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 31651
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 31652
    or-int/lit8 v2, v2, 0x1

    .line 31654
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$42802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 31655
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 31656
    or-int/lit8 v2, v2, 0x2

    .line 31658
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$42902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 31659
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 31660
    or-int/lit8 v2, v2, 0x4

    .line 31662
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$43002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 31663
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 31664
    or-int/lit8 v2, v2, 0x8

    .line 31666
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$43102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 31667
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 31668
    or-int/lit8 v2, v2, 0x10

    .line 31670
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$43202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 31671
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$43302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;I)I

    .line 31672
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31591
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31591
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 31607
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 31608
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 31609
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31610
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 31611
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31612
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 31613
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31614
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 31615
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31616
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 31617
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31618
    return-object p0
.end method

.method public clearAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 31933
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 31935
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31936
    return-object p0
.end method

.method public clearError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 31890
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 31892
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31893
    return-object p0
.end method

.method public clearImage()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 31976
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 31978
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31979
    return-object p0
.end method

.method public clearInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 31847
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 31849
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31850
    return-object p0
.end method

.method public clearText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 31804
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 31806
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31807
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 31591
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31591
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3

    .prologue
    .line 31622
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31591
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2

    .prologue
    .line 31902
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 31591
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31591
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 2

    .prologue
    .line 31626
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2

    .prologue
    .line 31859
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object v0
.end method

.method public getImage()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 2

    .prologue
    .line 31945
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    return-object v0
.end method

.method public getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 2

    .prologue
    .line 31816
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    return-object v0
.end method

.method public getText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 31773
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    .line 31899
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

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
    .line 31856
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

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
    .line 31942
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

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
    .line 31813
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

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

    .line 31770
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 31696
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 31921
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 31923
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 31929
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31930
    return-object p0

    .line 31926
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    goto :goto_20
.end method

.method public mergeError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 31878
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 31880
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 31886
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31887
    return-object p0

    .line 31883
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    goto :goto_1f
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31591
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 31591
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31591
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31704
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 31705
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_9c

    .line 31710
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 31712
    :sswitch_d
    return-object p0

    .line 31717
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    .line 31718
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->hasText()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 31719
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    .line 31721
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 31722
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->setText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto :goto_0

    .line 31726
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    .line 31727
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->hasInput()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 31728
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 31730
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 31731
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->setInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto :goto_0

    .line 31735
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    .line 31736
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->hasError()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 31737
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    .line 31739
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 31740
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto :goto_0

    .line 31744
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    :sswitch_62
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    .line 31745
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->hasAction()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 31746
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    .line 31748
    :cond_73
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 31749
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto :goto_0

    .line 31753
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    :sswitch_7e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    .line 31754
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 31755
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getImage()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    .line 31757
    :cond_8f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 31758
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->setImage(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto/16 :goto_0

    .line 31705
    nop

    :sswitch_data_9c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_46
        0x22 -> :sswitch_62
        0x2a -> :sswitch_7e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 31676
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 31692
    :cond_6
    :goto_6
    return-object p0

    .line 31677
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasText()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 31678
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    .line 31680
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 31681
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    .line 31683
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 31684
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    .line 31686
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 31687
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    .line 31689
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31690
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getImage()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeImage(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto :goto_6
.end method

.method public mergeImage(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 31964
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 31966
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 31972
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31973
    return-object p0

    .line 31969
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    goto :goto_20
.end method

.method public mergeInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 31835
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 31837
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 31843
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31844
    return-object p0

    .line 31840
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    goto :goto_1f
.end method

.method public mergeText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 31792
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 31794
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 31800
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31801
    return-object p0

    .line 31797
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    goto :goto_1f
.end method

.method public setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 31915
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 31917
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31918
    return-object p0
.end method

.method public setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31905
    if-nez p1, :cond_8

    .line 31906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31908
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 31910
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31911
    return-object p0
.end method

.method public setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 31872
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 31874
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31875
    return-object p0
.end method

.method public setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31862
    if-nez p1, :cond_8

    .line 31863
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31865
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 31867
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31868
    return-object p0
.end method

.method public setImage(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 31958
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 31960
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31961
    return-object p0
.end method

.method public setImage(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31948
    if-nez p1, :cond_8

    .line 31949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31951
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 31953
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31954
    return-object p0
.end method

.method public setInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 31829
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 31831
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31832
    return-object p0
.end method

.method public setInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31819
    if-nez p1, :cond_8

    .line 31820
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31822
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 31824
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31825
    return-object p0
.end method

.method public setText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 31786
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 31788
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31789
    return-object p0
.end method

.method public setText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31776
    if-nez p1, :cond_8

    .line 31777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31779
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 31781
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 31782
    return-object p0
.end method
