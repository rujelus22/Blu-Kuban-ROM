.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2547
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5800()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    .registers 1

    .prologue
    .line 2541
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    .registers 3

    .prologue
    .line 2550
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;-><init>()V

    .line 2551
    .local v0, builder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    new-instance v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;-><init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V

    iput-object v1, v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    .line 2552
    return-object v0
.end method


# virtual methods
.method public buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    .registers 4

    .prologue
    .line 2596
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    if-nez v1, :cond_c

    .line 2597
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2600
    :cond_c
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    .line 2601
    .local v0, returnMe:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    .line 2602
    return-object v0
.end method

.method public clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    .registers 3

    .prologue
    .line 2569
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    invoke-virtual {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

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
    .line 2541
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2606
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2616
    :cond_6
    :goto_6
    return-object p0

    .line 2607
    :cond_7
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumAllowedOfflineDevices()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2608
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getNumAllowedOfflineDevices()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->setNumAllowedOfflineDevices(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    .line 2610
    :cond_14
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumOfflineDevices()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2611
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getNumOfflineDevices()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->setNumOfflineDevices(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    .line 2613
    :cond_21
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasJustAcquiredOfflineLicense()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2614
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->getJustAcquiredOfflineLicense()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->setJustAcquiredOfflineLicense(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2624
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2625
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 2629
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2630
    :sswitch_d
    return-object p0

    .line 2635
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->setNumAllowedOfflineDevices(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    goto :goto_0

    .line 2639
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->setNumOfflineDevices(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    goto :goto_0

    .line 2643
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->setJustAcquiredOfflineLicense(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    goto :goto_0

    .line 2625
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
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
    .line 2541
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

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
    .line 2541
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setJustAcquiredOfflineLicense(Z)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasJustAcquiredOfflineLicense:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->access$6402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;Z)Z

    .line 2696
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->justAcquiredOfflineLicense_:Z
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->access$6502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;Z)Z

    .line 2697
    return-object p0
.end method

.method public setNumAllowedOfflineDevices(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumAllowedOfflineDevices:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->access$6002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;Z)Z

    .line 2660
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->numAllowedOfflineDevices_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->access$6102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;I)I

    .line 2661
    return-object p0
.end method

.method public setNumOfflineDevices(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->hasNumOfflineDevices:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->access$6202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;Z)Z

    .line 2678
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->numOfflineDevices_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;->access$6302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OfflineLicenseInfo;I)I

    .line 2679
    return-object p0
.end method
