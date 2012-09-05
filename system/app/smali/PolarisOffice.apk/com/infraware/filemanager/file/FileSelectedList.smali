.class public Lcom/infraware/filemanager/file/FileSelectedList;
.super Ljava/lang/Object;
.source "FileSelectedList.java"


# instance fields
.field private m_bIsCut:Z

.field private m_nCopyMode:I

.field private m_oItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/infraware/filemanager/file/FileListItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_strID:Ljava/lang/String;

.field private m_strPW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_strID:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_strPW:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    .line 20
    iput v1, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_nCopyMode:I

    .line 21
    iput-boolean v1, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_bIsCut:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "isCut"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_strID:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_strPW:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    .line 27
    iput-boolean p1, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_bIsCut:Z

    .line 28
    return-void
.end method


# virtual methods
.method public add(Lcom/infraware/filemanager/file/FileListItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iput v1, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_nCopyMode:I

    .line 146
    iput-boolean v1, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_bIsCut:Z

    .line 147
    return-void
.end method

.method public get(I)Lcom/infraware/filemanager/file/FileListItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_13

    if-ltz p1, :cond_13

    .line 94
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 96
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_strID:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_nCopyMode:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_strPW:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 55
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    iget-object v0, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 57
    :goto_13
    return-object v0

    :cond_14
    const-string v0, ""

    goto :goto_13
.end method

.method public getType()I
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 47
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    iget v0, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 49
    :goto_13
    return v0

    :cond_14
    const/4 v0, -0x1

    goto :goto_13
.end method

.method public isCut()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_bIsCut:Z

    return v0
.end method

.method public remove(I)Lcom/infraware/filemanager/file/FileListItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_13

    if-ltz p1, :cond_13

    .line 102
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 104
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public remove(ILjava/lang/String;)Lcom/infraware/filemanager/file/FileListItem;
    .registers 7
    .parameter "type"
    .parameter "fileName"

    .prologue
    const/4 v2, 0x0

    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_b

    .line 134
    :cond_a
    :goto_a
    return-object v2

    .line 126
    :cond_b
    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 127
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v1, :cond_a

    .line 130
    invoke-virtual {v1, p1, p2}, Lcom/infraware/filemanager/file/FileListItem;->equal(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 131
    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->remove(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    goto :goto_a

    .line 124
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public remove(Lcom/infraware/filemanager/file/FileListItem;)Lcom/infraware/filemanager/file/FileListItem;
    .registers 6
    .parameter "removeItem"

    .prologue
    const/4 v2, 0x0

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_b

    .line 119
    :cond_a
    :goto_a
    return-object v2

    .line 111
    :cond_b
    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->get(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v1

    .line 112
    .local v1, item:Lcom/infraware/filemanager/file/FileListItem;
    if-eqz v1, :cond_a

    .line 115
    invoke-virtual {v1, p1}, Lcom/infraware/filemanager/file/FileListItem;->equal(Lcom/infraware/filemanager/file/FileListItem;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 116
    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/file/FileSelectedList;->remove(I)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    goto :goto_a

    .line 109
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setCut(Z)V
    .registers 2
    .parameter "isCut"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_bIsCut:Z

    .line 63
    return-void
.end method

.method public setMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 32
    iput p1, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_nCopyMode:I

    .line 33
    iget v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_nCopyMode:I

    if-ne v0, v1, :cond_b

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_bIsCut:Z

    .line 37
    :goto_a
    return-void

    .line 36
    :cond_b
    iput-boolean v1, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_bIsCut:Z

    goto :goto_a
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "userId"
    .parameter "password"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_strID:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_strPW:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileSelectedList;->m_oItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
