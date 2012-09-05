.class public final Lcom/android/commands/bmgr/Bmgr;
.super Ljava/lang/Object;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    }
.end annotation


# static fields
.field static final BMGR_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Backup Manager.  Is the system running?"

.field static final TRANSPORT_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the backup transport.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field mBmgr:Landroid/app/backup/IBackupManager;

.field private mNextArg:I

.field mRestore:Landroid/app/backup/IRestoreSession;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 278
    return-void
.end method

.method private doBackup()V
    .registers 5

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, pkg:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 156
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 166
    :goto_9
    return-void

    .line 161
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 162
    :catch_10
    move-exception v0

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private doEnable()V
    .registers 7

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 127
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 142
    :goto_9
    return-void

    .line 132
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 133
    .local v2, enable:Z
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 134
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup Manager now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_2f} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2f} :catch_35

    goto :goto_9

    .line 135
    .end local v2           #enable:Z
    :catch_30
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto :goto_9

    .line 138
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_35
    move-exception v1

    .line 139
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private doEnabled()V
    .registers 6

    .prologue
    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    .line 116
    .local v1, isEnabled:Z
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup Manager currently "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 122
    .end local v1           #isEnabled:Z
    :goto_22
    return-void

    .line 118
    :catch_23
    move-exception v0

    .line 119
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_22
.end method

.method private doList()V
    .registers 6

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, arg:Ljava/lang/String;
    const-string v2, "transports"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 208
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V

    .line 231
    :goto_f
    return-void

    .line 214
    :cond_10
    :try_start_10
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    .line 215
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v2, :cond_38

    .line 216
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_25} :catch_26

    goto :goto_f

    .line 227
    :catch_26
    move-exception v1

    .line 228
    .local v1, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 220
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_38
    :try_start_38
    const-string v2, "sets"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 221
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListRestoreSets()V

    .line 226
    :cond_43
    :goto_43
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v2}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V

    goto :goto_f

    .line 222
    :cond_49
    const-string v2, "transports"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 223
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_54} :catch_26

    goto :goto_43
.end method

.method private doListRestoreSets()V
    .registers 6

    .prologue
    .line 254
    :try_start_0
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v2, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 255
    .local v2, observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    move-result v1

    .line 256
    .local v1, err:I
    if-eqz v1, :cond_15

    .line 257
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Unable to request restore sets"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    .end local v1           #err:I
    .end local v2           #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :goto_14
    return-void

    .line 259
    .restart local v1       #err:I
    .restart local v2       #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :cond_15
    invoke-virtual {v2}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 260
    iget-object v3, v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    invoke-direct {p0, v3}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_14

    .line 262
    .end local v1           #err:I
    .end local v2           #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :catch_1e
    move-exception v0

    .line 263
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the backup transport.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private doListTransports()V
    .registers 11

    .prologue
    .line 235
    :try_start_0
    iget-object v8, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, current:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, transports:[Ljava/lang/String;
    if-eqz v7, :cond_11

    array-length v8, v7

    if-nez v8, :cond_19

    .line 238
    :cond_11
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "No transports available."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    .end local v1           #current:Ljava/lang/String;
    .end local v7           #transports:[Ljava/lang/String;
    :cond_18
    :goto_18
    return-void

    .line 242
    .restart local v1       #current:Ljava/lang/String;
    .restart local v7       #transports:[Ljava/lang/String;
    :cond_19
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1c
    if-ge v3, v4, :cond_18

    aget-object v6, v0, v3

    .line 243
    .local v6, t:Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    const-string v5, "  * "

    .line 244
    .local v5, pad:Ljava/lang/String;
    :goto_28
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 243
    .end local v5           #pad:Ljava/lang/String;
    :cond_41
    const-string v5, "    "
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_28

    .line 246
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #current:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #t:Ljava/lang/String;
    .end local v7           #transports:[Ljava/lang/String;
    :catch_44
    move-exception v2

    .line 247
    .local v2, e:Landroid/os/RemoteException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private doRestore()V
    .registers 8

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 323
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 347
    :goto_9
    return-void

    .line 327
    :cond_a
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1d

    .line 329
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doRestorePackage(Ljava/lang/String;)V

    .line 346
    :goto_15
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "done"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 332
    :cond_1d
    const/16 v5, 0x10

    :try_start_1f
    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .line 333
    .local v3, token:J
    const/4 v2, 0x0

    .line 334
    .local v2, filter:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_24
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 335
    if-nez v2, :cond_31

    new-instance v2, Ljava/util/HashSet;

    .end local v2           #filter:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 336
    .restart local v2       #filter:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_31
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_34} :catch_35

    goto :goto_24

    .line 340
    .end local v2           #filter:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3           #token:J
    :catch_35
    move-exception v1

    .line 341
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto :goto_9

    .line 339
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #filter:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3       #token:J
    :cond_3a
    :try_start_3a
    invoke-direct {p0, v3, v4, v2}, Lcom/android/commands/bmgr/Bmgr;->doRestoreAll(JLjava/util/HashSet;)V
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3d} :catch_35

    goto :goto_15
