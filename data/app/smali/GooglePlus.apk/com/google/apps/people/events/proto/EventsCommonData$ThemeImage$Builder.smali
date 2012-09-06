.class public final Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;",
        ">;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImageOrBuilder;"
    }
.end annotation


# instance fields
.field private aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

.field private bitField0_:I

.field private format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2575
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2707
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->GIF:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    .line 2731
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->SMALL:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    .line 2755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->url_:Ljava/lang/Object;

    .line 2576
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->maybeForceBuilderInitialization()V

    .line 2577
    return-void
.end method

.method static synthetic access$3200()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 1

    .prologue
    .line 2570
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 1

    .prologue
    .line 2582
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2580
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;
    .registers 3

    .prologue
    .line 2605
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    move-result-object v0

    .line 2606
    .local v0, result:Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;
    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2607
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2609
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->build()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;
    .registers 6

    .prologue
    .line 2623
    new-instance v1, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V

    .line 2624
    .local v1, result:Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    .line 2625
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2626
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2627
    or-int/lit8 v2, v2, 0x1

    .line 2629
    :cond_10
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->access$3402(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    .line 2630
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2631
    or-int/lit8 v2, v2, 0x2

    .line 2633
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->access$3502(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    .line 2634
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 2635
    or-int/lit8 v2, v2, 0x4

    .line 2637
    :cond_28
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->access$3602(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2638
    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->access$3702(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;I)I

    .line 2639
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 2

    .prologue
    .line 2586
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2587
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->GIF:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    .line 2588
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    .line 2589
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->SMALL:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    .line 2590
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    .line 2591
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->url_:Ljava/lang/Object;

    .line 2592
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    .line 2593
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 3

    .prologue
    .line 2597
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

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
    .line 2570
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;
    .registers 2

    .prologue
    .line 2601
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2657
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2643
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2653
    :cond_6
    :goto_6
    return-object p0

    .line 2644
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->hasFormat()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2645
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getFormat()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->setFormat(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    .line 2647
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->hasAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2648
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getAspectRatio()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->setAspectRatio(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    .line 2650
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2651
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->setUrl(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2665
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2666
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_42

    .line 2671
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2673
    :sswitch_d
    return-object p0

    .line 2678
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2679
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->valueOf(I)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    move-result-object v2

    .line 2680
    .local v2, value:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;
    if-eqz v2, :cond_0

    .line 2681
    iget v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    .line 2682
    iput-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    goto :goto_0

    .line 2687
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2688
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->valueOf(I)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    move-result-object v2

    .line 2689
    .local v2, value:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;
    if-eqz v2, :cond_0

    .line 2690
    iget v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    .line 2691
    iput-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    goto :goto_0

    .line 2696
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;
    :sswitch_34
    iget v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    .line 2697
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 2666
    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_34
    .end sparse-switch
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
    .line 2570
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2570
    check-cast p1, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

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
    .line 2570
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAspectRatio(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2739
    if-nez p1, :cond_8

    .line 2740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2742
    :cond_8
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    .line 2743
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    .line 2745
    return-object p0
.end method

.method public setFormat(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2715
    if-nez p1, :cond_8

    .line 2716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2718
    :cond_8
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    .line 2719
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    .line 2721
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2770
    if-nez p1, :cond_8

    .line 2771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2773
    :cond_8
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->bitField0_:I

    .line 2774
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->url_:Ljava/lang/Object;

    .line 2776
    return-object p0
.end method
