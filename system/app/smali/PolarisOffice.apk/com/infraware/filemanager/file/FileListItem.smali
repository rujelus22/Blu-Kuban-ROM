.class public Lcom/infraware/filemanager/file/FileListItem;
.super Ljava/lang/Object;
.source "FileListItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3fdb7adf27fda527L


# instance fields
.field public accessTime:J

.field public ext:Ljava/lang/String;

.field public favoritePkey:I

.field public googleExt:Ljava/lang/String;

.field public icon:Landroid/graphics/Bitmap;

.field public isFolder:Z

.field public isSDCard:Z

.field public isSelect:Z

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public recentPkey:I

.field public serviceType:I

.field public size:J

.field public type:I

.field public updateTime:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v0, p0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 83
    iput-boolean v0, p0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    .line 88
    iput-wide v2, p0, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    .line 89
    iput-wide v2, p0, Lcom/infraware/filemanager/file/FileListItem;->size:J

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    .line 92
    iput-boolean v1, p0, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    .line 93
    iput-boolean v1, p0, Lcom/infraware/filemanager/file/FileListItem;->isSDCard:Z

    .line 95
    iput v1, p0, Lcom/infraware/filemanager/file/FileListItem;->recentPkey:I

    .line 96
    iput-wide v2, p0, Lcom/infraware/filemanager/file/FileListItem;->accessTime:J

    .line 97
    iput v1, p0, Lcom/infraware/filemanager/file/FileListItem;->favoritePkey:I

    .line 98
    return-void
.end method


# virtual methods
.method public clone()Lcom/infraware/filemanager/file/FileListItem;
    .registers 4

    .prologue
    .line 40
    new-instance v0, Lcom/infraware/filemanager/file/FileListItem;

    invoke-direct {v0}, Lcom/infraware/filemanager/file/FileListItem;-><init>()V

    .line 42
    .local v0, cloneItem:Lcom/infraware/filemanager/file/FileListItem;
    iget v1, p0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    iput v1, v0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    .line 43
    iget-boolean v1, p0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    iput-boolean v1, v0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    .line 44
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    iput-object v1, v0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    iput-object v1, v0, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    .line 48
    iget-wide v1, p0, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    iput-wide v1, v0, Lcom/infraware/filemanager/file/FileListItem;->updateTime:J

    .line 49
    iget-wide v1, p0, Lcom/infraware/filemanager/file/FileListItem;->size:J

    iput-wide v1, v0, Lcom/infraware/filemanager/file/FileListItem;->size:J

    .line 50
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    iput-object v1, v0, Lcom/infraware/filemanager/file/FileListItem;->password:Ljava/lang/String;

    .line 51
    iget v1, p0, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    iput v1, v0, Lcom/infraware/filemanager/file/FileListItem;->serviceType:I

    .line 52
    iget-boolean v1, p0, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    iput-boolean v1, v0, Lcom/infraware/filemanager/file/FileListItem;->isSelect:Z

    .line 53
    iget-boolean v1, p0, Lcom/infraware/filemanager/file/FileListItem;->isSDCard:Z

    iput-boolean v1, v0, Lcom/infraware/filemanager/file/FileListItem;->isSDCard:Z

    .line 54
    iget v1, p0, Lcom/infraware/filemanager/file/FileListItem;->recentPkey:I

    iput v1, v0, Lcom/infraware/filemanager/file/FileListItem;->recentPkey:I

    .line 55
    iget-wide v1, p0, Lcom/infraware/filemanager/file/FileListItem;->accessTime:J

    iput-wide v1, v0, Lcom/infraware/filemanager/file/FileListItem;->accessTime:J

    .line 56
    iget v1, p0, Lcom/infraware/filemanager/file/FileListItem;->favoritePkey:I

    iput v1, v0, Lcom/infraware/filemanager/file/FileListItem;->favoritePkey:I

    .line 58
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileListItem;->clone()Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v0

    return-object v0
.end method

.method public equal(ILjava/lang/String;)Z
    .registers 5
    .parameter "type"
    .parameter "file"

    .prologue
    const/4 v0, 0x0

    .line 72
    iget v1, p0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    if-eq v1, p1, :cond_6

    .line 78
    :cond_5
    :goto_5
    return v0

    .line 75
    :cond_6
    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 78
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public equal(Lcom/infraware/filemanager/file/FileListItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 62
    iget v1, p1, Lcom/infraware/filemanager/file/FileListItem;->type:I

    iget v2, p0, Lcom/infraware/filemanager/file/FileListItem;->type:I

    if-eq v1, v2, :cond_8

    .line 68
    :cond_7
    :goto_7
    return v0

    .line 65
    :cond_8
    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileListItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 68
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 122
    move-object v0, p1

    check-cast v0, Lcom/infraware/filemanager/file/FileListItem;

    .line 124
    .local v0, compareItem:Lcom/infraware/filemanager/file/FileListItem;
    iget-wide v2, p0, Lcom/infraware/filemanager/file/FileListItem;->size:J

    iget-wide v4, v0, Lcom/infraware/filemanager/file/FileListItem;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    .line 134
    :cond_c
    :goto_c
    return v1

    .line 127
    :cond_d
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    iget-object v3, v0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 130
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 134
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, pathArg:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 141
    const-string v0, ""

    .line 147
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/infraware/filemanager/file/FileListItem;->getFullFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 144
    :cond_29
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    goto :goto_d
.end method

.method public getFullFileName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 163
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 169
    :goto_6
    return-object v0

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 166
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    goto :goto_6

    .line 169
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getPath()Ljava/lang/String;
    .registers 5

    .prologue
    .line 185
    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    const-string v2, "//"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, convertPath:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 187
    const-string v0, ""

    .line 189
    .end local v0           #convertPath:Ljava/lang/String;
    :cond_14
    return-object v0
.end method

.method public getWebFileName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_28

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_27
    return-object v0

    .line 177
    :cond_28
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_50

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 181
    :cond_50
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    goto :goto_27
.end method

.method public isSupported()Z
    .registers 4

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, isSupport:Z
    iget-boolean v2, p0, Lcom/infraware/filemanager/file/FileListItem;->isFolder:Z

    if-eqz v2, :cond_6

    .line 206
    .end local v1           #isSupport:Z
    :goto_5
    return v1

    .line 198
    .restart local v1       #isSupport:Z
    :cond_6
    const/4 v0, 0x0

    .line 199
    .local v0, extension:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 200
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    .line 206
    :goto_15
    invoke-static {v0}, Lcom/infraware/common/util/FileUtils;->isSupported(Ljava/lang/String;)Z

    move-result v1

    goto :goto_5

    .line 201
    :cond_1a
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    .line 202
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    goto :goto_15

    .line 204
    :cond_29
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "fileName"
    .parameter "fileExt"

    .prologue
    .line 102
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    .line 104
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 105
    const-string v1, ""

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/infraware/filemanager/file/FileListItem;->googleExt:Ljava/lang/String;

    .line 119
    :goto_10
    return-void

    .line 111
    :cond_11
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 112
    .local v0, nIndex:I
    if-lez v0, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    if-le v0, v1, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_39

    .line 114
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    .line 115
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    goto :goto_10

    .line 118
    :cond_39
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    goto :goto_10
.end method