.end method

.method private doRestoreAll(JLjava/util/HashSet;)V
    .registers 19
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p3, filter:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v9, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v9, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 378
    .local v9, observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    const/4 v3, 0x0

    .line 379
    .local v3, didRestore:Z
    :try_start_6
    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v12

    iput-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    .line 380
    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v12, :cond_1c

    .line 381
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 426
    :goto_1b
    return-void

    .line 384
    :cond_1c
    const/4 v11, 0x0

    .line 385
    .local v11, sets:[Landroid/app/backup/RestoreSet;
    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v12, v9}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    move-result v5

    .line 386
    .local v5, err:I
    if-nez v5, :cond_60

    .line 387
    invoke-virtual {v9}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 388
    iget-object v11, v9, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    .line 389
    if-eqz v11, :cond_60

    .line 390
    move-object v2, v11

    .local v2, arr$:[Landroid/app/backup/RestoreSet;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2f
    if-ge v6, v7, :cond_60

    aget-object v10, v2, v6

    .line 391
    .local v10, s:Landroid/app/backup/RestoreSet;
    iget-wide v12, v10, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v12, v12, p1

    if-nez v12, :cond_a6

    .line 392
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Scheduling restore: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    if-nez p3, :cond_8d

    .line 394
    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    move-wide/from16 v0, p1

    invoke-interface {v12, v0, v1, v9}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;)I

    move-result v12

    if-nez v12, :cond_8b

    const/4 v3, 0x1

    .line 405
    .end local v2           #arr$:[Landroid/app/backup/RestoreSet;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #s:Landroid/app/backup/RestoreSet;
    :cond_60
    :goto_60
    if-nez v3, :cond_6e

    .line 406
    if-eqz v11, :cond_67

    array-length v12, v11

    if-nez v12, :cond_a9

    .line 407
    :cond_67
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "No available restore sets; no restore performed"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    :cond_6e
    :goto_6e
    if-eqz v3, :cond_73

    .line 417
    invoke-virtual {v9}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 421
    :cond_73
    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v12}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_78} :catch_79

    goto :goto_1b

    .line 422
    .end local v5           #err:I
    .end local v11           #sets:[Landroid/app/backup/RestoreSet;
    :catch_79
    move-exception v4

    .line 423
    .local v4, e:Landroid/os/RemoteException;
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1b

    .line 394
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v2       #arr$:[Landroid/app/backup/RestoreSet;
    .restart local v5       #err:I
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v10       #s:Landroid/app/backup/RestoreSet;
    .restart local v11       #sets:[Landroid/app/backup/RestoreSet;
    :cond_8b
    const/4 v3, 0x0

    goto :goto_60

    .line 396
    :cond_8d
    :try_start_8d
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashSet;->size()I

    move-result v12

    new-array v8, v12, [Ljava/lang/String;

    .line 397
    .local v8, names:[Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 398
    iget-object v12, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    move-wide/from16 v0, p1

    invoke-interface {v12, v0, v1, v9, v8}, Landroid/app/backup/IRestoreSession;->restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_a4

    const/4 v3, 0x1

    .line 400
    :goto_a3
    goto :goto_60

    .line 398
    :cond_a4
    const/4 v3, 0x0

    goto :goto_a3

    .line 390
    .end local v8           #names:[Ljava/lang/String;
    :cond_a6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 409
    .end local v2           #arr$:[Landroid/app/backup/RestoreSet;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #s:Landroid/app/backup/RestoreSet;
    :cond_a9
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "No matching restore set token.  Available sets:"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, v11}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_b3} :catch_79

    goto :goto_6e
