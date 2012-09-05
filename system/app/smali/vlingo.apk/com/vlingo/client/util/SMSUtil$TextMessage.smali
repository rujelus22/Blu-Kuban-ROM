.class public Lcom/vlingo/client/util/SMSUtil$TextMessage;
.super Ljava/lang/Object;
.source "SMSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/util/SMSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextMessage"
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final body:Ljava/lang/String;

.field public final date:J

.field public final id:J

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 8
    .parameter "address"
    .parameter "name"
    .parameter "body"
    .parameter "id"
    .parameter "date"

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->address:Ljava/lang/String;

    .line 630
    iput-object p2, p0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    .line 631
    iput-object p3, p0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->body:Ljava/lang/String;

    .line 632
    iput-wide p4, p0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->id:J

    .line 633
    iput-wide p6, p0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->date:J

    .line 634
    return-void
.end method


# virtual methods
.method public convertToMessageContext()Lcom/vlingo/client/safereader/MessageContext;
    .registers 6

    .prologue
    .line 637
    new-instance v0, Lcom/vlingo/client/safereader/MessageContext;

    sget-object v1, Lcom/vlingo/client/safereader/MessageContext$MessageType;->SMS:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    iget-object v2, p0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->address:Ljava/lang/String;

    iget-object v3, p0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/vlingo/client/util/SMSUtil$TextMessage;->body:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vlingo/client/safereader/MessageContext;-><init>(Lcom/vlingo/client/safereader/MessageContext$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
