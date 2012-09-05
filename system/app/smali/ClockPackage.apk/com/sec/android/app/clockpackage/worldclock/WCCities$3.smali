.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;->initLocationButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 630
    const-string v0, "WorldClock"

    const-string v1, "onclick!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->button:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$400(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsFindingLocation:Z
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$500(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 666
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsFindingLocation:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$502(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Z)Z

    .line 667
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 668
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->findLocationByMNC()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$600(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    .line 672
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 673
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsFindingLocation:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$502(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Z)Z

    .line 679
    :goto_35
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$700(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    return-void

    .line 677
    :cond_43
    const-string v0, "WorldClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currnet location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$3;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mIsFindingLocation:Z
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$500(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method
