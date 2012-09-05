.class Lcom/samsung/swift/controller/StoppedState$2;
.super Ljava/lang/Object;
.source "StoppedState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/controller/StoppedState;->onUpdateInstallerDisplay(Lcom/samsung/swift/install/InstallActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/controller/StoppedState;

.field final synthetic val$installActivity:Lcom/samsung/swift/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/controller/StoppedState;Lcom/samsung/swift/install/InstallActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/samsung/swift/controller/StoppedState$2;->this$0:Lcom/samsung/swift/controller/StoppedState;

    iput-object p2, p0, Lcom/samsung/swift/controller/StoppedState$2;->val$installActivity:Lcom/samsung/swift/install/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/swift/controller/StoppedState$2;->val$installActivity:Lcom/samsung/swift/install/InstallActivity;

    invoke-virtual {v0}, Lcom/samsung/swift/install/InstallActivity;->finish()V

    .line 331
    return-void
.end method
