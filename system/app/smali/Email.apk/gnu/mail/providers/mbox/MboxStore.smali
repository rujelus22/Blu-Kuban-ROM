.class public final Lgnu/mail/providers/mbox/MboxStore;
.super Ljavax/mail/Store;
.source "MboxStore.java"

# interfaces
.implements Lgnu/mail/treeutil/StatusSource;


# static fields
.field static final MBOX_TRACE:Ljava/util/logging/Level;

.field static attemptFallback:Z

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field root:Ljava/io/File;

.field private statusListeners:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    const-string v0, "gnu.mail.util.providers.mbox"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lgnu/mail/providers/mbox/MboxStore;->logger:Ljava/util/logging/Logger;

    .line 65
    new-instance v0, Lgnu/inet/util/TraceLevel;

    const-string v1, "mbox"

    invoke-direct {v0, v1}, Lgnu/inet/util/TraceLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mail/providers/mbox/MboxStore;->MBOX_TRACE:Ljava/util/logging/Level;

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/mail/providers/mbox/MboxStore;->attemptFallback:Z

    return-void
.end method

.method private getFolder(Ljava/lang/String;Z)Ljavax/mail/Folder;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x2f

    .line 193
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_12f

    if-eqz p1, :cond_12f

    const-string v1, "\\\\\\"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 198
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 200
    :goto_1a
    if-eqz v1, :cond_24

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 203
    :cond_24
    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    if-eqz v1, :cond_2f

    new-instance v0, Lgnu/mail/providers/mbox/MboxFolder;

    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    invoke-direct {v0, p0, v1, v5}, Lgnu/mail/providers/mbox/MboxFolder;-><init>(Ljavax/mail/Store;Ljava/io/File;Z)V

    .line 265
    :cond_2f
    :goto_2f
    return-object v0

    .line 207
    :cond_30
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v2, v4, :cond_3a

    .line 209
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_3a
    iget-object v2, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 213
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    :cond_4d
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 218
    :cond_55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7a

    if-eqz p2, :cond_7a

    .line 221
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    :cond_7a
    const-string v2, "INBOX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_125

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_125

    .line 228
    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    if-eqz v1, :cond_96

    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 230
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    .line 232
    :cond_96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_ab

    .line 235
    iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v2, "mail.mbox.inbox"

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_ab

    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    :cond_ab
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11c

    sget-boolean v1, Lgnu/mail/providers/mbox/MboxStore;->attemptFallback:Z

    if-eqz v1, :cond_11c

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v1, v4, :cond_11c

    .line 244
    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v1, v4, :cond_101

    .line 247
    new-instance v0, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v1, "user.name"

    invoke-direct {v0, v1}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/var/mail/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12d

    .line 252
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/var/spool/mail/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 256
    :cond_101
    :goto_101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11c

    .line 258
    new-instance v0, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v1, "user.home"

    invoke-direct {v0, v1}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    new-instance v1, Ljava/io/File;

    const-string v2, "Mailbox"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 263
    :cond_11c
    new-instance v1, Lgnu/mail/providers/mbox/MboxFolder;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lgnu/mail/providers/mbox/MboxFolder;-><init>(Ljavax/mail/Store;Ljava/io/File;Z)V

    move-object v0, v1

    goto/16 :goto_2f

    .line 265
    :cond_125
    new-instance v1, Lgnu/mail/providers/mbox/MboxFolder;

    invoke-direct {v1, p0, v0, v5}, Lgnu/mail/providers/mbox/MboxFolder;-><init>(Ljavax/mail/Store;Ljava/io/File;Z)V

    move-object v0, v1

    goto/16 :goto_2f

    :cond_12d
    move-object v0, v1

    goto :goto_101

    :cond_12f
    move-object v1, p1

    goto/16 :goto_1a
.end method


# virtual methods
.method public getDefaultFolder()Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 164
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/mail/providers/mbox/MboxStore;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lgnu/mail/providers/mbox/MboxStore;->getFolder(Ljava/lang/String;Z)Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method log(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 278
    sget-object v0, Lgnu/mail/providers/mbox/MboxStore;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lgnu/mail/providers/mbox/MboxStore;->MBOX_TRACE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method protected processStatusEvent(Lgnu/mail/treeutil/StatusEvent;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 319
    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxStore;->statusListeners:Ljava/util/List;

    monitor-enter v1

    .line 321
    :try_start_4
    iget-object v2, p0, Lgnu/mail/providers/mbox/MboxStore;->statusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lgnu/mail/treeutil/StatusListener;

    .line 322
    iget-object v3, p0, Lgnu/mail/providers/mbox/MboxStore;->statusListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 323
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_1a

    .line 324
    invoke-virtual {p1}, Lgnu/mail/treeutil/StatusEvent;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 345
    :cond_19
    return-void

    .line 323
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0

    .line 327
    :goto_1d
    :pswitch_1d
    array-length v1, v2

    if-ge v0, v1, :cond_19

    .line 329
    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Lgnu/mail/treeutil/StatusListener;->statusOperationStarted(Lgnu/mail/treeutil/StatusEvent;)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 333
    :goto_28
    :pswitch_28
    array-length v1, v2

    if-ge v0, v1, :cond_19

    .line 335
    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Lgnu/mail/treeutil/StatusListener;->statusProgressUpdate(Lgnu/mail/treeutil/StatusEvent;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 339
    :goto_33
    :pswitch_33
    array-length v1, v2

    if-ge v0, v1, :cond_19

    .line 341
    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Lgnu/mail/treeutil/StatusListener;->statusOperationEnded(Lgnu/mail/treeutil/StatusEvent;)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 324
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_28
        :pswitch_33
    .end packed-switch
.end method
