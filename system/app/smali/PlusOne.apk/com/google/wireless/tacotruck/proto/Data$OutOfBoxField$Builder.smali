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
    .line 28815
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28987
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29030
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 29073
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 29116
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 29159
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 28816
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->maybeForceBuilderInitialization()V

    .line 28817
    return-void
.end method

.method static synthetic access$39100()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 1

    .prologue
    .line 28810
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 1

    .prologue
    .line 28822
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28820
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 3

    .prologue
    .line 28849
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    .line 28850
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28851
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28853
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28810
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 6

    .prologue
    .line 28867
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 28868
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 28869
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 28870
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28871
    or-int/lit8 v2, v2, 0x1

    .line 28873
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$39302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 28874
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28875
    or-int/lit8 v2, v2, 0x2

    .line 28877
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$39402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 28878
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 28879
    or-int/lit8 v2, v2, 0x4

    .line 28881
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$39502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 28882
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 28883
    or-int/lit8 v2, v2, 0x8

    .line 28885
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$39602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 28886
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 28887
    or-int/lit8 v2, v2, 0x10

    .line 28889
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$39702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 28890
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->access$39802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;I)I

    .line 28891
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28810
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28810
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 28826
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28827
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 28828
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 28829
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 28830
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 28831
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 28832
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 28833
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 28834
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 28835
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 28836
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 28837
    return-object p0
.end method

.method public clearAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 29152
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 29154
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29155
    return-object p0
.end method

.method public clearError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 29109
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 29111
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29112
    return-object p0
.end method

.method public clearImage()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 29195
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 29197
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29198
    return-object p0
.end method

.method public clearInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 29066
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 29068
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29069
    return-object p0
.end method

.method public clearText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 2

    .prologue
    .line 29023
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29025
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29026
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28810
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28810
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3

    .prologue
    .line 28841
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
    .line 28810
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2

    .prologue
    .line 29121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 28810
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28810
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    .registers 2

    .prologue
    .line 28845
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2

    .prologue
    .line 29078
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object v0
.end method

.method public getImage()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 2

    .prologue
    .line 29164
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    return-object v0
.end method

.method public getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    .registers 2

    .prologue
    .line 29035
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    return-object v0
.end method

.method public getText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 28992
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    .line 29118
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
    .line 29075
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
    .line 29161
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
    .line 29032
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

    .line 28989
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29140
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 29142
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 29148
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29149
    return-object p0

    .line 29145
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    goto :goto_20
.end method

.method public mergeError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29097
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 29099
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 29105
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29106
    return-object p0

    .line 29102
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
    .line 28810
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

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
    .line 28810
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
    .line 28923
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 28924
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_9c

    .line 28929
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28931
    :sswitch_d
    return-object p0

    .line 28936
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    .line 28937
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->hasText()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 28938
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    .line 28940
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28941
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->setText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto :goto_0

    .line 28945
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    .line 28946
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->hasInput()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 28947
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    .line 28949
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28950
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->setInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto :goto_0

    .line 28954
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    .line 28955
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->hasError()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 28956
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    .line 28958
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28959
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto :goto_0

    .line 28963
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    :sswitch_62
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    .line 28964
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->hasAction()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 28965
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    .line 28967
    :cond_73
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28968
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto :goto_0

    .line 28972
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;
    :sswitch_7e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    .line 28973
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 28974
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->getImage()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    .line 28976
    :cond_8f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28977
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->setImage(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto/16 :goto_0

    .line 28924
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
    .line 28895
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28911
    :cond_6
    :goto_6
    return-object p0

    .line 28896
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasText()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28897
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    .line 28899
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 28900
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    .line 28902
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 28903
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getError()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    .line 28905
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 28906
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    .line 28908
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28909
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getImage()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->mergeImage(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;

    goto :goto_6
.end method

.method public mergeImage(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29183
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 29185
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 29191
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29192
    return-object p0

    .line 29188
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    goto :goto_20
.end method

.method public mergeInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29054
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 29056
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 29062
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29063
    return-object p0

    .line 29059
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    goto :goto_1f
.end method

.method public mergeText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29011
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 29013
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29019
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29020
    return-object p0

    .line 29016
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    goto :goto_1f
.end method

.method public setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29134
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 29136
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29137
    return-object p0
.end method

.method public setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29124
    if-nez p1, :cond_8

    .line 29125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29127
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->action_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 29129
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29130
    return-object p0
.end method

.method public setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29091
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 29093
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29094
    return-object p0
.end method

.method public setError(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29081
    if-nez p1, :cond_8

    .line 29082
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29084
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->error_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 29086
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29087
    return-object p0
.end method

.method public setImage(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29177
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 29179
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29180
    return-object p0
.end method

.method public setImage(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29167
    if-nez p1, :cond_8

    .line 29168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29170
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->image_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .line 29172
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29173
    return-object p0
.end method

.method public setInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29048
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 29050
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29051
    return-object p0
.end method

.method public setInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29038
    if-nez p1, :cond_8

    .line 29039
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29041
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->input_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    .line 29043
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29044
    return-object p0
.end method

.method public setText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29005
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29007
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29008
    return-object p0
.end method

.method public setText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28995
    if-nez p1, :cond_8

    .line 28996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28998
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->text_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29000
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField$Builder;->bitField0_:I

    .line 29001
    return-object p0
.end method
