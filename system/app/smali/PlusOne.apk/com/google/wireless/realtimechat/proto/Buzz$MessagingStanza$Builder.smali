.class public final Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanzaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanzaOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

.field private compressionType_:I

.field private recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

.field private sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

.field private xmppStanza_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2525
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2709
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2752
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->xmppStanza_:Ljava/lang/Object;

    .line 2852
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 2526
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->maybeForceBuilderInitialization()V

    .line 2527
    return-void
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 1

    .prologue
    .line 2532
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2530
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;
    .registers 6

    .prologue
    .line 2577
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V

    .line 2578
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2579
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2580
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2581
    or-int/lit8 v2, v2, 0x1

    .line 2583
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->access$3602(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2584
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2585
    or-int/lit8 v2, v2, 0x2

    .line 2587
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->access$3702(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2588
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 2589
    or-int/lit8 v2, v2, 0x4

    .line 2591
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->xmppStanza_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->xmppStanza_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->access$3802(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2592
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 2593
    or-int/lit8 v2, v2, 0x8

    .line 2595
    :cond_35
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->compressionType_:I

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->compressionType_:I
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->access$3902(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;I)I

    .line 2596
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 2597
    or-int/lit8 v2, v2, 0x10

    .line 2599
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->access$4002(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 2600
    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->access$4102(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;I)I

    .line 2601
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 2

    .prologue
    .line 2536
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2537
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2538
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2539
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2540
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2541
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->xmppStanza_:Ljava/lang/Object;

    .line 2542
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2543
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->compressionType_:I

    .line 2544
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2545
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 2546
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2547
    return-object p0
.end method

.method public clearBuzzHeader()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 2

    .prologue
    .line 2888
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 2890
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2891
    return-object p0
.end method

.method public clearCompressionType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 2

    .prologue
    .line 2845
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2846
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->compressionType_:I

    .line 2848
    return-object p0
.end method

.method public clearRecipient()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 2

    .prologue
    .line 2745
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2747
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2748
    return-object p0
.end method

.method public clearSender()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 2

    .prologue
    .line 2788
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2790
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2791
    return-object p0
.end method

.method public clearXmppStanza()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 2

    .prologue
    .line 2819
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2820
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getXmppStanza()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->xmppStanza_:Ljava/lang/Object;

    .line 2822
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 3

    .prologue
    .line 2551
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

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
    .line 2520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBuzzHeader()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    .registers 2

    .prologue
    .line 2857
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    return-object v0
.end method

.method public getCompressionType()I
    .registers 2

    .prologue
    .line 2836
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->compressionType_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;
    .registers 2

    .prologue
    .line 2555
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    move-result-object v0

    return-object v0
.end method

.method public getRecipient()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object v0
.end method

.method public getSender()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object v0
.end method

.method public getXmppStanza()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->xmppStanza_:Ljava/lang/Object;

    .line 2801
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2802
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2803
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->xmppStanza_:Ljava/lang/Object;

    .line 2806
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasBuzzHeader()Z
    .registers 3

    .prologue
    .line 2854
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

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

.method public hasCompressionType()Z
    .registers 3

    .prologue
    .line 2833
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

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

.method public hasRecipient()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2711
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSender()Z
    .registers 3

    .prologue
    .line 2754
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

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

.method public hasXmppStanza()Z
    .registers 3

    .prologue
    .line 2797
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

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

.method public mergeBuzzHeader(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2876
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2878
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 2884
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2885
    return-object p0

    .line 2881
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

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
    .line 2520
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

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
    .line 2520
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2653
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2654
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_7c

    .line 2659
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2661
    :sswitch_d
    return-object p0

    .line 2666
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    .line 2667
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->hasRecipient()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2668
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->getRecipient()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    .line 2670
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2671
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->setRecipient(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    goto :goto_0

    .line 2675
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    .line 2676
    .restart local v0       #subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->hasSender()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 2677
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->getSender()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    .line 2679
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2680
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->setSender(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    goto :goto_0

    .line 2684
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    :sswitch_46
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2685
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->xmppStanza_:Ljava/lang/Object;

    goto :goto_0

    .line 2689
    :sswitch_53
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    .line 2690
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->hasBuzzHeader()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2691
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->getBuzzHeader()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    .line 2693
    :cond_64
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2694
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->setBuzzHeader(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    goto :goto_0

    .line 2698
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    :sswitch_6f
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2699
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->compressionType_:I

    goto :goto_0

    .line 2654
    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_46
        0x22 -> :sswitch_53
        0x28 -> :sswitch_6f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2605
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2621
    :cond_6
    :goto_6
    return-object p0

    .line 2606
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->hasRecipient()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2607
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getRecipient()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->mergeRecipient(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    .line 2609
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->hasSender()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2610
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getSender()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->mergeSender(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    .line 2612
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->hasXmppStanza()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2613
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getXmppStanza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->setXmppStanza(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    .line 2615
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->hasCompressionType()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2616
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getCompressionType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->setCompressionType(I)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    .line 2618
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->hasBuzzHeader()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2619
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getBuzzHeader()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->mergeBuzzHeader(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;

    goto :goto_6
.end method

.method public mergeRecipient(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2733
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2735
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2741
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2742
    return-object p0

    .line 2738
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    goto :goto_1f
.end method

.method public mergeSender(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2776
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2778
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2784
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2785
    return-object p0

    .line 2781
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    goto :goto_1f
.end method

.method public setBuzzHeader(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2870
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 2872
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2873
    return-object p0
.end method

.method public setBuzzHeader(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2860
    if-nez p1, :cond_8

    .line 2861
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2863
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 2865
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2866
    return-object p0
.end method

.method public setCompressionType(I)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2839
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2840
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->compressionType_:I

    .line 2842
    return-object p0
.end method

.method public setRecipient(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2727
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2729
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2730
    return-object p0
.end method

.method public setRecipient(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2717
    if-nez p1, :cond_8

    .line 2718
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2720
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2722
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2723
    return-object p0
.end method

.method public setSender(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2770
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2772
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2773
    return-object p0
.end method

.method public setSender(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2760
    if-nez p1, :cond_8

    .line 2761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2763
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2765
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2766
    return-object p0
.end method

.method public setXmppStanza(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2810
    if-nez p1, :cond_8

    .line 2811
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2813
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->bitField0_:I

    .line 2814
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;->xmppStanza_:Ljava/lang/Object;

    .line 2816
    return-object p0
.end method
