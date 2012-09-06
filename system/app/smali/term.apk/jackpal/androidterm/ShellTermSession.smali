.class public Ljackpal/androidterm/ShellTermSession;
.super Ljackpal/androidterm/emulatorview/TermSession;
.source "ShellTermSession.java"


# static fields
.field private static final PROCESS_EXITED:I = 0x1

.field public static final PROCESS_EXIT_DISPLAYS_MESSAGE:I = 0x1

.field public static final PROCESS_EXIT_FINISHES_SESSION:I


# instance fields
.field private mHandle:Ljava/lang/String;

.field private mInitialCommand:Ljava/lang/String;

.field private mMsgHandler:Landroid/os/Handler;

.field private mProcId:I

.field private mProcessExitBehavior:I

.field private mProcessExitMessage:Ljava/lang/String;

.field private mSettings:Ljackpal/androidterm/util/TermSettings;

.field private mTermFd:Ljava/io/FileDescriptor;

.field private mUTF8ModeNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

.field private mWatcherThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)V
    .registers 5
    .parameter "settings"
    .parameter "initialCommand"

    .prologue
    .line 82
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermSession;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/ShellTermSession;->mProcessExitBehavior:I

    .line 63
    new-instance v0, Ljackpal/androidterm/ShellTermSession$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/ShellTermSession$1;-><init>(Ljackpal/androidterm/ShellTermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mMsgHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Ljackpal/androidterm/ShellTermSession$2;

    invoke-direct {v0, p0}, Ljackpal/androidterm/ShellTermSession$2;-><init>(Ljackpal/androidterm/ShellTermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mUTF8ModeNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 84
    invoke-virtual {p0, p1}, Ljackpal/androidterm/ShellTermSession;->updatePrefs(Ljackpal/androidterm/util/TermSettings;)V

    .line 86
    invoke-direct {p0}, Ljackpal/androidterm/ShellTermSession;->initializeSession()V

    .line 87
    iput-object p2, p0, Ljackpal/androidterm/ShellTermSession;->mInitialCommand:Ljava/lang/String;

    .line 89
    new-instance v0, Ljackpal/androidterm/ShellTermSession$3;

    invoke-direct {v0, p0}, Ljackpal/androidterm/ShellTermSession$3;-><init>(Ljackpal/androidterm/ShellTermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mWatcherThread:Ljava/lang/Thread;

    .line 98
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mWatcherThread:Ljava/lang/Thread;

    const-string v1, "Process watcher"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/ShellTermSession;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljackpal/androidterm/ShellTermSession;->onProcessExit(I)V

    return-void
.end method

.method static synthetic access$100(Ljackpal/androidterm/ShellTermSession;)Ljava/io/FileDescriptor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$200(Ljackpal/androidterm/ShellTermSession;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Ljackpal/androidterm/ShellTermSession;->mProcId:I

    return v0
.end method

.method static synthetic access$300(Ljackpal/androidterm/ShellTermSession;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "path"

    .prologue
    .line 141
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, dirs:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    .local v1, checkedPath:Ljava/lang/StringBuilder;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_12
    if-ge v5, v6, :cond_32

    aget-object v3, v0, v5

    .line 144
    .local v3, dirname:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-static {v2}, Ljackpal/androidterm/compat/FileCompat;->canExecute(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 150
    .end local v2           #dir:Ljava/io/File;
    .end local v3           #dirname:Ljava/lang/String;
    :cond_32
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private createSubprocess([ILjava/lang/String;[Ljava/lang/String;)V
    .registers 14
    .parameter "processId"
    .parameter "shell"
    .parameter "env"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 171
    invoke-direct {p0, p2}, Ljackpal/androidterm/ShellTermSession;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 176
    .local v1, argList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    .local v0, arg0:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 179
    const-string v5, "Term"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shell "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3c} :catch_3c

    .line 186
    .end local v0           #arg0:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    :catch_3c
    move-exception v3

    .line 187
    .local v3, e:Ljava/lang/Exception;
    iget-object v5, p0, Ljackpal/androidterm/ShellTermSession;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v5}, Ljackpal/androidterm/util/TermSettings;->getFailsafeShell()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljackpal/androidterm/ShellTermSession;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 188
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .restart local v0       #arg0:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 192
    .end local v3           #e:Ljava/lang/Exception;
    .local v2, args:[Ljava/lang/String;
    :goto_55
    invoke-static {v0, v2, p3, p1}, Ljackpal/androidterm/Exec;->createSubprocess(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)Ljava/io/FileDescriptor;

    move-result-object v5

    iput-object v5, p0, Ljackpal/androidterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    .line 193
    return-void

    .line 181
    .end local v2           #args:[Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    :cond_5c
    :try_start_5c
    invoke-static {v4}, Ljackpal/androidterm/compat/FileCompat;->canExecute(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_86

    .line 182
    const-string v5, "Term"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shell "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not executable!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 185
    :cond_86
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_8f} :catch_3c

    .restart local v2       #args:[Ljava/lang/String;
    goto :goto_55
.end method

.method private initializeSession()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 108
    iget-object v5, p0, Ljackpal/androidterm/ShellTermSession;->mSettings:Ljackpal/androidterm/util/TermSettings;

    .line 110
    .local v5, settings:Ljackpal/androidterm/util/TermSettings;
    new-array v4, v9, [I

    .line 112
    .local v4, processId:[I
    const-string v6, "PATH"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, path:Ljava/lang/String;
    invoke-virtual {v5}, Ljackpal/androidterm/util/TermSettings;->doPathExtensions()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 114
    invoke-virtual {v5}, Ljackpal/androidterm/util/TermSettings;->getAppendPath()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, appendPath:Ljava/lang/String;
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_35

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_35
    invoke-virtual {v5}, Ljackpal/androidterm/util/TermSettings;->allowPathPrepend()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 120
    invoke-virtual {v5}, Ljackpal/androidterm/util/TermSettings;->getPrependPath()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, prependPath:Ljava/lang/String;
    if-eqz v3, :cond_5e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5e

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .end local v0           #appendPath:Ljava/lang/String;
    .end local v3           #prependPath:Ljava/lang/String;
    :cond_5e
    invoke-virtual {v5}, Ljackpal/androidterm/util/TermSettings;->verifyPath()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 127
    invoke-direct {p0, v2}, Ljackpal/androidterm/ShellTermSession;->checkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    :cond_68
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/lang/String;

    .line 130
    .local v1, env:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERM="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljackpal/androidterm/util/TermSettings;->getTermType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v8

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PATH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v9

    .line 133
    invoke-virtual {v5}, Ljackpal/androidterm/util/TermSettings;->getShell()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6, v1}, Ljackpal/androidterm/ShellTermSession;->createSubprocess([ILjava/lang/String;[Ljava/lang/String;)V

    .line 134
    aget v6, v4, v8

    iput v6, p0, Ljackpal/androidterm/ShellTermSession;->mProcId:I

    .line 136
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Ljackpal/androidterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, v6}, Ljackpal/androidterm/ShellTermSession;->setTermOut(Ljava/io/OutputStream;)V

    .line 137
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Ljackpal/androidterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, v6}, Ljackpal/androidterm/ShellTermSession;->setTermIn(Ljava/io/InputStream;)V

    .line 138
    return-void
.end method

.method private onProcessExit(I)V
    .registers 5
    .parameter "result"

    .prologue
    .line 257
    iget-object v1, p0, Ljackpal/androidterm/ShellTermSession;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v1}, Ljackpal/androidterm/util/TermSettings;->closeWindowOnProcessExit()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 258
    invoke-virtual {p0}, Ljackpal/androidterm/ShellTermSession;->finish()V

    .line 268
    :cond_b
    :goto_b
    return-void

    .line 259
    :cond_c
    iget-object v1, p0, Ljackpal/androidterm/ShellTermSession;->mProcessExitMessage:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 261
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/ShellTermSession;->mProcessExitMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 262
    .local v0, msg:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljackpal/androidterm/ShellTermSession;->appendToEmulator([BII)V

    .line 263
    invoke-virtual {p0}, Ljackpal/androidterm/ShellTermSession;->notifyUpdate()V
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_39} :catch_3a

    goto :goto_b

    .line 264
    .end local v0           #msg:[B
    :catch_3a
    move-exception v1

    goto :goto_b
.end method

.method private parse(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x22

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, PLAIN:I
    const/4 v2, 0x1

    .line 198
    .local v2, WHITESPACE:I
    const/4 v0, 0x2

    .line 199
    .local v0, INQUOTE:I
    const/4 v8, 0x1

    .line 200
    .local v8, state:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 202
    .local v5, cmdLen:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v3, builder:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_15
    if-ge v6, v5, :cond_6d

    .line 204
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 205
    .local v4, c:C
    if-nez v8, :cond_3e

    .line 206
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 209
    const/4 v8, 0x1

    .line 203
    :cond_33
    :goto_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 210
    :cond_36
    if-ne v4, v11, :cond_3a

    .line 211
    const/4 v8, 0x2

    goto :goto_33

    .line 213
    :cond_3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 215
    :cond_3e
    const/4 v9, 0x1

    if-ne v8, v9, :cond_50

    .line 216
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_33

    .line 218
    if-ne v4, v11, :cond_4b

    .line 219
    const/4 v8, 0x2

    goto :goto_33

    .line 221
    :cond_4b
    const/4 v8, 0x0

    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 224
    :cond_50
    const/4 v9, 0x2

    if-ne v8, v9, :cond_33

    .line 225
    const/16 v9, 0x5c

    if-ne v4, v9, :cond_65

    .line 226
    add-int/lit8 v9, v6, 0x1

    if-ge v9, v5, :cond_33

    .line 227
    add-int/lit8 v6, v6, 0x1

    .line 228
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 230
    :cond_65
    if-ne v4, v11, :cond_69

    .line 231
    const/4 v8, 0x0

    goto :goto_33

    .line 233
    :cond_69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 237
    .end local v4           #c:C
    :cond_6d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_7a

    .line 238
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_7a
    return-object v7
.end method

.method private sendInitialCommand(Ljava/lang/String;)V
    .registers 4
    .parameter "initialCommand"

    .prologue
    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/ShellTermSession;->write(Ljava/lang/String;)V

    .line 168
    :cond_1c
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 272
    iget v0, p0, Ljackpal/androidterm/ShellTermSession;->mProcId:I

    invoke-static {v0}, Ljackpal/androidterm/Exec;->hangupProcessGroup(I)V

    .line 273
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Ljackpal/androidterm/Exec;->close(Ljava/io/FileDescriptor;)V

    .line 274
    invoke-super {p0}, Ljackpal/androidterm/emulatorview/TermSession;->finish()V

    .line 275
    return-void
.end method

.method public getHandle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mHandle:Ljava/lang/String;

    return-object v0
.end method

.method public initializeEmulator(II)V
    .registers 5
    .parameter "columns"
    .parameter "rows"

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Ljackpal/androidterm/emulatorview/TermSession;->initializeEmulator(II)V

    .line 157
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Ljackpal/androidterm/ShellTermSession;->getUTF8Mode()Z

    move-result v1

    invoke-static {v0, v1}, Ljackpal/androidterm/Exec;->setPtyUTF8Mode(Ljava/io/FileDescriptor;Z)V

    .line 158
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mUTF8ModeNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/ShellTermSession;->setUTF8ModeUpdateCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 160
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mWatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mInitialCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljackpal/androidterm/ShellTermSession;->sendInitialCommand(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setHandle(Ljava/lang/String;)V
    .registers 4
    .parameter "handle"

    .prologue
    .line 278
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mHandle:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change handle once set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_c
    iput-object p1, p0, Ljackpal/androidterm/ShellTermSession;->mHandle:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setProcessExitMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 253
    iput-object p1, p0, Ljackpal/androidterm/ShellTermSession;->mProcessExitMessage:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public updatePrefs(Ljackpal/androidterm/util/TermSettings;)V
    .registers 4
    .parameter "settings"

    .prologue
    .line 102
    iput-object p1, p0, Ljackpal/androidterm/ShellTermSession;->mSettings:Ljackpal/androidterm/util/TermSettings;

    .line 103
    new-instance v0, Ljackpal/androidterm/emulatorview/ColorScheme;

    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getColorScheme()[I

    move-result-object v1

    invoke-direct {v0, v1}, Ljackpal/androidterm/emulatorview/ColorScheme;-><init>([I)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/ShellTermSession;->setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 104
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->defaultToUTF8Mode()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/ShellTermSession;->setDefaultUTF8Mode(Z)V

    .line 105
    return-void
.end method

.method public updateSize(II)V
    .registers 5
    .parameter "columns"
    .parameter "rows"

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;

    invoke-static {v0, p2, p1, v1, v1}, Ljackpal/androidterm/Exec;->setPtyWindowSize(Ljava/io/FileDescriptor;IIII)V

    .line 247
    invoke-super {p0, p1, p2}, Ljackpal/androidterm/emulatorview/TermSession;->updateSize(II)V

    .line 248
    return-void
.end method
