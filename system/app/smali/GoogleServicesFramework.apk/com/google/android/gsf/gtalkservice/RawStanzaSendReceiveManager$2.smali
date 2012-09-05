.class Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$2;
.super Ljava/lang/Object;
.source "RawStanzaSendReceiveManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->init(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Endpoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$2;->this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .registers 10
    .parameter "packet"

    .prologue
    const/4 v6, 0x0

    .line 94
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v2

    .line 95
    .local v2, packetAccountId:J
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$2;->this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->access$300(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v4

    .line 96
    .local v4, sessionAccountId:J
    cmp-long v7, v2, v4

    if-eqz v7, :cond_14

    .line 108
    :cond_13
    :goto_13
    return v6

    .line 100
    :cond_14
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getExtensions()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    .local v1, extensions:Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 103
    .local v0, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    instance-of v7, v0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    if-eqz v7, :cond_18

    .line 104
    const/4 v6, 0x1

    goto :goto_13
.end method
