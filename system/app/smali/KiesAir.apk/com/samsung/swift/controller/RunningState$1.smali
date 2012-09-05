.class Lcom/samsung/swift/controller/RunningState$1;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/controller/RunningState;->startChallange(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/controller/RunningState;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/controller/RunningState;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/samsung/swift/controller/RunningState$1;->this$0:Lcom/samsung/swift/controller/RunningState;

    iput-object p2, p0, Lcom/samsung/swift/controller/RunningState$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/swift/controller/RunningState$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/swift/security/SecurityManagerChallange;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 371
    return-void
.end method
