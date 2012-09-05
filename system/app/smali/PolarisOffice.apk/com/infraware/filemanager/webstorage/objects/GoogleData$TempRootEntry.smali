.class Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;
.super Ljava/lang/Object;
.source "GoogleData.java"

# interfaces
.implements Lcom/infraware/filemanager/webstorage/service/AbstractEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/webstorage/objects/GoogleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TempRootEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/webstorage/objects/GoogleData;


# direct methods
.method private constructor <init>(Lcom/infraware/filemanager/webstorage/objects/GoogleData;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;->this$0:Lcom/infraware/filemanager/webstorage/objects/GoogleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/filemanager/webstorage/objects/GoogleData;Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;-><init>(Lcom/infraware/filemanager/webstorage/objects/GoogleData;)V

    return-void
.end method


# virtual methods
.method public getCreated()J
    .registers 3

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEntryId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntryTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->FOLDER:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUpdated()J
    .registers 3

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isFolder()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
