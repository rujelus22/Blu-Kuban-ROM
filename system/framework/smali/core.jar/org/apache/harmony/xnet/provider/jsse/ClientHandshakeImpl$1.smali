.class Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;
.super Ljava/lang/Object;
.source "ClientHandshakeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unwrap([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->processServerHelloDone()V

    .line 284
    return-void
.end method
