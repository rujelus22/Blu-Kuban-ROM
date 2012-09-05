.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3233
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7400()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    .registers 1

    .prologue
    .line 3227
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    .registers 3

    .prologue
    .line 3236
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;-><init>()V

    .line 3237
    .local v0, builder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    new-instance v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;-><init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V

    iput-object v1, v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    .line 3238
    return-object v0
.end method


# virtual methods
.method public buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;
    .registers 4

    .prologue
    .line 3282
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    if-nez v1, :cond_c

    .line 3283
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3286
    :cond_c
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    .line 3287
    .local v0, returnMe:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    .line 3288
    return-object v0
.end method

.method public clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    .registers 3

    .prologue
    .line 3255
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    invoke-virtual {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

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
    .line 3227
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getRegion()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2

    .prologue
    .line 3347
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getRegion()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    return-object v0
.end method

.method public hasRegion()Z
    .registers 2

    .prologue
    .line 3344
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasRegion()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 3292
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3302
    :cond_6
    :goto_6
    return-object p0

    .line 3293
    :cond_7
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3294
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getRegion()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->mergeRegion(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    .line 3296
    :cond_14
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasTargetPid()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3297
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getTargetPid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->setTargetPid(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    .line 3299
    :cond_21
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3300
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->setUrl(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3310
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3311
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3a

    .line 3315
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3316
    :sswitch_d
    return-object p0

    .line 3321
    :sswitch_e
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    .line 3322
    .local v0, subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->hasRegion()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3323
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->getRegion()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    .line 3325
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3326
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->setRegion(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    goto :goto_0

    .line 3330
    .end local v0           #subBuilder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->setTargetPid(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    goto :goto_0

    .line 3334
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->setUrl(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    goto :goto_0

    .line 3311
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0x2a -> :sswitch_e
        0x32 -> :sswitch_2a
        0x9a -> :sswitch_32
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
    .line 3227
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

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
    .line 3227
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeRegion(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->region_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->access$7700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 3365
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    #getter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->region_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->access$7700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->region_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->access$7702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 3370
    :goto_2b
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasRegion:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->access$7602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Z)Z

    .line 3371
    return-object p0

    .line 3368
    :cond_32
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->region_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->access$7702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    goto :goto_2b
.end method

.method public setRegion(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3350
    if-nez p1, :cond_8

    .line 3351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3353
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasRegion:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->access$7602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Z)Z

    .line 3354
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->region_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->access$7702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 3355
    return-object p0
.end method

.method public setTargetPid(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3387
    if-nez p1, :cond_8

    .line 3388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3390
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasTargetPid:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->access$7802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Z)Z

    .line 3391
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->targetPid_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->access$7902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Ljava/lang/String;)Ljava/lang/String;

    .line 3392
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3408
    if-nez p1, :cond_8

    .line 3409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3411
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasUrl:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->access$8002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Z)Z

    .line 3412
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->url_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->access$8102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Ljava/lang/String;)Ljava/lang/String;

    .line 3413
    return-object p0
.end method
