.class public final Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranslatedText"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSourceLocale:Z

.field private hasTargetLocale:Z

.field private hasText:Z

.field private sourceLocale_:Ljava/lang/String;

.field private targetLocale_:Ljava/lang/String;

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->text_:Ljava/lang/String;

    .line 597
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->sourceLocale_:Ljava/lang/String;

    .line 614
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->targetLocale_:Ljava/lang/String;

    .line 655
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    .line 575
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 657
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    if-gez v0, :cond_7

    .line 659
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getSerializedSize()I

    .line 661
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 667
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 670
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 671
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getSourceLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 674
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 675
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getTargetLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 678
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    .line 679
    return v0
.end method

.method public getSourceLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->sourceLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->targetLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSourceLocale()Z
    .registers 2

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale:Z

    return v0
.end method

.method public hasTargetLocale()Z
    .registers 2

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale:Z

    return v0
.end method

.method public hasText()Z
    .registers 2

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 687
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 691
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    :sswitch_d
    return-object p0

    .line 697
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->setText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    goto :goto_0

    .line 701
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->setSourceLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    goto :goto_0

    .line 705
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->setTargetLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    goto :goto_0

    .line 687
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
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
    .line 573
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    move-result-object v0

    return-object v0
.end method

.method public setSourceLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .registers 3
    .parameter "value"

    .prologue
    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale:Z

    .line 602
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->sourceLocale_:Ljava/lang/String;

    .line 603
    return-object p0
.end method

.method public setTargetLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .registers 3
    .parameter "value"

    .prologue
    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale:Z

    .line 619
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->targetLocale_:Ljava/lang/String;

    .line 620
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .registers 3
    .parameter "value"

    .prologue
    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText:Z

    .line 585
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->text_:Ljava/lang/String;

    .line 586
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
    .line 644
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 645
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 647
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 648
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getSourceLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 650
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 651
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getTargetLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 653
    :cond_2a
    return-void
.end method
