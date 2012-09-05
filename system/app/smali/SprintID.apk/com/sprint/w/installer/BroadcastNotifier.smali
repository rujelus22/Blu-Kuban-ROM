.class public Lcom/sprint/w/installer/BroadcastNotifier;
.super Ljava/lang/Object;
.source "BroadcastNotifier.java"


# static fields
.field public static final ACTION_PACK_ACTIVATED:Ljava/lang/String; = "com.sprint.action.PACK_ACTIVATED"

.field public static final ACTION_PACK_AUDIT:Ljava/lang/String; = "com.sprint.action.PACK_AUDIT"

.field public static final ACTION_PACK_INSTALLED:Ljava/lang/String; = "com.sprint.action.PACK_INSTALLED"

.field public static final ACTION_PACK_INSTALL_STATUS:Ljava/lang/String; = "com.sprint.action.pack.downloaded"

.field public static final ACTION_PACK_REMOVED:Ljava/lang/String; = "com.sprint.action.PACK_REMOVED"

.field public static final ACTION_USER_SKIPPED:Ljava/lang/String; = "com.sprint.action.user.skipped"

.field public static final EXTRA_INSTALLED_PACK_IDS:Ljava/lang/String; = "com.sprint.extra.INSTALLED_PACK_IDS"

.field public static final EXTRA_INSTALLED_PACK_VERSIONS:Ljava/lang/String; = "com.sprint.extra.INSTALLED_PACK_VERSIONS"

.field public static final EXTRA_INSTALLED_PSI_PACK_IDS:Ljava/lang/String; = "com.sprint.extra.INSTALLED_PSI_PACK_IDS"

.field public static final EXTRA_PACK_ID:Ljava/lang/String; = "com.sprint.extra.PACK_ID"

.field public static final EXTRA_PACK_VERSION:Ljava/lang/String; = "com.sprint.extra.PACK_VERSION"

.field public static final EXTRA_PSI_PACK_ID:Ljava/lang/String; = "com.sprint.extra.PSI_PACK_ID"


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/sprint/w/installer/BroadcastNotifier;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/BroadcastNotifier;->log:Lcom/sprint/id/logger/Logger;

    .line 34
    iput-object p1, p0, Lcom/sprint/w/installer/BroadcastNotifier;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static getPsiId(Lcom/sprint/w/installer/PackInfo;)Ljava/lang/String;
    .registers 4
    .parameter "packInfo"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sprint/w/installer/PackInfo;->psiId:Ljava/lang/String;

    .line 122
    .local v0, psiId:Ljava/lang/String;
    if-nez v0, :cond_1a

    iget-object v1, p0, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    const-string v2, "psi://content/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 123
    iget-object v1, p0, Lcom/sprint/w/installer/PackInfo;->srcUrl:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_1a
    return-object v0
.end method

