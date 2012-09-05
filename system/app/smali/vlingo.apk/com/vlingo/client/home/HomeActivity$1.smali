.class Lcom/vlingo/client/home/HomeActivity$1;
.super Landroid/os/Handler;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/home/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/home/HomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/vlingo/client/home/HomeActivity$1;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$1;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/home/HomeActivity;->updateSafeReaderToggleButton()V

    .line 122
    return-void
.end method
