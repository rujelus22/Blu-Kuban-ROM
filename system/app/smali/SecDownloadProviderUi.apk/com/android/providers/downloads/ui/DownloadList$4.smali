.class Lcom/android/providers/downloads/ui/DownloadList$4;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->ensureSomeGroupIsExpanded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .registers 2
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$800(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;->getGroupCount()I

    move-result v1

    if-nez v1, :cond_d

    .line 269
    :cond_c
    :goto_c
    return-void

    .line 263
    :cond_d
    const/4 v0, 0x0

    .local v0, group:I
    :goto_e
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$800(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 264
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$400(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 268
    :cond_29
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$4;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$400(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/widget/ExpandableListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_c
.end method
