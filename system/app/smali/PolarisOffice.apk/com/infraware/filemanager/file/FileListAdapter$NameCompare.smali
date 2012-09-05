.class Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;
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
    name = "NameCompare"
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
    .line 524
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I
    .registers 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    #calls: Lcom/infraware/filemanager/file/FileListAdapter;->nameCompare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I
    invoke-static {v0, p1, p2}, Lcom/infraware/filemanager/file/FileListAdapter;->access$0(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v0

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

    invoke-virtual {p0, p1, p2}, Lcom/infraware/filemanager/file/FileListAdapter$NameCompare;->compare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v0

    return v0
.end method
