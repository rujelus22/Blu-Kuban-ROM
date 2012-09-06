.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageFieldOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private centered_:Z

.field private coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

.field private descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32693
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 32843
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32888
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32931
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32694
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->maybeForceBuilderInitialization()V

    .line 32695
    return-void
.end method

.method static synthetic access$44100()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 1

    .prologue
    .line 32688
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 1

    .prologue
    .line 32700
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 32698
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32688
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 3

    .prologue
    .line 32725
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    .line 32726
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 32727
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 32729
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32688
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 6

    .prologue
    .line 32743
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 32744
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32745
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 32746
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 32747
    or-int/lit8 v2, v2, 0x1

    .line 32749
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->access$44302(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32750
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 32751
    or-int/lit8 v2, v2, 0x2

    .line 32753
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->access$44402(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Z)Z

    .line 32754
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 32755
    or-int/lit8 v2, v2, 0x4

    .line 32757
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->access$44502(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32758
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 32759
    or-int/lit8 v2, v2, 0x8

    .line 32761
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->access$44602(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32762
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->access$44702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;I)I

    .line 32763
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32688
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32688
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 32704
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 32705
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32706
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    .line 32708
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32709
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32710
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32711
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32712
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32713
    return-object p0
.end method

.method public clearCentered()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 32881
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32882
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    .line 32884
    return-object p0
.end method

.method public clearCoverText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 32924
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32926
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32927
    return-object p0
.end method

.method public clearDescriptiveText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 32967
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32969
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32970
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 32860
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32861
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32863
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 32688
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32688
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3

    .prologue
    .line 32717
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

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
    .line 32688
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCentered()Z
    .registers 2

    .prologue
    .line 32872
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    return v0
.end method

.method public getCoverText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 32893
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 32688
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32688
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 2

    .prologue
    .line 32721
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptiveText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 32936
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    .registers 2

    .prologue
    .line 32848
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    return-object v0
.end method

.method public hasCentered()Z
    .registers 3

    .prologue
    .line 32869
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

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

.method public hasCoverText()Z
    .registers 3

    .prologue
    .line 32890
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

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

.method public hasDescriptiveText()Z
    .registers 3

    .prologue
    .line 32933
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32845
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

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
    .line 32784
    const/4 v0, 0x1

    return v0
.end method

.method public mergeCoverText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 32912
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 32914
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32920
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32921
    return-object p0

    .line 32917
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    goto :goto_1f
.end method

.method public mergeDescriptiveText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 32955
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 32957
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32963
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32964
    return-object p0

    .line 32960
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    goto :goto_20
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
    .line 32688
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 32688
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

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
    .line 32688
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32792
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 32793
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_66

    .line 32798
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 32800
    :sswitch_d
    return-object p0

    .line 32805
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 32806
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    move-result-object v3

    .line 32807
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    if-eqz v3, :cond_0

    .line 32808
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32809
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    goto :goto_0

    .line 32814
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32815
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    goto :goto_0

    .line 32819
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v1

    .line 32820
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->hasCoverText()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 32821
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->getCoverText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    .line 32823
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 32824
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->setCoverText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    goto :goto_0

    .line 32828
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    :sswitch_4a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v1

    .line 32829
    .restart local v1       #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->hasDescriptiveText()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 32830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->getDescriptiveText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    .line 32832
    :cond_5b
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 32833
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->setDescriptiveText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    goto :goto_0

    .line 32793
    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_4a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 32767
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32780
    :cond_6
    :goto_6
    return-object p0

    .line 32768
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32769
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    .line 32771
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->hasCentered()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 32772
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getCentered()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->setCentered(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    .line 32774
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->hasCoverText()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 32775
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getCoverText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeCoverText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    .line 32777
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->hasDescriptiveText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32778
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDescriptiveText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeDescriptiveText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    goto :goto_6
.end method

.method public setCentered(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32875
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32876
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    .line 32878
    return-object p0
.end method

.method public setCoverText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 32906
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32908
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32909
    return-object p0
.end method

.method public setCoverText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32896
    if-nez p1, :cond_8

    .line 32897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32899
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32901
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32902
    return-object p0
.end method

.method public setDescriptiveText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 32949
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32951
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32952
    return-object p0
.end method

.method public setDescriptiveText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32939
    if-nez p1, :cond_8

    .line 32940
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32942
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32944
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32945
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32851
    if-nez p1, :cond_8

    .line 32852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32854
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 32855
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 32857
    return-object p0
.end method
