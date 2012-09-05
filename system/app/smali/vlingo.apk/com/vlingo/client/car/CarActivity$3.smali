.class Lcom/vlingo/client/car/CarActivity$3;
.super Ljava/lang/Object;
.source "CarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$3;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$3;->this$0:Lcom/vlingo/client/car/CarActivity;

    #calls: Lcom/vlingo/client/car/CarActivity;->handleAnyNewIntent()V
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$500(Lcom/vlingo/client/car/CarActivity;)V

    .line 506
    return-void
.end method
