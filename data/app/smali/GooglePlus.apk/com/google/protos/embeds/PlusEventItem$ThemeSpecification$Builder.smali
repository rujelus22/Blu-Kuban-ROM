.class public final Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$ThemeSpecificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;",
        "Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;",
        ">;",
        "Lcom/google/protos/embeds/PlusEventItem$ThemeSpecificationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private imageUrl_:Ljava/lang/Object;

.field private themeId_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2864
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2974
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->imageUrl_:Ljava/lang/Object;

    .line 2865
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->maybeForceBuilderInitialization()V

    .line 2866
    return-void
.end method

.method static synthetic access$3100()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 1

    .prologue
    .line 2859
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 1

    .prologue
    .line 2871
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2869
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->build()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    .registers 3

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    .line 2893
    .local v0, result:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    invoke-virtual {v0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2894
    invoke-static {v0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2896
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    .registers 6

    .prologue
    .line 2910
    new-instance v1, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;-><init>(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V

    .line 2911
    .local v1, result:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    .line 2912
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2913
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2914
    or-int/lit8 v2, v2, 0x1

    .line 2916
    :cond_10
    iget-object v3, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->imageUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->imageUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->access$3302(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2917
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2918
    or-int/lit8 v2, v2, 0x2

    .line 2920
    :cond_1c
    iget v3, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->themeId_:I

    #setter for: Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->themeId_:I
    invoke-static {v1, v3}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->access$3402(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;I)I

    .line 2921
    #setter for: Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->access$3502(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;I)I

    .line 2922
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->clear()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 2

    .prologue
    .line 2875
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2876
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->imageUrl_:Ljava/lang/Object;

    .line 2877
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    .line 2878
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->themeId_:I

    .line 2879
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    .line 2880
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 3

    .prologue
    .line 2884
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->buildPartial()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

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
    .line 2859
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->clone()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    .registers 2

    .prologue
    .line 2888
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2937
    const/4 v0, 0x1

    return v0
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
    .line 2859
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2859
    check-cast p1, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

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
    .line 2859
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2945
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2946
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 2951
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2953
    :sswitch_d
    return-object p0

    .line 2958
    :sswitch_e
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    .line 2959
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->imageUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 2963
    :sswitch_1b
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    .line 2964
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->themeId_:I

    goto :goto_0

    .line 2946
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2926
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2933
    :cond_6
    :goto_6
    return-object p0

    .line 2927
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2928
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->setImageUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    .line 2930
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->hasThemeId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2931
    invoke-virtual {p1}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getThemeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->setThemeId(I)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    goto :goto_6
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2989
    if-nez p1, :cond_8

    .line 2990
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2992
    :cond_8
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    .line 2993
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->imageUrl_:Ljava/lang/Object;

    .line 2995
    return-object p0
.end method

.method public setThemeId(I)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3018
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->bitField0_:I

    .line 3019
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->themeId_:I

    .line 3021
    return-object p0
.end method
