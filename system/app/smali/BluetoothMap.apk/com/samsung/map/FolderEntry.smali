.class Lcom/samsung/map/FolderEntry;
.super Ljava/lang/Object;
.source "MessageFolder.java"


# instance fields
.field private content:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/map/FolderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private name:Ljava/lang/String;

.field private parent:Lcom/samsung/map/FolderEntry;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/samsung/map/FolderEntry;)V
    .registers 5
    .parameter "name"
    .parameter "id"
    .parameter "parent"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/map/FolderEntry;->content:Ljava/util/Vector;

    .line 66
    iput-object p1, p0, Lcom/samsung/map/FolderEntry;->name:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/samsung/map/FolderEntry;->id:I

    .line 68
    iput-object p3, p0, Lcom/samsung/map/FolderEntry;->parent:Lcom/samsung/map/FolderEntry;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/map/FolderEntry;->content:Ljava/util/Vector;

    .line 70
    return-void
.end method


# virtual methods
.method public addFolder(Ljava/lang/String;I)Lcom/samsung/map/FolderEntry;
    .registers 5
    .parameter "name"
    .parameter "id"

    .prologue
    .line 115
    new-instance v0, Lcom/samsung/map/FolderEntry;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/map/FolderEntry;-><init>(Ljava/lang/String;ILcom/samsung/map/FolderEntry;)V

    .line 116
    .local v0, folder:Lcom/samsung/map/FolderEntry;
    iget-object v1, p0, Lcom/samsung/map/FolderEntry;->content:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    return-object v0
.end method

.method public cd(Ljava/lang/String;)Lcom/samsung/map/FolderEntry;
    .registers 5
    .parameter "name"

    .prologue
    .line 74
    if-nez p1, :cond_3

    .line 90
    .end local p0
    :cond_2
    :goto_2
    return-object p0

    .line 77
    .restart local p0
    :cond_3
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    const-string v2, ".."

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 81
    iget-object p0, p0, Lcom/samsung/map/FolderEntry;->parent:Lcom/samsung/map/FolderEntry;

    goto :goto_2

    .line 83
    :cond_16
    iget-object v2, p0, Lcom/samsung/map/FolderEntry;->content:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/map/FolderEntry;>;"
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/map/FolderEntry;

    .line 86
    .local v0, folder:Lcom/samsung/map/FolderEntry;
    invoke-virtual {v0}, Lcom/samsung/map/FolderEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object p0, v0

    .line 87
    goto :goto_2

    .line 90
    .end local v0           #folder:Lcom/samsung/map/FolderEntry;
    :cond_34
    const/4 p0, 0x0

    goto :goto_2
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/map/FolderEntry;->id:I

    return v0
.end method

.method public getListing(II)Ljava/lang/String;
    .registers 8
    .parameter "MaxListCount"
    .parameter "ListStartOffset"

    .prologue
    .line 121
    new-instance v0, Lcom/samsung/map/FolderListingBuilder;

    invoke-direct {v0}, Lcom/samsung/map/FolderListingBuilder;-><init>()V

    .line 122
    .local v0, builder:Lcom/samsung/map/FolderListingBuilder;
    const/4 v1, 0x0

    .line 123
    .local v1, count:I
    iget-object v4, p0, Lcom/samsung/map/FolderEntry;->content:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/map/FolderEntry;>;"
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 124
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/map/FolderEntry;

    .line 125
    .local v2, folder:Lcom/samsung/map/FolderEntry;
    if-lt v1, p2, :cond_21

    .line 126
    invoke-virtual {v2}, Lcom/samsung/map/FolderEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/map/FolderListingBuilder;->addFolderEntry(Ljava/lang/String;)V

    .line 128
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 129
    add-int v4, p2, p1

    if-lt v1, v4, :cond_c

    .line 133
    .end local v2           #folder:Lcom/samsung/map/FolderEntry;
    :cond_27
    invoke-virtual {v0}, Lcom/samsung/map/FolderListingBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getListingSize(II)I
    .registers 9
    .parameter "MaxListCount"
    .parameter "ListStartOffset"

    .prologue
    .line 137
    const/4 v4, 0x0

    .line 138
    .local v4, size:I
    if-nez p1, :cond_a

    .line 139
    iget-object v5, p0, Lcom/samsung/map/FolderEntry;->content:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 154
    :cond_9
    :goto_9
    return v4

    .line 141
    :cond_a
    new-instance v0, Lcom/samsung/map/FolderListingBuilder;

    invoke-direct {v0}, Lcom/samsung/map/FolderListingBuilder;-><init>()V

    .line 142
    .local v0, builder:Lcom/samsung/map/FolderListingBuilder;
    const/4 v1, 0x0

    .line 143
    .local v1, count:I
    iget-object v5, p0, Lcom/samsung/map/FolderEntry;->content:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/map/FolderEntry;>;"
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 144
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/map/FolderEntry;

    .line 145
    .local v2, folder:Lcom/samsung/map/FolderEntry;
    if-lt v1, p2, :cond_26

    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 148
    :cond_26
    add-int/lit8 v1, v1, 0x1

    .line 149
    add-int v5, p2, p1

    if-lt v1, v5, :cond_16

    goto :goto_9
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/map/FolderEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/samsung/map/FolderEntry;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/map/FolderEntry;->parent:Lcom/samsung/map/FolderEntry;

    return-object v0
.end method
