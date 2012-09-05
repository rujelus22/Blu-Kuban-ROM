.class Lcom/vlingo/client/car/iux/CarIUXActivity$8;
.super Ljava/lang/Object;
.source "CarIUXActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/iux/CarIUXActivity;->onCachingStarted()V
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
    .line 313
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$8;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$8;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    #getter for: Lcom/vlingo/client/car/iux/CarIUXActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->access$300(Lcom/vlingo/client/car/iux/CarIUXActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 318
    return-void
.end method
