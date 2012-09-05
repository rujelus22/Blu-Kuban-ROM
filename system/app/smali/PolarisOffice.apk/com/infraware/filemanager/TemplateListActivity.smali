.class public Lcom/infraware/filemanager/TemplateListActivity;
.super Landroid/app/ListActivity;
.source "TemplateListActivity.java"


# instance fields
.field private m_oTempleteAdapter:Lcom/infraware/filemanager/template/TemplateListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/TemplateListActivity;->m_oTempleteAdapter:Lcom/infraware/filemanager/template/TemplateListAdapter;

    .line 22
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v4, 0x7f030024

    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/TemplateListActivity;->setContentView(I)V

    .line 32
    iget-object v4, p0, Lcom/infraware/filemanager/TemplateListActivity;->m_oTempleteAdapter:Lcom/infraware/filemanager/template/TemplateListAdapter;

    if-nez v4, :cond_14

    .line 33
    new-instance v4, Lcom/infraware/filemanager/template/TemplateListAdapter;

    invoke-direct {v4, p0}, Lcom/infraware/filemanager/template/TemplateListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/infraware/filemanager/TemplateListActivity;->m_oTempleteAdapter:Lcom/infraware/filemanager/template/TemplateListAdapter;

    .line 35
    :cond_14
    invoke-virtual {p0}, Lcom/infraware/filemanager/TemplateListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 37
    .local v0, am:Landroid/content/res/AssetManager;
    :try_start_1c
    const-string v4, "doc"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, templateList:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    array-length v4, v3
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_fa

    if-lt v1, v4, :cond_44

    .line 51
    .end local v1           #i:I
    .end local v3           #templateList:[Ljava/lang/String;
    :goto_26
    :try_start_26
    const-string v4, "xls"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 52
    .restart local v3       #templateList:[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2d
    array-length v4, v3
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_f7

    if-lt v1, v4, :cond_7e

    .line 65
    .end local v1           #i:I
    .end local v3           #templateList:[Ljava/lang/String;
    :goto_30
    :try_start_30
    const-string v4, "ppt"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 66
    .restart local v3       #templateList:[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_37
    array-length v4, v3
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_f4

    if-lt v1, v4, :cond_b9

    .line 78
    .end local v1           #i:I
    .end local v3           #templateList:[Ljava/lang/String;
    :goto_3a
    invoke-virtual {p0}, Lcom/infraware/filemanager/TemplateListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/filemanager/TemplateListActivity;->m_oTempleteAdapter:Lcom/infraware/filemanager/template/TemplateListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    return-void

    .line 40
    .restart local v1       #i:I
    .restart local v3       #templateList:[Ljava/lang/String;
    :cond_44
    :try_start_44
    new-instance v2, Lcom/infraware/filemanager/template/TemplateListItem;

    invoke-direct {v2}, Lcom/infraware/filemanager/template/TemplateListItem;-><init>()V

    .line 41
    .local v2, item:Lcom/infraware/filemanager/template/TemplateListItem;
    const-string v4, "doc"

    iput-object v4, v2, Lcom/infraware/filemanager/template/TemplateListItem;->path:Ljava/lang/String;

    .line 42
    aget-object v4, v3, v1

    iput-object v4, v2, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    .line 44
    invoke-static {p0}, Lcom/infraware/filemanager/manager/TemplateManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/TemplateManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/infraware/filemanager/template/TemplateListItem;->path:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/manager/TemplateManager;->isTemplate(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 45
    iget-object v4, p0, Lcom/infraware/filemanager/TemplateListActivity;->m_oTempleteAdapter:Lcom/infraware/filemanager/template/TemplateListAdapter;

    invoke-virtual {v4, v2}, Lcom/infraware/filemanager/template/TemplateListAdapter;->addList(Lcom/infraware/filemanager/template/TemplateListItem;)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_7b} :catch_fa

    .line 38
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 54
    .end local v2           #item:Lcom/infraware/filemanager/template/TemplateListItem;
    :cond_7e
    :try_start_7e
    new-instance v2, Lcom/infraware/filemanager/template/TemplateListItem;

    invoke-direct {v2}, Lcom/infraware/filemanager/template/TemplateListItem;-><init>()V

    .line 55
    .restart local v2       #item:Lcom/infraware/filemanager/template/TemplateListItem;
    const-string v4, "xls"

    iput-object v4, v2, Lcom/infraware/filemanager/template/TemplateListItem;->path:Ljava/lang/String;

    .line 56
    aget-object v4, v3, v1

    iput-object v4, v2, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    .line 58
    invoke-static {p0}, Lcom/infraware/filemanager/manager/TemplateManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/TemplateManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/infraware/filemanager/template/TemplateListItem;->path:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/manager/TemplateManager;->isTemplate(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 59
    iget-object v4, p0, Lcom/infraware/filemanager/TemplateListActivity;->m_oTempleteAdapter:Lcom/infraware/filemanager/template/TemplateListAdapter;

    invoke-virtual {v4, v2}, Lcom/infraware/filemanager/template/TemplateListAdapter;->addList(Lcom/infraware/filemanager/template/TemplateListItem;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_b5} :catch_f7

    .line 52
    :cond_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2d

    .line 68
    .end local v2           #item:Lcom/infraware/filemanager/template/TemplateListItem;
    :cond_b9
    :try_start_b9
    new-instance v2, Lcom/infraware/filemanager/template/TemplateListItem;

    invoke-direct {v2}, Lcom/infraware/filemanager/template/TemplateListItem;-><init>()V

    .line 69
    .restart local v2       #item:Lcom/infraware/filemanager/template/TemplateListItem;
    const-string v4, "ppt"

    iput-object v4, v2, Lcom/infraware/filemanager/template/TemplateListItem;->path:Ljava/lang/String;

    .line 70
    aget-object v4, v3, v1

    iput-object v4, v2, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    .line 72
    invoke-static {p0}, Lcom/infraware/filemanager/manager/TemplateManager;->getInstance(Landroid/content/Context;)Lcom/infraware/filemanager/manager/TemplateManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/infraware/filemanager/template/TemplateListItem;->path:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/manager/TemplateManager;->isTemplate(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 73
    iget-object v4, p0, Lcom/infraware/filemanager/TemplateListActivity;->m_oTempleteAdapter:Lcom/infraware/filemanager/template/TemplateListAdapter;

    invoke-virtual {v4, v2}, Lcom/infraware/filemanager/template/TemplateListAdapter;->addList(Lcom/infraware/filemanager/template/TemplateListItem;)V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_f0} :catch_f4

    .line 66
    :cond_f0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_37

    .line 75
    .end local v1           #i:I
    .end local v2           #item:Lcom/infraware/filemanager/template/TemplateListItem;
    .end local v3           #templateList:[Ljava/lang/String;
    :catch_f4
    move-exception v4

    goto/16 :goto_3a

    .line 61
    :catch_f7
    move-exception v4

    goto/16 :goto_30

    .line 47
    :catch_fa
    move-exception v4

    goto/16 :goto_26
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 140
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 20
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 83
    iget-object v12, p0, Lcom/infraware/filemanager/TemplateListActivity;->m_oTempleteAdapter:Lcom/infraware/filemanager/template/TemplateListAdapter;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/infraware/filemanager/template/TemplateListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/infraware/filemanager/template/TemplateListItem;

    .line 84
    .local v7, item:Lcom/infraware/filemanager/template/TemplateListItem;
    if-nez v7, :cond_d

    .line 123
    :goto_c
    return-void

    .line 87
    :cond_d
    invoke-virtual {p0}, Lcom/infraware/filemanager/TemplateListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 89
    .local v1, am:Landroid/content/res/AssetManager;
    :try_start_15
    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, v7, Lcom/infraware/filemanager/template/TemplateListItem;->path:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 90
    .local v5, iStream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/infraware/common/util/FileUtils;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, defaultDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_46

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 95
    :cond_46
    iget-object v12, v7, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 96
    .local v6, idx_exe:I
    iget-object v12, v7, Lcom/infraware/filemanager/template/TemplateListItem;->name:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, ext:Ljava/lang/String;
    const-string v12, "template"

    invoke-static {v12, v4, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v11

    .line 100
    .local v11, tempFile:Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 101
    .local v9, oStream:Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    new-array v2, v12, [B

    .line 104
    .local v2, buf:[B
    :goto_63
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 105
    .local v8, numread:I
    if-gtz v8, :cond_8d

    .line 112
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 115
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v10, result:Landroid/content/Intent;
    const-string v12, "INTCMD"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v12, "key_template_file"

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/4 v12, -0x1

    invoke-virtual {p0, v12, v10}, Lcom/infraware/filemanager/TemplateListActivity;->setResult(ILandroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/infraware/filemanager/TemplateListActivity;->finish()V

    goto :goto_c

    .line 121
    .end local v2           #buf:[B
    .end local v3           #defaultDir:Ljava/io/File;
    .end local v4           #ext:Ljava/lang/String;
    .end local v5           #iStream:Ljava/io/InputStream;
    .end local v6           #idx_exe:I
    .end local v8           #numread:I
    .end local v9           #oStream:Ljava/io/FileOutputStream;
    .end local v10           #result:Landroid/content/Intent;
    .end local v11           #tempFile:Ljava/io/File;
    :catch_8b
    move-exception v12

    goto :goto_c

    .line 108
    .restart local v2       #buf:[B
    .restart local v3       #defaultDir:Ljava/io/File;
    .restart local v4       #ext:Ljava/lang/String;
    .restart local v5       #iStream:Ljava/io/InputStream;
    .restart local v6       #idx_exe:I
    .restart local v8       #numread:I
    .restart local v9       #oStream:Ljava/io/FileOutputStream;
    .restart local v11       #tempFile:Ljava/io/File;
    :cond_8d
    const/4 v12, 0x0

    invoke-virtual {v9, v2, v12, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_91} :catch_8b

    goto :goto_63
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 129
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 135
    return-void
.end method
