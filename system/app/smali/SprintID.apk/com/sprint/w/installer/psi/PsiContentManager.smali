.class public Lcom/sprint/w/installer/psi/PsiContentManager;
.super Ljava/lang/Object;
.source "PsiContentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/psi/PsiContentManager$1;,
        Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;,
        Lcom/sprint/w/installer/psi/PsiContentManager$DocumentCache;
    }
.end annotation


# static fields
.field public static final SEARCH_QUERY:Ljava/lang/String; = "/drmweb/search"

.field public static final VAULT_FOLDER_ID:Ljava/lang/String; = "vault:/SprintID"

.field private static log:Lcom/sprint/id/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/sprint/w/installer/psi/PsiContentManager;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static discoverDefaultPack()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 116
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 117
    .local v2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "id"

    const-string v8, "FLD116657"

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v7, "action"

    const-string v8, "browse"

    invoke-virtual {v2, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8}, Lcom/sprint/w/installer/util/Util;->getStoredContentBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/DRM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, url:Ljava/lang/String;
    const-string v5, ""

    .line 121
    .local v5, xml:Ljava/lang/String;
    const/4 v3, 0x1

    .line 123
    .local v3, success:Z
    const/4 v7, 0x1

    :try_start_37
    invoke-static {v4, v2, v7}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v5

    .line 124
    sget-object v7, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PSI response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_53} :catch_61

    .line 131
    :goto_53
    if-eqz v3, :cond_7a

    .line 133
    :try_start_55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v1, v8, v9}, Lcom/sprint/w/installer/psi/ServicePackParser;->parse(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_60} :catch_72

    .line 140
    .end local v1           #packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    :goto_60
    return-object v1

    .line 126
    :catch_61
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 128
    sget-object v7, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Error loading default pack"

    invoke-virtual {v7, v8, v0}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    sget-object v7, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Error loading default pack"

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_53

    .line 136
    .end local v0           #e:Ljava/lang/Exception;
    :catch_72
    move-exception v0

    .line 137
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v7, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Error parsing response"

    invoke-virtual {v7, v8, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_7a
    move-object v1, v6

    .line 140
    goto :goto_60
.end method

.method public static discoverServicePacks(Ljava/lang/String;II)Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;
    .registers 15
    .parameter "folderId"
    .parameter "startIndex"
    .parameter "howMany"

    .prologue
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v2, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/Folder;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v3, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v4, featuredPacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    const/4 v5, 0x1

    .line 47
    .local v5, success:Z
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 48
    .local v8, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "id"

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "action"

    const-string v1, "browse"

    invoke-virtual {v8, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "f"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/w/installer/util/Util;->getStoredContentBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DRM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, url:Ljava/lang/String;
    const-string v10, ""

    .line 56
    .local v10, xml:Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_73
    invoke-static {v9, v8, v0}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v10

    .line 57
    sget-object v0, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PSI response: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8f} :catch_a3

    .line 71
    :goto_8f
    if-eqz v5, :cond_95

    .line 73
    const/4 v0, 0x1

    :try_start_92
    invoke-static {v10, v2, v3, v4, v0}, Lcom/sprint/w/installer/psi/ServicePackParser;->parse(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_e1

    .line 80
    :cond_95
    :goto_95
    new-instance v0, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;

    new-instance v1, Lcom/sprint/w/installer/psi/PsiContentManager;

    invoke-direct {v1}, Lcom/sprint/w/installer/psi/PsiContentManager;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v0 .. v5}, Lcom/sprint/w/installer/psi/PsiContentManager$PackResults;-><init>(Lcom/sprint/w/installer/psi/PsiContentManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-object v0

    .line 58
    :catch_a3
    move-exception v6

    .line 60
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Error loading packs. Retrying"

    invoke-virtual {v0, v1, v6}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    sget-object v0, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Error loading packs. Retrying"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    :try_start_b3
    invoke-static {v9, v8, v0}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v10

    .line 64
    sget-object v0, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PSI response: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_cf} :catch_d0

    goto :goto_8f

    .line 65
    :catch_d0
    move-exception v7

    .line 66
    .local v7, e1:Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 67
    sget-object v0, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Error loading packs after retry"

    invoke-virtual {v0, v1, v7}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    sget-object v0, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Error loading packs after retry"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_8f

    .line 74
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #e1:Ljava/lang/Exception;
    :catch_e1
    move-exception v6

    .line 75
    .restart local v6       #e:Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 76
    sget-object v0, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "Error parsing response"

    invoke-virtual {v0, v1, v6}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_95
.end method

.method public static discoverVaultPacks()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 87
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 88
    .local v2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "id"

    const-string v8, "vault:/SprintID"

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v7, "action"

    const-string v8, "vault"

    invoke-virtual {v2, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8}, Lcom/sprint/w/installer/util/Util;->getStoredContentBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/DRM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, url:Ljava/lang/String;
    const-string v5, ""

    .line 92
    .local v5, xml:Ljava/lang/String;
    const/4 v3, 0x1

    .line 94
    .local v3, success:Z
    const/4 v7, 0x1

    :try_start_37
    invoke-static {v4, v2, v7}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v5

    .line 95
    sget-object v7, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PSI response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_53} :catch_61

    .line 102
    :goto_53
    if-eqz v3, :cond_7a

    .line 104
    :try_start_55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v1, v8, v9}, Lcom/sprint/w/installer/psi/ServicePackParser;->parse(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_60} :catch_72

    .line 111
    .end local v1           #packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    :goto_60
    return-object v1

    .line 97
    :catch_61
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 99
    sget-object v7, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Error loading packs"

    invoke-virtual {v7, v8, v0}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    sget-object v7, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Error loading packs"

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_53

    .line 107
    .end local v0           #e:Ljava/lang/Exception;
    :catch_72
    move-exception v0

    .line 108
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v7, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Error parsing response"

    invoke-virtual {v7, v8, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_7a
    move-object v1, v6

    .line 111
    goto :goto_60
.end method

.method private static isSuccessfulPurchaseResponse(Ljava/lang/String;)Z
    .registers 4
    .parameter "response"

    .prologue
    .line 296
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, st:Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 298
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, token:Ljava/lang/String;
    const-string v2, "700"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 300
    const/4 v2, 0x1

    .line 303
    .end local v1           #token:Ljava/lang/String;
    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public static loadDetails(Lcom/sprint/w/installer/psi/ServicePack;)V
    .registers 9
    .parameter "sp"

    .prologue
    .line 176
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 177
    .local v2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "action"

    const-string v6, "pricequote"

    invoke-virtual {v2, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v5, "product"

    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/sprint/w/installer/util/Util;->getStoredContentBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DRM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, url:Ljava/lang/String;
    :try_start_30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?action=pricequote&product="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, id:Ljava/lang/String;
    invoke-static {v1}, Lcom/sprint/w/installer/psi/PsiContentManager$DocumentCache;->getDocument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, xml:Ljava/lang/String;
    if-nez v4, :cond_79

    .line 184
    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v4

    .line 185
    const-string v5, "<error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 186
    invoke-static {v1, v4}, Lcom/sprint/w/installer/psi/PsiContentManager$DocumentCache;->putDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_61
    sget-object v5, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PSI response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 194
    :cond_79
    invoke-static {p0, v4}, Lcom/sprint/w/installer/psi/ServicePackParser;->parseMore(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V

    .line 198
    return-void

    .line 188
    :cond_7d
    invoke-static {v1}, Lcom/sprint/w/installer/psi/PsiContentManager$DocumentCache;->removeDocument(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_80} :catch_82

    .line 189
    const/4 v4, 0x0

    goto :goto_61

    .line 195
    .end local v1           #id:Ljava/lang/String;
    .end local v4           #xml:Ljava/lang/String;
    :catch_82
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error when calling pricequote API"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static loadMetadata(Lcom/sprint/w/installer/psi/ServicePack;)V
    .registers 9
    .parameter "sp"

    .prologue
    .line 201
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 202
    .local v2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "pk"

    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/sprint/w/installer/util/Util;->getStoredMetaBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/getpackinfo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, url:Ljava/lang/String;
    :try_start_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?pk="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, id:Ljava/lang/String;
    invoke-static {v1}, Lcom/sprint/w/installer/psi/PsiContentManager$DocumentCache;->getDocument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, xml:Ljava/lang/String;
    if-nez v4, :cond_6a

    .line 208
    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v4

    .line 209
    sget-object v5, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RIA response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 211
    invoke-static {v1, v4}, Lcom/sprint/w/installer/psi/PsiContentManager$DocumentCache;->putDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_6a
    invoke-static {p0, v4}, Lcom/sprint/w/installer/psi/ServicePackParser;->parseMetaData(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6d} :catch_6e

    .line 217
    return-void

    .line 214
    .end local v1           #id:Ljava/lang/String;
    .end local v4           #xml:Ljava/lang/String;
    :catch_6e
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error when calling getpackinfo RIA API"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static loadTermsAndConditions(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "packId"

    .prologue
    .line 364
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 365
    .local v2, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "pk"

    invoke-virtual {v2, v5, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/sprint/w/installer/util/Util;->getStoredMetaBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/getpacktc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, url:Ljava/lang/String;
    :try_start_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?pk="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, id:Ljava/lang/String;
    invoke-static {v1}, Lcom/sprint/w/installer/psi/PsiContentManager$DocumentCache;->getDocument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, xml:Ljava/lang/String;
    if-nez v4, :cond_62

    .line 371
    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v4

    .line 372
    sget-object v5, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RIA response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 373
    invoke-static {v1, v4}, Lcom/sprint/w/installer/psi/PsiContentManager$DocumentCache;->putDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_62
    invoke-static {v4}, Lcom/sprint/w/installer/psi/ServicePackParser;->parseTermsAndConditions(Ljava/lang/String;)Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_65} :catch_67

    move-result-object v5

    return-object v5

    .line 376
    .end local v1           #id:Ljava/lang/String;
    .end local v4           #xml:Ljava/lang/String;
    :catch_67
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error when calling getpacktc RIA API"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static notify90X(Lcom/sprint/w/installer/psi/ServicePack;Lcom/sprint/w/installer/PsiCode;)V
    .registers 19
    .parameter "sp"
    .parameter "code"

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 310
    .local v1, body:Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/psi/ServicePack;->getNotifyUrl()Ljava/lang/String;

    move-result-object v11

    .line 311
    .local v11, url:Ljava/lang/String;
    if-eqz v11, :cond_f

    const-string v12, "http"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_28

    .line 312
    :cond_f
    sget-object v12, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to notify with bad URL="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 361
    .end local v11           #url:Ljava/lang/String;
    :goto_27
    return-void

    .line 315
    .restart local v11       #url:Ljava/lang/String;
    :cond_28
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 316
    .local v7, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 317
    .local v2, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 318
    .local v6, params:Lorg/apache/http/params/HttpParams;
    const-string v12, "http.connection.timeout"

    const/16 v13, 0x7530

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 319
    const-string v12, "http.socket.timeout"

    const/16 v13, 0x7530

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 320
    sget-object v12, Lcom/sprint/w/installer/psi/PsiContentManager$1;->$SwitchMap$com$sprint$w$installer$PsiCode:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/w/installer/PsiCode;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_1fa

    .line 340
    :goto_57
    if-nez v1, :cond_168

    .line 341
    sget-object v12, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v13, "Bad request code"

    invoke-virtual {v12, v13}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_60} :catch_61

    goto :goto_27

    .line 357
    .end local v2           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6           #params:Lorg/apache/http/params/HttpParams;
    .end local v7           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v11           #url:Ljava/lang/String;
    :catch_61
    move-exception v3

    .line 358
    .local v3, e:Ljava/lang/Exception;
    sget-object v12, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error posting code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    sget-object v12, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error posting code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_27

    .line 322
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6       #params:Lorg/apache/http/params/HttpParams;
    .restart local v7       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v11       #url:Ljava/lang/String;
    :pswitch_97
    :try_start_97
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sprint/w/installer/PsiCode;->SUCCESS:Lcom/sprint/w/installer/PsiCode;

    invoke-virtual {v13}, Lcom/sprint/w/installer/PsiCode;->getCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Success\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    goto :goto_57

    .line 325
    :pswitch_b9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sprint/w/installer/PsiCode;->INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/PsiCode;

    invoke-virtual {v13}, Lcom/sprint/w/installer/PsiCode;->getCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Insufficient Memory\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    goto/16 :goto_57

    .line 328
    :pswitch_dc
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sprint/w/installer/PsiCode;->USER_CANCELLED:Lcom/sprint/w/installer/PsiCode;

    invoke-virtual {v13}, Lcom/sprint/w/installer/PsiCode;->getCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " User Canceled\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    goto/16 :goto_57

    .line 331
    :pswitch_ff
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sprint/w/installer/PsiCode;->LOST_SERVICE:Lcom/sprint/w/installer/PsiCode;

    invoke-virtual {v13}, Lcom/sprint/w/installer/PsiCode;->getCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Loss of Service\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    goto/16 :goto_57

    .line 334
    :pswitch_122
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sprint/w/installer/PsiCode;->SERVER_ERROR:Lcom/sprint/w/installer/PsiCode;

    invoke-virtual {v13}, Lcom/sprint/w/installer/PsiCode;->getCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Server Error\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    goto/16 :goto_57

    .line 337
    :pswitch_145
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sprint/w/installer/PsiCode;->FORBIDDEN:Lcom/sprint/w/installer/PsiCode;

    invoke-virtual {v13}, Lcom/sprint/w/installer/PsiCode;->getCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Forbidden\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    .line 344
    :cond_168
    new-instance v12, Lorg/apache/http/entity/StringEntity;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 345
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 346
    .local v10, uri:Landroid/net/Uri;
    const-string v12, "x-wap-profile"

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getUaProfile()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->isUsingMag()Z

    move-result v12

    if-eqz v12, :cond_1d7

    const-string v12, "http"

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d7

    .line 348
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getNai()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":pcs"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, naiString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/sprint/w/installer/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, encodedNai:Ljava/lang/String;
    const-string v12, "Proxy-Authorization"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Basic "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/sprint/w/installer/util/HttpUtil;->getHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v8

    .line 352
    .local v8, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    const-string v13, "http.route.default-proxy"

    invoke-interface {v12, v13, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 354
    .end local v4           #encodedNai:Ljava/lang/String;
    .end local v5           #naiString:Ljava/lang/String;
    .end local v8           #proxy:Lorg/apache/http/HttpHost;
    :cond_1d7
    invoke-virtual {v2, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 355
    .local v9, resp:Lorg/apache/http/HttpResponse;
    sget-object v12, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v13, "Posted %s; Server says: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_1f7} :catch_61

    goto/16 :goto_27

    .line 320
    nop

    :pswitch_data_1fa
    .packed-switch 0x1
        :pswitch_97
        :pswitch_b9
        :pswitch_dc
        :pswitch_ff
        :pswitch_122
        :pswitch_145
    .end packed-switch
.end method

.method public static prepareForDownload(Lcom/sprint/w/installer/psi/ServicePack;)V
    .registers 13
    .parameter "sp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v11, 0x7f0600ac

    .line 227
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePack;->getLicenseId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    .line 228
    invoke-static {p0}, Lcom/sprint/w/installer/psi/PsiContentManager;->loadDetails(Lcom/sprint/w/installer/psi/ServicePack;)V

    .line 231
    :cond_c
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 232
    .local v3, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9}, Lcom/sprint/w/installer/util/Util;->getStoredContentBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/DRM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePack;->getPurchasedFlag()Z

    move-result v8

    if-nez v8, :cond_c1

    .line 235
    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 236
    const-string v8, "action"

    const-string v9, "purchase"

    invoke-virtual {v3, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v8, "product"

    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v8, "license"

    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePack;->getLicenseId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const/4 v8, 0x1

    :try_start_4f
    invoke-static {v7, v3, v8}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, response:Ljava/lang/String;
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase API response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6b} :catch_77

    .line 256
    :goto_6b
    invoke-static {v4}, Lcom/sprint/w/installer/psi/PsiContentManager;->isSuccessfulPurchaseResponse(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c1

    .line 257
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 243
    .end local v4           #response:Ljava/lang/String;
    :catch_77
    move-exception v1

    .line 244
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Exception calling PSI purchase API"

    invoke-virtual {v8, v9, v1}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Exception calling PSI purchase API"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 248
    const/4 v8, 0x1

    :try_start_87
    invoke-static {v7, v3, v8}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v4

    .line 249
    .restart local v4       #response:Ljava/lang/String;
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase API response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a3} :catch_a4

    goto :goto_6b

    .line 250
    .end local v4           #response:Ljava/lang/String;
    :catch_a4
    move-exception v2

    .line 251
    .local v2, e1:Ljava/lang/Exception;
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Exception retrying call to PSI purchase API"

    invoke-virtual {v8, v9, v2}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Exception retrying call to PSI purchase API"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 253
    new-instance v8, Ljava/lang/Exception;

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 261
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #e1:Ljava/lang/Exception;
    :cond_c1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9}, Lcom/sprint/w/installer/util/Util;->getStoredDownloadBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/redirect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 262
    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 263
    const-string v8, "download"

    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const/4 v8, 0x1

    :try_start_e9
    invoke-static {v7, v3, v8}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, data:Ljava/lang/String;
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Download API response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_105} :catch_133

    .line 282
    :goto_105
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 283
    .local v5, st:Ljava/util/StringTokenizer;
    :cond_10a
    :goto_10a
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_17d

    .line 284
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, token:Ljava/lang/String;
    const-string v8, "Content-URL:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_123

    .line 286
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/psi/ServicePack;->setDownloadUrl(Ljava/lang/String;)V

    .line 288
    :cond_123
    const-string v8, "Content-Install-Notify:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 289
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/psi/ServicePack;->setNotifyUrl(Ljava/lang/String;)V

    goto :goto_10a

    .line 268
    .end local v0           #data:Ljava/lang/String;
    .end local v5           #st:Ljava/util/StringTokenizer;
    .end local v6           #token:Ljava/lang/String;
    :catch_133
    move-exception v1

    .line 269
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Exception calling PSI download API"

    invoke-virtual {v8, v9, v1}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Exception calling PSI download API"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 273
    const/4 v8, 0x1

    :try_start_143
    invoke-static {v7, v3, v8}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v0

    .line 274
    .restart local v0       #data:Ljava/lang/String;
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Download API response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_15f} :catch_160

    goto :goto_105

    .line 275
    .end local v0           #data:Ljava/lang/String;
    :catch_160
    move-exception v2

    .line 276
    .restart local v2       #e1:Ljava/lang/Exception;
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Exception calling PSI download API"

    invoke-virtual {v8, v9, v2}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    sget-object v8, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Exception calling PSI download API"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 278
    new-instance v8, Ljava/lang/Exception;

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 293
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #e1:Ljava/lang/Exception;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v5       #st:Ljava/util/StringTokenizer;
    :cond_17d
    return-void
