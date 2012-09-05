.class public Lcom/infraware/filemanager/file/FileListFilter;
.super Ljava/lang/Object;
.source "FileListFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private m_nFilterType:I

.field private m_oContext:Landroid/content/Context;

.field private m_strPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "type"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileListFilter;->m_strPath:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListFilter;->m_oContext:Landroid/content/Context;

    .line 21
    iput p2, p0, Lcom/infraware/filemanager/file/FileListFilter;->m_nFilterType:I

    .line 22
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 12
    .parameter "dir"
    .parameter "name"

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 27
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_b

    .line 64
    :goto_a
    return v5

    .line 30
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/infraware/filemanager/file/FileListFilter;->m_strPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, strPathFileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 34
    .local v3, result:Z
    const-string v6, "."

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 35
    .local v2, index:I
    const/4 v0, 0x0

    .line 36
    .local v0, ext:Ljava/lang/String;
    iget v6, p0, Lcom/infraware/filemanager/file/FileListFilter;->m_nFilterType:I

    packed-switch v6, :pswitch_data_7a

    :cond_36
    :goto_36
    move v5, v3

    .line 64
    goto :goto_a

    .line 39
    :pswitch_38
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    .line 40
    goto :goto_36

    .line 42
    :pswitch_3d
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_45

    move v3, v5

    .line 43
    :goto_44
    goto :goto_36

    .line 42
    :cond_45
    const/4 v3, 0x1

    goto :goto_44

    .line 47
    :pswitch_47
    if-eq v2, v8, :cond_57

    .line 48
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    if-eq v5, v6, :cond_57

    .line 49
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_57
    iget-object v5, p0, Lcom/infraware/filemanager/file/FileListFilter;->m_oContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/infraware/filemanager/manager/IconManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/IconManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/infraware/filemanager/manager/IconManager;->isImageExt(Ljava/lang/String;)Z

    move-result v3

    .line 54
    goto :goto_36

    .line 56
    :pswitch_62
    if-eq v2, v8, :cond_72

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    if-eq v5, v6, :cond_72

    .line 58
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_72
    if-eqz v0, :cond_36

    .line 61
    invoke-static {v0}, Lcom/infraware/common/util/FileUtils;->isSupported(Ljava/lang/String;)Z

    move-result v3

    goto :goto_36

    .line 36
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_38
        :pswitch_47
        :pswitch_62
    .end packed-switch
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileListFilter;->m_strPath:Ljava/lang/String;

    .line 70
    return-void
.end method
