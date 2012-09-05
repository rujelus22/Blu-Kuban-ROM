.class public interface abstract Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;
.super Ljava/lang/Object;
.source "SafeReaderReadbackMessageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SafeReaderMessageListener"
.end annotation


# virtual methods
.method public abstract onDial(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V
.end method

.method public abstract onDisplayed(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V
.end method

.method public abstract onReply(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V
.end method
