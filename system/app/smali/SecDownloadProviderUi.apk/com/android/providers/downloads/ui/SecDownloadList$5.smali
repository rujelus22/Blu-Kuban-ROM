.class Lcom/android/providers/downloads/ui/SecDownloadList$5;
.super Ljava/lang/Object;
.source "SecDownloadList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;->ensureSomeGroupIsExpanded_start()V
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
    .line 320
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$5;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$5;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$800(Lcom/android/providers/downloads/ui/SecDownloadList;)Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;->getGroupCount()I

    move-result v1

    if-nez v1, :cond_d

    .line 331
    :cond_c
    :goto_c
    return-void

    .line 325
    :cond_d
    const/4 v0, 0x0

    .local v0, group:I
    :goto_e
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$5;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$800(Lcom/android/providers/downloads/ui/SecDownloadList;)Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/SecDateSortedDownloadAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 326
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$5;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$400(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 330
    :cond_29
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$5;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$400(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/widget/ExpandableListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_c
.end method
