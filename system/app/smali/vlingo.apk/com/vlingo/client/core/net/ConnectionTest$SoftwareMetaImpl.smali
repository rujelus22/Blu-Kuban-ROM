.class Lcom/vlingo/client/core/net/ConnectionTest$SoftwareMetaImpl;
.super Lcom/vlingo/client/core/recognizer/SoftwareMeta;
.source "ConnectionTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/net/ConnectionTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftwareMetaImpl"
.end annotation


# instance fields
.field parent:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

.field final synthetic this$0:Lcom/vlingo/client/core/net/ConnectionTest;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/net/ConnectionTest;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vlingo/client/core/net/ConnectionTest$SoftwareMetaImpl;->this$0:Lcom/vlingo/client/core/net/ConnectionTest;

    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;-><init>()V

    .line 32
    invoke-static {}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->getInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/net/ConnectionTest$SoftwareMetaImpl;->parent:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    .line 33
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vlingo/client/core/net/ConnectionTest$SoftwareMetaImpl;->parent:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vlingo/client/core/net/ConnectionTest$SoftwareMetaImpl;->parent:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ConnTest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vlingo/client/core/net/ConnectionTest$SoftwareMetaImpl;->parent:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
