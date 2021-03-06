.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MagazineDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private deliveryFrequencyDescription_:Ljava/lang/String;

.field private deviceAvailabilityDescriptionHtml_:Ljava/lang/String;

.field private hasDeliveryFrequencyDescription:Z

.field private hasDeviceAvailabilityDescriptionHtml:Z

.field private hasParentDetailsUrl:Z

.field private hasPsvDescription:Z

.field private parentDetailsUrl_:Ljava/lang/String;

.field private psvDescription_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3679
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 3701
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deviceAvailabilityDescriptionHtml_:Ljava/lang/String;

    .line 3718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->psvDescription_:Ljava/lang/String;

    .line 3735
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deliveryFrequencyDescription_:Ljava/lang/String;

    .line 3779
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->cachedSize:I

    .line 3679
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 3782
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 3784
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getSerializedSize()I

    .line 3786
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->cachedSize:I

    return v0
.end method

.method public getDeliveryFrequencyDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3736
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deliveryFrequencyDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAvailabilityDescriptionHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3702
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deviceAvailabilityDescriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->parentDetailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPsvDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3719
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->psvDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 3791
    const/4 v0, 0x0

    .line 3792
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasParentDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3793
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3796
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3797
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeviceAvailabilityDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3800
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasPsvDescription()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3801
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getPsvDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3804
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeliveryFrequencyDescription()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 3805
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeliveryFrequencyDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3808
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->cachedSize:I

    .line 3809
    return v0
.end method

.method public hasDeliveryFrequencyDescription()Z
    .registers 2

    .prologue
    .line 3737
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeliveryFrequencyDescription:Z

    return v0
.end method

.method public hasDeviceAvailabilityDescriptionHtml()Z
    .registers 2

    .prologue
    .line 3703
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml:Z

    return v0
.end method

.method public hasParentDetailsUrl()Z
    .registers 2

    .prologue
    .line 3686
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasParentDetailsUrl:Z

    return v0
.end method

.method public hasPsvDescription()Z
    .registers 2

    .prologue
    .line 3720
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasPsvDescription:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3817
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3818
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 3822
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3823
    :sswitch_d
    return-object p0

    .line 3828
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    goto :goto_0

    .line 3832
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->setDeviceAvailabilityDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    goto :goto_0

    .line 3836
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->setPsvDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    goto :goto_0

    .line 3840
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->setDeliveryFrequencyDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    goto :goto_0

    .line 3818
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3676
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    move-result-object v0

    return-object v0
.end method

.method public setDeliveryFrequencyDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 3739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeliveryFrequencyDescription:Z

    .line 3740
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deliveryFrequencyDescription_:Ljava/lang/String;

    .line 3741
    return-object p0
.end method

.method public setDeviceAvailabilityDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 3705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml:Z

    .line 3706
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->deviceAvailabilityDescriptionHtml_:Ljava/lang/String;

    .line 3707
    return-object p0
.end method

.method public setParentDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 3688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasParentDetailsUrl:Z

    .line 3689
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->parentDetailsUrl_:Ljava/lang/String;

    .line 3690
    return-object p0
.end method

.method public setPsvDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 3722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasPsvDescription:Z

    .line 3723
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->psvDescription_:Ljava/lang/String;

    .line 3724
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3765
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasParentDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3766
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getParentDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3768
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3769
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeviceAvailabilityDescriptionHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3771
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasPsvDescription()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3772
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getPsvDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3774
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->hasDeliveryFrequencyDescription()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3775
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;->getDeliveryFrequencyDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3777
    :cond_38
    return-void
.end method
