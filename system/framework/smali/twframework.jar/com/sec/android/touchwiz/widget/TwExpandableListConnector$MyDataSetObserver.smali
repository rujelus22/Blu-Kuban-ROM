.class public Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "TwExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;


# direct methods
.method protected constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;)V
    .registers 2
    .parameter

    .prologue
    .line 852
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 855
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    #calls: Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->access$000(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;ZZ)V

    .line 857
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->notifyDataSetChanged()V

    .line 858
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 862
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    #calls: Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->access$000(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;ZZ)V

    .line 864
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->notifyDataSetInvalidated()V

    .line 865
    return-void
.end method
