.class Lcom/samsung/swift/install/InstallActivity$3;
.super Ljava/lang/Object;
.source "InstallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/install/InstallActivity;->update(ILjava/lang/String;S)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/install/InstallActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/install/InstallActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/samsung/swift/install/InstallActivity$3;->this$0:Lcom/samsung/swift/install/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/samsung/swift/install/InstallActivity$3;->this$0:Lcom/samsung/swift/install/InstallActivity;

    invoke-virtual {v0}, Lcom/samsung/swift/install/InstallActivity;->finish()V

    .line 313
    return-void
.end method
