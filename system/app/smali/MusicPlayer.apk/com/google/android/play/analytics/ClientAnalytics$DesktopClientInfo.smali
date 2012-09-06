.class public final Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ClientAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DesktopClientInfo"
.end annotation


# instance fields
.field private applicationBuild_:Ljava/lang/String;

.field private cachedSize:I

.field private clientId_:Ljava/lang/String;

.field private hasApplicationBuild:Z

.field private hasClientId:Z

.field private hasLoggingId:Z

.field private hasOs:Z

.field private hasOsFullVersion:Z

.field private hasOsMajorVersion:Z

.field private loggingId_:Ljava/lang/String;

.field private osFullVersion_:Ljava/lang/String;

.field private osMajorVersion_:Ljava/lang/String;

.field private os_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 569
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->clientId_:Ljava/lang/String;

    .line 586
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->loggingId_:Ljava/lang/String;

    .line 603
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->os_:Ljava/lang/String;

    .line 620
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->osMajorVersion_:Ljava/lang/String;

    .line 637
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->osFullVersion_:Ljava/lang/String;

    .line 654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->applicationBuild_:Ljava/lang/String;

    .line 705
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->cachedSize:I

    .line 564
    return-void
.end method


# virtual methods
.method public getApplicationBuild()Ljava/lang/String;
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->applicationBuild_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 707
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->cachedSize:I

    if-gez v0, :cond_7

    .line 709
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getSerializedSize()I

    .line 711
    :cond_7
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->cachedSize:I

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->loggingId_:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->os_:Ljava/lang/String;

    return-object v0
.end method

.method public getOsFullVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->osFullVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getOsMajorVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->osMajorVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasClientId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 717
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 720
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasLoggingId()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 721
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getLoggingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 724
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOs()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 725
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getOs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 728
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOsMajorVersion()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 729
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getOsMajorVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 732
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOsFullVersion()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 733
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getOsFullVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 736
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasApplicationBuild()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 737
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getApplicationBuild()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 740
    :cond_61
    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->cachedSize:I

    .line 741
    return v0
.end method

.method public hasApplicationBuild()Z
    .registers 2

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasApplicationBuild:Z

    return v0
.end method

.method public hasClientId()Z
    .registers 2

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasClientId:Z

    return v0
.end method

.method public hasLoggingId()Z
    .registers 2

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasLoggingId:Z

    return v0
.end method

.method public hasOs()Z
    .registers 2

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOs:Z

    return v0
.end method

.method public hasOsFullVersion()Z
    .registers 2

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOsFullVersion:Z

    return v0
.end method

.method public hasOsMajorVersion()Z
    .registers 2

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOsMajorVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 749
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3e

    .line 753
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    :sswitch_d
    return-object p0

    .line 759
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->setClientId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    goto :goto_0

    .line 763
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->setLoggingId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    goto :goto_0

    .line 767
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->setOs(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    goto :goto_0

    .line 771
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->setOsMajorVersion(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    goto :goto_0

    .line 775
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->setOsFullVersion(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    goto :goto_0

    .line 779
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->setApplicationBuild(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    goto :goto_0

    .line 749
    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
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
    .line 562
    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationBuild(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasApplicationBuild:Z

    .line 659
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->applicationBuild_:Ljava/lang/String;

    .line 660
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasClientId:Z

    .line 574
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->clientId_:Ljava/lang/String;

    .line 575
    return-object p0
.end method

.method public setLoggingId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasLoggingId:Z

    .line 591
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->loggingId_:Ljava/lang/String;

    .line 592
    return-object p0
.end method

.method public setOs(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOs:Z

    .line 608
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->os_:Ljava/lang/String;

    .line 609
    return-object p0
.end method

.method public setOsFullVersion(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOsFullVersion:Z

    .line 642
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->osFullVersion_:Ljava/lang/String;

    .line 643
    return-object p0
.end method

.method public setOsMajorVersion(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOsMajorVersion:Z

    .line 625
    iput-object p1, p0, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->osMajorVersion_:Ljava/lang/String;

    .line 626
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
    .line 685
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasClientId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 686
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 688
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasLoggingId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 689
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getLoggingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 691
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOs()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 692
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getOs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 694
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOsMajorVersion()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 695
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getOsMajorVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 697
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasOsFullVersion()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 698
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getOsFullVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 700
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->hasApplicationBuild()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 701
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$DesktopClientInfo;->getApplicationBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 703
    :cond_54
    return-void
.end method