.method private includeAll(Landroid/content/Intent;)V
    .registers 21
    .parameter "intent"

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/BroadcastNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI_PACKS:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "srcUrl"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "verName"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 88
    .local v10, cur:Landroid/database/Cursor;
    if-eqz v10, :cond_8f

    :try_start_25
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 89
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    .line 90
    .local v7, allIds:[Ljava/lang/String;
    array-length v1, v7

    new-array v9, v1, [Ljava/lang/String;

    .line 91
    .local v9, allPsiIds:[Ljava/lang/String;
    array-length v1, v7

    new-array v8, v1, [Ljava/lang/String;

    .line 92
    .local v8, allIdsVer:[Ljava/lang/String;
    const-string v1, "id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 93
    .local v14, indexId:I
    const-string v1, "srcUrl"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 94
    .local v15, indexSrcUrl:I
    const-string v1, "verName"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 95
    .local v16, indexVer:I
    const/4 v12, 0x0

    .line 97
    .local v12, i:I
    :cond_4a
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 98
    .local v18, srcUrl:Ljava/lang/String;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 99
    .local v13, id:Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 100
    .local v17, packVer:Ljava/lang/String;
    aput-object v13, v7, v12

    .line 101
    aput-object v17, v8, v12

    .line 102
    if-eqz v18, :cond_93

    const-string v1, "psi://content/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 103
    const/16 v1, 0xe

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v12

    .line 107
    :goto_72
    add-int/lit8 v12, v12, 0x1

    .line 108
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 109
    const-string v1, "com.sprint.extra.INSTALLED_PACK_IDS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "com.sprint.extra.INSTALLED_PSI_PACK_IDS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "com.sprint.extra.INSTALLED_PACK_VERSIONS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    :try_end_8f
    .catchall {:try_start_25 .. :try_end_8f} :catchall_a6
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_8f} :catch_98

    .line 116
    .end local v7           #allIds:[Ljava/lang/String;
    .end local v8           #allIdsVer:[Ljava/lang/String;
    .end local v9           #allPsiIds:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #id:Ljava/lang/String;
    .end local v14           #indexId:I
    .end local v15           #indexSrcUrl:I
    .end local v16           #indexVer:I
    .end local v17           #packVer:Ljava/lang/String;
    .end local v18           #srcUrl:Ljava/lang/String;
    :cond_8f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 118
    :goto_92
    return-void

    .line 105
    .restart local v7       #allIds:[Ljava/lang/String;
    .restart local v8       #allIdsVer:[Ljava/lang/String;
    .restart local v9       #allPsiIds:[Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #id:Ljava/lang/String;
    .restart local v14       #indexId:I
    .restart local v15       #indexSrcUrl:I
    .restart local v16       #indexVer:I
    .restart local v17       #packVer:Ljava/lang/String;
    .restart local v18       #srcUrl:Ljava/lang/String;
    :cond_93
    :try_start_93
    const-string v1, ""

    aput-object v1, v9, v12
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_a6
    .catch Ljava/lang/RuntimeException; {:try_start_93 .. :try_end_97} :catch_98

    goto :goto_72

    .line 113
    .end local v7           #allIds:[Ljava/lang/String;
    .end local v8           #allIdsVer:[Ljava/lang/String;
    .end local v9           #allPsiIds:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #id:Ljava/lang/String;
    .end local v14           #indexId:I
    .end local v15           #indexSrcUrl:I
    .end local v16           #indexVer:I
    .end local v17           #packVer:Ljava/lang/String;
    .end local v18           #srcUrl:Ljava/lang/String;
    :catch_98
    move-exception v11

    .line 114
    .local v11, e:Ljava/lang/RuntimeException;
    :try_start_99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/w/installer/BroadcastNotifier;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Error reading pack list"

    invoke-virtual {v1, v2, v11}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_a6

    .line 116
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_92

    .end local v11           #e:Ljava/lang/RuntimeException;
    :catchall_a6
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public notifyPackActivated(Lcom/sprint/w/installer/PackInfo;Z)V
    .registers 6
    .parameter "packInfo"
    .parameter "includeAll"

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.action.PACK_ACTIVATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sprint.extra.PACK_ID"

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "com.sprint.extra.PSI_PACK_ID"

    invoke-static {p1}, Lcom/sprint/w/installer/BroadcastNotifier;->getPsiId(Lcom/sprint/w/installer/PackInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "com.sprint.extra.PACK_VERSION"

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    if-eqz p2, :cond_23

    .line 65
    invoke-direct {p0, v0}, Lcom/sprint/w/installer/BroadcastNotifier;->includeAll(Landroid/content/Intent;)V

    .line 67
    :cond_23
    iget-object v1, p0, Lcom/sprint/w/installer/BroadcastNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public notifyPackAudit(Lcom/sprint/w/installer/PackInfo;Z)V
    .registers 6
    .parameter "packInfo"
    .parameter "includeAll"

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.action.PACK_AUDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sprint.extra.PACK_ID"

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "com.sprint.extra.PSI_PACK_ID"

    invoke-static {p1}, Lcom/sprint/w/installer/BroadcastNotifier;->getPsiId(Lcom/sprint/w/installer/PackInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "com.sprint.extra.PACK_VERSION"

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    if-eqz p2, :cond_23

    .line 76
    invoke-direct {p0, v0}, Lcom/sprint/w/installer/BroadcastNotifier;->includeAll(Landroid/content/Intent;)V

    .line 78
    :cond_23
    iget-object v1, p0, Lcom/sprint/w/installer/BroadcastNotifier;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Audit Broadcast sent"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/sprint/w/installer/BroadcastNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method public notifyPackInstalled(Lcom/sprint/w/installer/PackInfo;Z)V
    .registers 6
    .parameter "packInfo"
    .parameter "includeAll"

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.action.PACK_INSTALLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sprint.extra.PACK_ID"

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "com.sprint.extra.PSI_PACK_ID"

    invoke-static {p1}, Lcom/sprint/w/installer/BroadcastNotifier;->getPsiId(Lcom/sprint/w/installer/PackInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "com.sprint.extra.PACK_VERSION"

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    if-eqz p2, :cond_23

    .line 43
    invoke-direct {p0, v0}, Lcom/sprint/w/installer/BroadcastNotifier;->includeAll(Landroid/content/Intent;)V

    .line 45
    :cond_23
    iget-object v1, p0, Lcom/sprint/w/installer/BroadcastNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public notifyPackRemoved(Lcom/sprint/w/installer/PackInfo;Z)V
    .registers 6
    .parameter "packInfo"
    .parameter "includeAll"

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.action.PACK_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sprint.extra.PACK_ID"

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "com.sprint.extra.PSI_PACK_ID"

    invoke-static {p1}, Lcom/sprint/w/installer/BroadcastNotifier;->getPsiId(Lcom/sprint/w/installer/PackInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "com.sprint.extra.PACK_VERSION"

    iget-object v2, p1, Lcom/sprint/w/installer/PackInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    if-eqz p2, :cond_23

    .line 54
    invoke-direct {p0, v0}, Lcom/sprint/w/installer/BroadcastNotifier;->includeAll(Landroid/content/Intent;)V

    .line 56
    :cond_23
    iget-object v1, p0, Lcom/sprint/w/installer/BroadcastNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public notifyPackToBeInstalled(Z)V
    .registers 4
    .parameter "packStatus"

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sprint.action.pack.downloaded"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "PACK_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/sprint/w/installer/BroadcastNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method public notifyUserSkipHandled()V
    .registers 4

    .prologue
    .line 138
    const v0, 0x15180

    .line 139
    .local v0, duration:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.sprint.action.user.skipped"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "ATTENTION_DURATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/sprint/w/installer/BroadcastNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method public notifyUserSkipped()V
    .registers 5

    .prologue
    .line 129
    const v0, 0x15180

    .line 130
    .local v0, duration:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.sprint.action.user.skipped"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v2, "ATTENTION_DURATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v2, "SKIPPED"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    iget-object v2, p0, Lcom/sprint/w/installer/BroadcastNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    return-void
.end method
