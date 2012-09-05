.class Lcom/android/providers/downloads/ui/SecDownloadList$1;
.super Landroid/content/BroadcastReceiver;
.source "SecDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/SecDownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$1;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$1;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$400(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->invalidate()V

    .line 223
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$1;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeOrderedListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$500(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 224
    return-void
.end method
