.class Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SecDownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/SecDownloadList;


# direct methods
.method private constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;Lcom/android/providers/downloads/ui/SecDownloadList$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$100(Lcom/android/providers/downloads/ui/SecDownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 189
    :goto_c
    return-void

    .line 187
    :cond_d
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #calls: Lcom/android/providers/downloads/ui/SecDownloadList;->chooseListToShow()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$200(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    .line 188
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #calls: Lcom/android/providers/downloads/ui/SecDownloadList;->ensureSomeGroupIsExpanded()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$300(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    goto :goto_c
.end method
