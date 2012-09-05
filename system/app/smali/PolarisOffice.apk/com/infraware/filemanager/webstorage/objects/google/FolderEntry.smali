.class public Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
.super Lcom/infraware/filemanager/webstorage/objects/google/Entry;
.source "FolderEntry.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->clone()Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->clone()Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    return-object v0
.end method

.method public getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FOLDER:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    return-object v0
.end method
