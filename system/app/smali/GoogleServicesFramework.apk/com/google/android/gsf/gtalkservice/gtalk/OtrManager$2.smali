.class Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$2;
.super Ljava/lang/Object;
.source "OtrManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;->goOffRecordInRoom(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

.field final synthetic val$otrStatus:Z


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager;

    iput-boolean p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$2;->val$otrStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .registers 5
    .parameter "packet"

    .prologue
    .line 125
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_28

    .line 127
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change OTR status for group chat to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/OtrManager$2;->val$otrStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_28
    return-void
.end method
