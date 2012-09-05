.class Lcom/sec/android/app/ve/view/PreviewViewGroup$13;
.super Ljava/lang/Object;
.source "PreviewViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/PreviewViewGroup;->setEditTitleHelveticaNeue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$13;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 1553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1557
    const-string v0, "Click on SelectedAddMedia"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$13;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->endKenburns()Z

    .line 1559
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1560
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchAddMedia()V

    .line 1561
    :cond_17
    return-void
.end method
