.class public final Lgnu/mail/providers/maildir/MaildirFolder;
.super Ljavax/mail/Folder;
.source "MaildirFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;,
        Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;,
        Lgnu/mail/providers/maildir/MaildirFolder$MaildirFilter;
    }
.end annotation


# static fields
.field static deliveryCount:J

.field static final filter:Ljava/io/FilenameFilter;

.field static permanentFlags:Ljavax/mail/Flags;


# instance fields
.field curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

.field inbox:Z

.field maildir:Ljava/io/File;

.field newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

.field tmpdir:Ljava/io/File;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    new-instance v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirFilter;

    invoke-direct {v0}, Lgnu/mail/providers/maildir/MaildirFolder$MaildirFilter;-><init>()V

    sput-object v0, Lgnu/mail/providers/maildir/MaildirFolder;->filter:Ljava/io/FilenameFilter;

    .line 97
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    sput-object v0, Lgnu/mail/providers/maildir/MaildirFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 99
    const-wide/16 v0, 0x0

    sput-wide v0, Lgnu/mail/providers/maildir/MaildirFolder;->deliveryCount:J

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Store;Ljava/lang/String;ZZ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    .line 110
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    const-string v2, "tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->tmpdir:Ljava/io/File;

    .line 111
    new-instance v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    const-string v3, "new"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    .line 112
    new-instance v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    const-string v3, "cur"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/Folder;->mode:I

    .line 115
    if-eqz p3, :cond_40

    const/4 v0, 0x2

    :goto_3b
    iput v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->type:I

    .line 116
    iput-boolean p4, p0, Lgnu/mail/providers/maildir/MaildirFolder;->inbox:Z

    .line 117
    return-void

    .line 115
    :cond_40
    const/4 v0, 0x1

    goto :goto_3b
.end method


# virtual methods
.method public exists()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 760
    const-string v0, "INBOX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 764
    :try_start_8
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    const-string v1, "INBOX"

    invoke-virtual {v0, v1}, Ljavax/mail/Store;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    :try_end_f
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    .line 771
    :goto_10
    return-object v0

    .line 766
    :catch_11
    move-exception v0

    .line 771
    :cond_12
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Store;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v0

    goto :goto_10
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->inbox:Z

    if-eqz v0, :cond_7

    .line 143
    const-string v0, "INBOX"

    .line 144
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 345
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    .line 346
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    .line 347
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v0, v0

    .line 348
    iget-object v1, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v1, v1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v1, v1

    add-int/2addr v1, v0

    .line 349
    add-int/lit8 v2, p1, -0x1

    .line 350
    if-ltz v2, :cond_1c

    if-lt v2, v1, :cond_38

    .line 351
    :cond_1c
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_35

    .line 345
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    .line 352
    :cond_38
    if-ge v2, v0, :cond_42

    .line 353
    :try_start_3a
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    aget-object v0, v0, v2
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_35

    .line 355
    :goto_40
    monitor-exit p0

    return-object v0

    :cond_42
    :try_start_42
    iget-object v1, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v1, v1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    sub-int v0, v2, v0

    aget-object v0, v1, v0
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_35

    goto :goto_40
.end method

.method public declared-synchronized getMessageCount()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 322
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    .line 323
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    .line 324
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v0, v0

    iget-object v1, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v1, v1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v1, v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 322
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 365
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    .line 366
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    .line 367
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v0, v0

    .line 368
    iget-object v1, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v1, v1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v1, v1

    .line 369
    add-int v2, v0, v1

    .line 370
    new-array v2, v2, [Ljavax/mail/Message;

    .line 371
    iget-object v3, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v3, v3, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    iget-object v3, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v3, v3, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 373
    monitor-exit p0

    return-object v2

    .line 365
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpen()Z
    .registers 3

    .prologue
    .line 304
    iget v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public open(I)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 198
    iget v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_f
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_25

    .line 201
    :cond_1f
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    .line 204
    :cond_25
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->tmpdir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 205
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->tmpdir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v1

    .line 206
    :goto_36
    iget-object v3, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v3, v3, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 207
    if-eqz v0, :cond_70

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_70

    move v0, v1

    .line 208
    :cond_4d
    :goto_4d
    iget-object v3, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v3, v3, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8b

    .line 209
    if-eqz v0, :cond_64

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_64

    move v2, v1

    .line 210
    :cond_64
    :goto_64
    if-nez v2, :cond_72

    .line 211
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Unable to create directories"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    move v0, v2

    .line 205
    goto :goto_36

    :cond_70
    move v0, v2

    .line 207
    goto :goto_4d

    .line 212
    :cond_72
    const/4 v0, 0x2

    if-ne p1, v0, :cond_85

    .line 214
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_85

    .line 215
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Folder is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_85
    iput p1, p0, Ljavax/mail/Folder;->mode:I

    .line 219
    invoke-virtual {p0, v1}, Lgnu/mail/providers/maildir/MaildirFolder;->notifyConnectionListeners(I)V

    .line 220
    return-void

    :cond_8b
    move v2, v0

    goto :goto_64

    :cond_8d
    move v0, v1

    goto :goto_36
.end method

.method statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 384
    iget-object v0, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 385
    iget-wide v0, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->timestamp:J

    cmp-long v0, v8, v0

    if-nez v0, :cond_e

    .line 404
    :goto_d
    return-void

    .line 387
    :cond_e
    iget-object v0, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    sget-object v1, Lgnu/mail/providers/maildir/MaildirFolder;->filter:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    .line 388
    array-length v11, v10

    .line 389
    new-array v0, v11, [Lgnu/mail/providers/maildir/MaildirMessage;

    iput-object v0, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    move v6, v7

    .line 390
    :goto_1c
    if-ge v6, v11, :cond_48

    .line 392
    aget-object v2, v10, v6

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 394
    const/4 v4, 0x0

    .line 395
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 396
    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    .line 398
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 401
    :cond_38
    iget-object v12, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    new-instance v0, Lgnu/mail/providers/maildir/MaildirMessage;

    add-int/lit8 v5, v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lgnu/mail/providers/maildir/MaildirMessage;-><init>(Lgnu/mail/providers/maildir/MaildirFolder;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v12, v6

    .line 390
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1c

    .line 403
    :cond_48
    iput-wide v8, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->timestamp:J

    goto :goto_d
.end method
