.class public final Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserSettings"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasTosCheckboxMarketingEmailsOptedIn:Z

.field private tosCheckboxMarketingEmailsOptedIn_:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->tosCheckboxMarketingEmailsOptedIn_:Z

    .line 710
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->cachedSize:I

    .line 673
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 713
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->cachedSize:I

    if-gez v0, :cond_7

    .line 715
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->getSerializedSize()I

    .line 717
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->hasTosCheckboxMarketingEmailsOptedIn()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 724
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->getTosCheckboxMarketingEmailsOptedIn()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 727
    :cond_11
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->cachedSize:I

    .line 728
    return v0
.end method

.method public getTosCheckboxMarketingEmailsOptedIn()Z
    .registers 2

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->tosCheckboxMarketingEmailsOptedIn_:Z

    return v0
.end method

.method public hasTosCheckboxMarketingEmailsOptedIn()Z
    .registers 2

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->hasTosCheckboxMarketingEmailsOptedIn:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 737
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 741
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 742
    :sswitch_d
    return-object p0

    .line 747
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->setTosCheckboxMarketingEmailsOptedIn(Z)Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    goto :goto_0

    .line 737
    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 670
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;

    move-result-object v0

    return-object v0
.end method

.method public setTosCheckboxMarketingEmailsOptedIn(Z)Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;
    .registers 3
    .parameter "value"

    .prologue
    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->hasTosCheckboxMarketingEmailsOptedIn:Z

    .line 683
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->tosCheckboxMarketingEmailsOptedIn_:Z

    .line 684
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
    .line 705
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->hasTosCheckboxMarketingEmailsOptedIn()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 706
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$UserSettings;->getTosCheckboxMarketingEmailsOptedIn()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 708
    :cond_e
    return-void
.end method
