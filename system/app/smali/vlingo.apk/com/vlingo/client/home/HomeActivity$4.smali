.class Lcom/vlingo/client/home/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/home/HomeActivity;->showError(Ljava/lang/String;)V
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
    .line 453
    iput-object p1, p0, Lcom/vlingo/client/home/HomeActivity$4;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$4;->this$0:Lcom/vlingo/client/home/HomeActivity;

    #calls: Lcom/vlingo/client/home/HomeActivity;->loadHints()V
    invoke-static {v0}, Lcom/vlingo/client/home/HomeActivity;->access$200(Lcom/vlingo/client/home/HomeActivity;)V

    .line 456
    return-void
.end method