.end method

.method private doRestorePackage(Ljava/lang/String;)V
    .registers 8
    .parameter "pkg"

    .prologue
    .line 351
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    .line 352
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v3, :cond_15

    .line 353
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    :goto_14
    return-void

    .line 357
    :cond_15
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v2, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 358
    .local v2, observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, p1, v2}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I

    move-result v1

    .line 359
    .local v1, err:I
    if-nez v1, :cond_3d

    .line 361
    invoke-virtual {v2}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 367
    :goto_25
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_14

    .line 368
    .end local v1           #err:I
    .end local v2           #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :catch_2b
    move-exception v0

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 363
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #err:I
    .restart local v2       #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :cond_3d
    :try_start_3d
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to restore package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_55} :catch_2b

    goto :goto_25
.end method

.method private doRun()V
    .registers 4

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 151
    :goto_5
    return-void

    .line 147
    :catch_6
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private doTransport()V
    .registers 7

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, which:Ljava/lang/String;
    if-nez v2, :cond_a

    .line 172
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 187
    .end local v2           #which:Ljava/lang/String;
    :goto_9
    return-void

    .line 176
    .restart local v2       #which:Ljava/lang/String;
    :cond_a
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, old:Ljava/lang/String;
    if-nez v1, :cond_43

    .line 178
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown transport \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' specified; no changes made."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_9

    .line 183
    .end local v1           #old:Ljava/lang/String;
    .end local v2           #which:Ljava/lang/String;
    :catch_31
    move-exception v0

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 181
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #old:Ljava/lang/String;
    .restart local v2       #which:Ljava/lang/String;
    :cond_43
    :try_start_43
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (formerly "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_6b} :catch_31

    goto :goto_9
.end method

.method private doWipe()V
    .registers 6

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, pkg:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 192
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 203
    :goto_9
    return-void

    .line 197
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->clearBackupData(Ljava/lang/String;)V

    .line 198
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wiped backup data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_9

    .line 199
    :catch_28
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private enableToString(Z)Ljava/lang/String;
    .registers 3
    .parameter "enabled"

    .prologue
    .line 110
    if-eqz p1, :cond_5

    const-string v0, "enabled"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "disabled"

    goto :goto_4
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .parameter "args"

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Lcom/android/commands/bmgr/Bmgr;

    invoke-direct {v1}, Lcom/android/commands/bmgr/Bmgr;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/commands/bmgr/Bmgr;->run([Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 47
    :goto_8
    return-void

    .line 43
    :catch_9
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception caught:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 429
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 430
    const/4 v0, 0x0

    .line 434
    :goto_8
    return-object v0

    .line 432
    :cond_9
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    aget-object v0, v1, v2

    .line 433
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    goto :goto_8
.end method

.method private printRestoreSets([Landroid/app/backup/RestoreSet;)V
    .registers 10
    .parameter "sets"

    .prologue
    .line 269
    if-eqz p1, :cond_5

    array-length v4, p1

    if-nez v4, :cond_d

    .line 270
    :cond_5
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "No restore sets"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    :cond_c
    return-void

    .line 273
    :cond_d
    move-object v0, p1

    .local v0, arr$:[Landroid/app/backup/RestoreSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10
    if-ge v1, v2, :cond_c

    aget-object v3, v0, v1

    .line 274
    .local v3, s:Landroid/app/backup/RestoreSet;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Landroid/app/backup/RestoreSet;->token:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private static showUsage()V
    .registers 2

    .prologue
    .line 438
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: bmgr [backup|restore|list|transport|run]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr backup PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 440
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enable BOOL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list transports"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list sets"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr transport WHICH"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore TOKEN"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore TOKEN PACKAGE..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr run"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr wipe PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'backup\' command schedules a backup pass for the named package."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Note that the backup pass will effectively be a no-op if the package"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "does not actually have changed data to store."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 455
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'enable\' command enables or disables the entire backup mechanism."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "If the argument is \'true\' it will be enabled, otherwise it will be"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 457
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "disabled.  When disabled, neither backup or restore operations will"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 458
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "be performed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 459
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'enabled\' command reports the current enabled/disabled state of"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "the backup mechanism."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 463
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'list transports\' command reports the names of the backup transports"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "currently available on the device.  These names can be passed as arguments"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 465
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "to the \'transport\' command.  The currently selected transport is indicated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 466
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "with a \'*\' character."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 468
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'list sets\' command reports the token and name of each restore set"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "available to the device via the current transport."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 470
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'transport\' command designates the named transport as the currently"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "active one.  This setting is persistent across reboots."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 473
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'restore\' command when given just a restore token initiates a full-system"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "restore operation from the currently active transport.  It will deliver"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 476
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "the restore set designated by the TOKEN argument to each application"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 477
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "that had contributed data to that restore set."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 479
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'restore\' command when given a token and one or more package names"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 480
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "initiates a restore operation of just those given packages from the restore"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 481
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "set designated by the TOKEN argument.  It is effectively the same as the"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\'restore\' operation supplying only a token, but applies a filter to the"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "set of applications to be restored."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 485
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'restore\' command when given just a package name intiates a restore of"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "just that one package according to the restore set selection algorithm"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 487
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "used by the RestoreSession.restorePackage() method."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'run\' command causes any scheduled backup operation to be initiated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "immediately, without the usual waiting period for batching together"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 491
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "data changes."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'wipe\' command causes all backed-up data for the given package to be"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 494
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "erased from the current transport\'s storage.  The next backup operation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 495
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "that the given application performs will rewrite its entire data set."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 496
    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .registers 5
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    .line 50
    array-length v1, p1

    if-ge v1, v2, :cond_8

    .line 51
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 107
    :goto_7
    return-void

    .line 55
    :cond_8
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 56
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    if-nez v1, :cond_20

    .line 57
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 61
    :cond_20
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 63
    .local v0, op:Ljava/lang/String;
    iput v2, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    .line 65
    const-string v1, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 66
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnabled()V

    goto :goto_7

    .line 70
    :cond_33
    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 71
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnable()V

    goto :goto_7

    .line 75
    :cond_3f
    const-string v1, "run"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 76
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRun()V

    goto :goto_7

    .line 80
    :cond_4b
    const-string v1, "backup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 81
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doBackup()V

    goto :goto_7

    .line 85
    :cond_57
    const-string v1, "list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 86
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doList()V

    goto :goto_7

    .line 90
    :cond_63
    const-string v1, "restore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 91
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRestore()V

    goto :goto_7

    .line 95
    :cond_6f
    const-string v1, "transport"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 96
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doTransport()V

    goto :goto_7

    .line 100
    :cond_7b
    const-string v1, "wipe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 101
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doWipe()V

    goto :goto_7

    .line 105
    :cond_87
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unknown command"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto/16 :goto_7
.end method
