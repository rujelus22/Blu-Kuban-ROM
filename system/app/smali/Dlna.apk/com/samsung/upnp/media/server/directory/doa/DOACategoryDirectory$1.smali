.class Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;
.super Ljava/lang/Object;
.source "DOACategoryDirectory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;


# direct methods
.method constructor <init>(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 77
    iget-object v11, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    #calls: Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->getRecordedItemNodes()[Lcom/samsung/upnp/media/server/object/item/ItemNode;
    invoke-static {v11}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->access$0(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)[Lcom/samsung/upnp/media/server/object/item/ItemNode;

    move-result-object v1

    .line 78
    .local v1, currRecNode:[Lcom/samsung/upnp/media/server/object/item/ItemNode;
    iget-object v11, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    #calls: Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->getCurrentRecordedInfos()[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    invoke-static {v11}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->access$1(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    move-result-object v8

    .line 80
    .local v8, recInfoOnDB:[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    if-nez v8, :cond_f

    .line 137
    :cond_e
    :goto_e
    return-void

    .line 82
    :cond_f
    array-length v6, v1

    .line 83
    .local v6, nCurrRecNodes:I
    array-length v7, v8

    .line 84
    .local v7, nRecInfoOnDB:I
    const/4 v10, 0x0

    .line 87
    .local v10, updateFlag:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    if-lt v3, v6, :cond_42

    .line 106
    const/4 v4, 0x0

    .local v4, j:I
    :goto_16
    if-lt v4, v7, :cond_6d

    .line 126
    iget-object v11, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    invoke-virtual {v11}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->getNContentNodes()I

    move-result v5

    .line 127
    .local v5, nContents:I
    iget-object v11, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    invoke-virtual {v11, v5}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->setChildCount(I)V

    .line 129
    if-eqz v10, :cond_30

    .line 130
    iget-object v11, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    invoke-virtual {v11}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 131
    .local v0, cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-eqz v0, :cond_30

    .line 132
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->updateSystemUpdateID()V

    .line 134
    .end local v0           #cds:Lcom/samsung/upnp/media/server/ContentDirectory;
    :cond_30
    iget-object v11, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    #getter for: Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->cduListener:Lcom/samsung/api/ContentsDirectoryUpdatedListener;
    invoke-static {v11}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->access$2(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)Lcom/samsung/api/ContentsDirectoryUpdatedListener;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 135
    iget-object v11, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    #getter for: Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->cduListener:Lcom/samsung/api/ContentsDirectoryUpdatedListener;
    invoke-static {v11}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->access$2(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)Lcom/samsung/api/ContentsDirectoryUpdatedListener;

    move-result-object v11

    invoke-interface {v11, v10, v5}, Lcom/samsung/api/ContentsDirectoryUpdatedListener;->updatedDirectory(ZI)V

    goto :goto_e

    .line 88
    .end local v4           #j:I
    .end local v5           #nContents:I
    :cond_42
    const/4 v2, 0x0

    .line 89
    .local v2, hasRecItem:Z
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_44
    if-lt v4, v7, :cond_4b

    .line 97
    :goto_46
    if-eqz v2, :cond_5e

    .line 87
    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 90
    :cond_4b
    aget-object v11, v1, v3

    if-eqz v11, :cond_5b

    .line 91
    aget-object v11, v1, v3

    aget-object v12, v8, v4

    invoke-virtual {v11, v12}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5b

    .line 92
    const/4 v2, 0x1

    .line 93
    goto :goto_46

    .line 89
    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 99
    :cond_5e
    aget-object v11, v1, v3

    instance-of v11, v11, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;

    if-nez v11, :cond_48

    .line 101
    iget-object v11, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    aget-object v12, v1, v3

    invoke-virtual {v11, v12}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->removeContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)Z

    .line 102
    const/4 v10, 0x1

    goto :goto_48

    .line 107
    .end local v2           #hasRecItem:Z
    :cond_6d
    const/4 v2, 0x0

    .line 108
    .restart local v2       #hasRecItem:Z
    const/4 v3, 0x0

    :goto_6f
    if-lt v3, v6, :cond_76

    .line 116
    :goto_71
    if-eqz v2, :cond_89

    .line 106
    :goto_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 109
    :cond_76
    aget-object v11, v1, v3

    if-eqz v11, :cond_86

    .line 110
    aget-object v11, v1, v3

    aget-object v12, v8, v4

    invoke-virtual {v11, v12}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_86

    .line 111
    const/4 v2, 0x1

    .line 112
    goto :goto_71

    .line 108
    :cond_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 120
    :cond_89
    new-instance v9, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;

    aget-object v11, v8, v4

    invoke-direct {v9, v11}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;-><init>(Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;)V

    .line 121
    .local v9, recItem:Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;
    iget-object v11, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;->this$0:Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;

    invoke-virtual {v11, v9}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->addContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V

    .line 122
    aget-object v11, v8, v4

    invoke-static {v9, v11}, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->buildDOAResourceProperty(Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;)V

    .line 123
    const/4 v10, 0x1

    goto :goto_73
.end method
