.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$11;
.super Ljava/lang/Object;
.source "AddinPlayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->createAdapter(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->setCurrentIndex(I)V
    invoke-static {v0, p3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)V

    .line 1025
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x898

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1026
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v1

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->tryToNextItem(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$800(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;I)V

    .line 1028
    return-void
.end method
