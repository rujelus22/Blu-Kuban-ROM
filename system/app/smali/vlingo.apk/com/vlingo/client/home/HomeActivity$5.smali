.class Lcom/vlingo/client/home/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/home/HomeActivity;->processScrollForDebugging(I)V
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
    .line 586
    iput-object p1, p0, Lcom/vlingo/client/home/HomeActivity$5;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "arg0"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$5;->this$0:Lcom/vlingo/client/home/HomeActivity;

    const/4 v1, 0x1

    #setter for: Lcom/vlingo/client/home/HomeActivity;->enableDebugMenu:Z
    invoke-static {v0, v1}, Lcom/vlingo/client/home/HomeActivity;->access$402(Lcom/vlingo/client/home/HomeActivity;Z)Z

    .line 589
    const/4 v0, 0x0

    return v0
.end method
