.class Lcom/sec/android/app/ve/view/PreviewViewGroup$12;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$12;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 1535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 1539
    const-string v0, "Click on SelectedThemeTitleadd"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$12;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->endKenburns()Z

    .line 1543
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$12;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->lHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1544
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$12;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->lHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1545
    return-void
.end method