.end method

.method public static searchPacks(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 11
    .parameter "keywords"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 149
    const/4 v2, 0x1

    .line 150
    .local v2, success:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/sprint/w/installer/util/Util;->getStoredContentBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/drmweb/search"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, url:Ljava/lang/String;
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 152
    .local v1, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "key"

    invoke-virtual {v1, v5, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v5, "tot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v5, "clu"

    const-string v6, "w"

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v4, ""

    .line 157
    .local v4, xml:Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_52
    invoke-static {v3, v1, v5}, Lcom/sprint/w/installer/util/HttpUtil;->executeApiGet(Ljava/lang/String;Ljava/util/Hashtable;Z)Ljava/lang/String;

    move-result-object v4

    .line 158
    sget-object v5, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PSI response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6e} :catch_75

    .line 165
    :goto_6e
    if-eqz v2, :cond_8e

    .line 167
    :try_start_70
    invoke-static {v4}, Lcom/sprint/w/installer/psi/ServicePackParser;->parseSearchResult(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_86

    move-result-object v5

    .line 172
    :goto_74
    return-object v5

    .line 160
    :catch_75
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 162
    sget-object v5, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v6, "Error loading packs"

    invoke-virtual {v5, v6, v0}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    sget-object v5, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v6, "Error loading packs"

    invoke-virtual {v5, v6}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_6e

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :catch_86
    move-exception v0

    .line 169
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v5, Lcom/sprint/w/installer/psi/PsiContentManager;->log:Lcom/sprint/id/logger/Logger;

    const-string v6, "Error parsing response"

    invoke-virtual {v5, v6, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8e
    const/4 v5, 0x0

    goto :goto_74
.end method
