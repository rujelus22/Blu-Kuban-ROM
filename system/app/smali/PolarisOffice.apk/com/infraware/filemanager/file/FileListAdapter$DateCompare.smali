.class Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;
.super Ljava/lang/Object;
.source "FileListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/file/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateCompare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/infraware/filemanager/file/FileListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileListAdapter;


# direct methods
.method private constructor <init>(Lcom/infraware/filemanager/file/FileListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I
    .registers 9
    .parameter "o1"
    .parameter "o2"

    .prologue
    const-wide/16 v4, 0x3e8

    .line 550
    iget-wide v1, p1, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    div-long/2addr v1, v4

    long-to-int v1, v1

    iget-wide v2, p2, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    sub-int v0, v1, v2

    .line 551
    .local v0, result:I
    if-nez v0, :cond_14

    .line 552
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    #calls: Lcom/infraware/filemanager/file/FileListAdapter;->nameCompare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I
    invoke-static {v1, p1, p2}, Lcom/infraware/filemanager/file/FileListAdapter;->access$0(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v0

    .line 554
    :cond_14
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/infraware/filemanager/file/FileListItem;

    check-cast p2, Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {p0, p1, p2}, Lcom/infraware/filemanager/file/FileListAdapter$DateCompare;->compare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v0

    return v0
.end method
