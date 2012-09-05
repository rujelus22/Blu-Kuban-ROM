.class Lcom/samsung/swift/security/SecurityManagerChallange$1$1;
.super Ljava/lang/Object;
.source "SecurityManagerChallange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/SecurityManagerChallange$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/swift/security/SecurityManagerChallange$1;

.field final synthetic val$hostName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/SecurityManagerChallange$1;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1$1;->this$1:Lcom/samsung/swift/security/SecurityManagerChallange$1;

    iput-object p2, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1$1;->val$hostName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1$1;->this$1:Lcom/samsung/swift/security/SecurityManagerChallange$1;

    iget-object v0, v0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1$1;->val$hostName:Ljava/lang/String;

    #setter for: Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$202(Lcom/samsung/swift/security/SecurityManagerChallange;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange$1$1;->this$1:Lcom/samsung/swift/security/SecurityManagerChallange$1;

    iget-object v0, v0, Lcom/samsung/swift/security/SecurityManagerChallange$1;->this$0:Lcom/samsung/swift/security/SecurityManagerChallange;

    #calls: Lcom/samsung/swift/security/SecurityManagerChallange;->setConnectionName()V
    invoke-static {v0}, Lcom/samsung/swift/security/SecurityManagerChallange;->access$300(Lcom/samsung/swift/security/SecurityManagerChallange;)V

    .line 373
    return-void
.end method
