.class Lcom/syncmldstmo/network/smlHttpAdapter$1;
.super Ljava/lang/Object;
.source "smlHttpAdapter.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/network/smlHttpAdapter;->smltpConnect()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/network/smlHttpAdapter;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/network/smlHttpAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/syncmldstmo/network/smlHttpAdapter$1;->this$0:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 370
    const/16 v0, 0x8

    const-string v1, ">>>>>>> Handshake finished! <<<<<<<<"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 371
    return-void
.end method
