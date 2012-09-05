.class Lcom/infraware/filemanager/file/FileListAdapter$TypeCompare;
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
    name = "TypeCompare"
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
    .line 558
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListAdapter$TypeCompare;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListAdapter$TypeCompare;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/file/FileListAdapter$TypeCompare;-><init>(Lcom/infraware/filemanager/file/FileListAdapter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I
    .registers 8
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 561
    iget-object v3, p1, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_29

    iget-object v0, p1, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    .line 562
    .local v0, ext1:Ljava/lang/String;
    :goto_a
    iget-object v3, p2, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2c

    iget-object v1, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    .line 564
    .local v1, ext2:Ljava/lang/String;
    :goto_14
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 565
    .local v2, result:I
    if-nez v2, :cond_28

    .line 566
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileListAdapter$TypeCompare;->this$0:Lcom/infraware/filemanager/file/FileListAdapter;

    #calls: Lcom/infraware/filemanager/file/FileListAdapter;->nameCompare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I
    invoke-static {v3, p1, p2}, Lcom/infraware/filemanager/file/FileListAdapter;->access$0(Lcom/infraware/filemanager/file/FileListAdapter;Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v2

    .line 568
    :cond_28
    return v2

    .line 561
    .end local v0           #ext1:Ljava/lang/String;
    .end local v1           #ext2:Ljava/lang/String;
    .end local v2           #result:I
    :cond_29
    iget-object v0, p1, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    goto :goto_a

    .line 562
    .restart local v0       #ext1:Ljava/lang/String;
    :cond_2c
    iget-object v1, p2, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    goto :goto_14
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/infraware/filemanager/file/FileListItem;

    check-cast p2, Lcom/infraware/filemanager/file/FileListItem;

    invoke-virtual {p0, p1, p2}, Lcom/infraware/filemanager/file/FileListAdapter$TypeCompare;->compare(Lcom/infraware/filemanager/file/FileListItem;Lcom/infraware/filemanager/file/FileListItem;)I

    move-result v0

    return v0
.end method
