.class public final Lcom/android/commands/bu/Backup;
.super Ljava/lang/Object;
.source "Backup.java"


# static fields
.field static final TAG:Ljava/lang/String; = "bu"

.field static mArgs:[Ljava/lang/String;


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mNextArg:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doFullBackup(I)V
    .registers 14
    .parameter "socketFd"

    .prologue
    .line 65
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v10, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 67
    .local v2, saveApks:Z
    const/4 v3, 0x0

    .line 68
    .local v3, saveShared:Z
    const/4 v4, 0x0

    .line 69
    .local v4, doEverything:Z
    const/4 v5, 0x1

    .line 72
    .local v5, allIncludesSystem:Z
    :goto_9
    invoke-direct {p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    move-result-object v7

    .local v7, arg:Ljava/lang/String;
    if-eqz v7, :cond_7a

    .line 73
    const-string v0, "-"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 74
    const-string v0, "-apk"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 75
    const/4 v2, 0x1

    goto :goto_9

    .line 76
    :cond_21
    const-string v0, "-noapk"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 77
    const/4 v2, 0x0

    goto :goto_9

    .line 78
    :cond_2b
    const-string v0, "-shared"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 79
    const/4 v3, 0x1

    goto :goto_9

    .line 80
    :cond_35
    const-string v0, "-noshared"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 81
    const/4 v3, 0x0

    goto :goto_9

    .line 82
    :cond_3f
    const-string v0, "-system"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 83
    const/4 v5, 0x1

    goto :goto_9

    .line 84
    :cond_49
    const-string v0, "-nosystem"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 85
    const/4 v5, 0x0

    goto :goto_9

    .line 86
    :cond_53
    const-string v0, "-all"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 87
    const/4 v4, 0x1

    goto :goto_9

    .line 89
    :cond_5d
    const-string v0, "bu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown backup flag "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 94
    :cond_76
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 98
    :cond_7a
    if-eqz v4, :cond_89

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_89

    .line 99
    const-string v0, "bu"

    const-string v6, "-all passed for backup along with specific package names"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_89
    if-nez v4, :cond_9b

    if-nez v3, :cond_9b

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9b

    .line 103
    const-string v0, "bu"

    const-string v6, "no backup packages supplied and neither -shared nor -all given"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_9a
    return-void

    .line 108
    :cond_9b
    :try_start_9b
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 109
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 110
    .local v9, packArray:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_b0} :catch_b1

    goto :goto_9a

    .line 112
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v9           #packArray:[Ljava/lang/String;
    :catch_b1
    move-exception v8

    .line 113
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "bu"

    const-string v6, "Unable to invoke backup manager for backup"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a
.end method

.method private doFullRestore(I)V
    .registers 6
    .parameter "socketFd"

    .prologue
    .line 120
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 121
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 125
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_9
    return-void

    .line 122
    :catch_a
    move-exception v0

    .line 123
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "bu"

    const-string v3, "Unable to invoke backup manager for restore"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .parameter "args"

    .prologue
    .line 35
    const-string v1, "bu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beginning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sput-object p0, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    .line 38
    :try_start_1d
    new-instance v1, Lcom/android/commands/bu/Backup;

    invoke-direct {v1}, Lcom/android/commands/bu/Backup;-><init>()V

    invoke-virtual {v1}, Lcom/android/commands/bu/Backup;->run()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_2d

    .line 42
    :goto_25
    const-string v1, "bu"

    const-string v2, "Finished."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 39
    :catch_2d
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "bu"

    const-string v2, "Error running backup/restore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 128
    iget v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    sget-object v2, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 129
    const/4 v0, 0x0

    .line 133
    :goto_8
    return-object v0

    .line 131
    :cond_9
    sget-object v1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    aget-object v0, v1, v2

    .line 132
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    goto :goto_8
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 46
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 47
    iget-object v2, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_18

    .line 48
    const-string v2, "bu"

    const-string v3, "Can\'t obtain Backup Manager binder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_17
    return-void

    .line 52
    :cond_18
    invoke-direct {p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 54
    .local v1, socketFd:I
    invoke-direct {p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, arg:Ljava/lang/String;
    const-string v2, "backup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 56
    invoke-direct {p0, v1}, Lcom/android/commands/bu/Backup;->doFullBackup(I)V

    goto :goto_17

    .line 57
    :cond_30
    const-string v2, "restore"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 58
    invoke-direct {p0, v1}, Lcom/android/commands/bu/Backup;->doFullRestore(I)V

    goto :goto_17

    .line 60
    :cond_3c
    const-string v2, "bu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid operation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method
