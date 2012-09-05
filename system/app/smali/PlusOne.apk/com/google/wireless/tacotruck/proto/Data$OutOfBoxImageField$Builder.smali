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
    .line 29912
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30062
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 30107
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 30150
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29913
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->maybeForceBuilderInitialization()V

    .line 29914
    return-void
.end method

.method static synthetic access$40600()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 1

    .prologue
    .line 29907
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 1

    .prologue
    .line 29919
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 29917
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 3

    .prologue
    .line 29944
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    .line 29945
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 29946
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 29948
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29907
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 6

    .prologue
    .line 29962
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 29963
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 29964
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 29965
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 29966
    or-int/lit8 v2, v2, 0x1

    .line 29968
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->access$40802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 29969
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 29970
    or-int/lit8 v2, v2, 0x2

    .line 29972
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->centered_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->access$40902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Z)Z

    .line 29973
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 29974
    or-int/lit8 v2, v2, 0x4

    .line 29976
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->access$41002(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29977
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 29978
    or-int/lit8 v2, v2, 0x8

    .line 29980
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->access$41102(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29981
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->access$41202(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;I)I

    .line 29982
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29907
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29907
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 29923
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 29924
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 29925
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 29926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    .line 29927
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 29928
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29929
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 29930
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 29931
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 29932
    return-object p0
.end method

.method public clearCentered()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 30100
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    .line 30103
    return-object p0
.end method

.method public clearCoverText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 30143
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 30145
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30146
    return-object p0
.end method

.method public clearDescriptiveText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 30186
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 30188
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30189
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 2

    .prologue
    .line 30079
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30080
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->PICASA:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 30082
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 29907
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29907
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3

    .prologue
    .line 29936
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
    .line 29907
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCentered()Z
    .registers 2

    .prologue
    .line 30091
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    return v0
.end method

.method public getCoverText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 30112
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 29907
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29907
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;
    .registers 2

    .prologue
    .line 29940
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptiveText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 30155
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    .registers 2

    .prologue
    .line 30067
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    return-object v0
.end method

.method public hasCentered()Z
    .registers 3

    .prologue
    .line 30088
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
    .line 30109
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
    .line 30152
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

    .line 30064
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeCoverText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30131
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 30133
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 30139
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30140
    return-object p0

    .line 30136
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    goto :goto_1f
.end method

.method public mergeDescriptiveText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30174
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 30176
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 30182
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30183
    return-object p0

    .line 30179
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
    .line 29907
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

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
    .line 29907
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
    .line 30011
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 30012
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_66

    .line 30017
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 30019
    :sswitch_d
    return-object p0

    .line 30024
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 30025
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    move-result-object v3

    .line 30026
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    if-eqz v3, :cond_0

    .line 30027
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30028
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    goto :goto_0

    .line 30033
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30034
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    goto :goto_0

    .line 30038
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v1

    .line 30039
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->hasCoverText()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 30040
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->getCoverText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    .line 30042
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 30043
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->setCoverText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    goto :goto_0

    .line 30047
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    :sswitch_4a
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v1

    .line 30048
    .restart local v1       #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->hasDescriptiveText()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 30049
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->getDescriptiveText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    .line 30051
    :cond_5b
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 30052
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->setDescriptiveText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    goto :goto_0

    .line 30012
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
    .line 29986
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 29999
    :cond_6
    :goto_6
    return-object p0

    .line 29987
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29988
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    .line 29990
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->hasCentered()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 29991
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getCentered()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->setCentered(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    .line 29993
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->hasCoverText()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 29994
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getCoverText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeCoverText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    .line 29996
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->hasDescriptiveText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29997
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField;->getDescriptiveText()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->mergeDescriptiveText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;

    goto :goto_6
.end method

.method public setCentered(Z)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30094
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30095
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->centered_:Z

    .line 30097
    return-object p0
.end method

.method public setCoverText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 30125
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 30127
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30128
    return-object p0
.end method

.method public setCoverText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30115
    if-nez p1, :cond_8

    .line 30116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30118
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->coverText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 30120
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30121
    return-object p0
.end method

.method public setDescriptiveText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 30168
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 30170
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30171
    return-object p0
.end method

.method public setDescriptiveText(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30158
    if-nez p1, :cond_8

    .line 30159
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30161
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->descriptiveText_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 30163
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30164
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30070
    if-nez p1, :cond_8

    .line 30071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30073
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->bitField0_:I

    .line 30074
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxImageField$Type;

    .line 30076
    return-object p0
.end method
