.class Lcom/swype/android/connect/ConnectClient$5;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/connect/ConnectClient;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/connect/ConnectClient;


# direct methods
.method constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 2
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/swype/android/connect/ConnectClient$5;->this$0:Lcom/swype/android/connect/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient$5;->this$0:Lcom/swype/android/connect/ConnectClient;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 722
    return-void
.end method
