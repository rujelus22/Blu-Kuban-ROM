.class Lcom/vlingo/client/car/iux/CarIUXActivity$6;
.super Ljava/lang/Object;
.source "CarIUXActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/iux/CarIUXActivity;->onCachingCancelled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/iux/CarIUXActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$6;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$6;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    #calls: Lcom/vlingo/client/car/iux/CarIUXActivity;->onCachingComplete()V
    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->access$100(Lcom/vlingo/client/car/iux/CarIUXActivity;)V

    .line 290
    return-void
.end method
