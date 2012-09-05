.class public Lcom/infraware/filemanager/webstorage/service/WebStorage;
.super Ljava/lang/Object;
.source "WebStorage.java"


# static fields
.field private static final instance:Lcom/infraware/filemanager/webstorage/service/WebStorage;


# instance fields
.field private boxnetDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/infraware/filemanager/webstorage/objects/BoxNetData;",
            ">;"
        }
    .end annotation
.end field

.field private googleDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/infraware/filemanager/webstorage/objects/GoogleData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/WebStorage;

    invoke-direct {v0}, Lcom/infraware/filemanager/webstorage/service/WebStorage;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->instance:Lcom/infraware/filemanager/webstorage/service/WebStorage;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/.temp/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 45
    :cond_21
    return-void
.end method

.method public static getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->instance:Lcom/infraware/filemanager/webstorage/service/WebStorage;

    return-object v0
.end method


# virtual methods
.method public clearData()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 121
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 122
    return-void
.end method

.method public getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    .registers 5
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    .line 90
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    .line 96
    .restart local v0       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    :cond_c
    :goto_c
    return-object v0

    .line 91
    :cond_d
    const/4 v1, 0x2

    if-ne p1, v1, :cond_c

    .line 92
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    .restart local v0       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    goto :goto_c
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;I)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    .registers 7
    .parameter "userId"
    .parameter "password"
    .parameter "serviceType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;,
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    const/4 v1, 0x1

    if-ne p3, v1, :cond_25

    .line 60
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    .restart local v0       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v0, :cond_13

    .line 61
    new-instance v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;

    .end local v0           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    invoke-direct {v0}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;-><init>()V

    .line 63
    .restart local v0       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    :cond_13
    invoke-virtual {v0, p2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    move-object v1, v0

    check-cast v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_24
    :goto_24
    return-object v0

    .line 67
    :cond_25
    const/4 v1, 0x2

    if-ne p3, v1, :cond_24

    .line 68
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    .restart local v0       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v0, :cond_37

    .line 69
    new-instance v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;

    .end local v0           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    invoke-direct {v0}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;-><init>()V

    .line 71
    .restart local v0       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    :cond_37
    invoke-virtual {v0, p2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 72
    invoke-virtual {v0, p1, p2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    move-object v1, v0

    check-cast v1, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24
.end method

.method public removeData(ILjava/lang/String;)V
    .registers 4
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    .line 106
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 107
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_8
    :goto_8
    return-void

    .line 108
    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 109
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method
