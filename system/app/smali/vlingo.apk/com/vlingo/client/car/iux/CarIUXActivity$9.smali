.class Lcom/vlingo/client/car/iux/CarIUXActivity$9;
.super Ljava/lang/Object;
.source "CarIUXActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/iux/CarIUXActivity;->onCachingUpdated(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

.field final synthetic val$percentage:F


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/iux/CarIUXActivity;F)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$9;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    iput p2, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$9;->val$percentage:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$9;->this$0:Lcom/vlingo/client/car/iux/CarIUXActivity;

    #getter for: Lcom/vlingo/client/car/iux/CarIUXActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->access$300(Lcom/vlingo/client/car/iux/CarIUXActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity$9;->val$percentage:F

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 328
    return-void
.end method
