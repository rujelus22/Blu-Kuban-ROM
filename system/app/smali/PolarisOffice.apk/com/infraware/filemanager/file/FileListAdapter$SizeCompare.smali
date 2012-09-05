.class Lcom/infraware/filemanager/file/FileListAdapter$SizeCompare;
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
    name = "SizeCompare"
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
    .line 531
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListAdapter$SizeCompare;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$SizeCompare;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/file/FileListAdapter$SizeCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I
    .registers 8
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 535
    iget v1, p1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 536
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter$SizeCompare;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    #calls: Lcom/infraware/filemanager/file/FileListAdapter;->nameCompare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I
    invoke-static {v1, p1, p2}, Lcom/infraware/filemanager/file/FileListAdapter;->access$0(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v0

    .line 540
    .local v0, result:I
    :goto_b
    if-nez v0, :cond_13

    .line 541
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListAdapter$SizeCompare;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    #calls: Lcom/infraware/filemanager/file/FileListAdapter;->nameCompare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I
    invoke-static {v1, p1, p2}, Lcom/infraware/filemanager/file/FileListAdapter;->access$0(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v0

    .line 543
    :cond_13
    return v0

    .line 538
    .end local v0           #result:I
    :cond_14
    iget-wide v1, p1, Lcom/infraware/filemanager/file/FileListItem;->size:J

    iget-wide v3, p2, Lcom/infraware/filemanager/file/FileListItem;->size:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .restart local v0       #result:I
    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/infraware/filemanager/file/FileListItem;

    check-cast p2, Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {p0, p1, p2}, Lcom/infraware/filemanager/file/FileListAdapter$SizeCompare;->compare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v0

    return v0
.end method
