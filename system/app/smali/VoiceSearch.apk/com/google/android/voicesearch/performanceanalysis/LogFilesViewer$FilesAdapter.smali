.class Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;
.super Ljava/lang/Object;
.source "LogFilesViewer.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilesAdapter"
.end annotation


# instance fields
.field public mFiles:[Ljava/io/File;

.field final synthetic this$0:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;[Ljava/io/File;)V
    .registers 3
    .parameter
    .parameter "files"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    .line 81
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    array-length v0, v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 116
    if-eqz p2, :cond_11

    move-object v0, p2

    .line 117
    check-cast v0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;

    .line 118
    .local v0, view:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;
    iget-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_10
    return-object v0

    .line 120
    .end local v0           #view:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;
    :cond_11
    new-instance v0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;

    iget-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;

    iget-object v2, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v0       #view:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$ResultView;
    goto :goto_10
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$FilesAdapter;->mFiles:[Ljava/io/File;

    array-length v0, v0

    if-nez v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .parameter "observer"

    .prologue
    .line 141
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .parameter "observer"

    .prologue
    .line 144
    return-void
.end method
