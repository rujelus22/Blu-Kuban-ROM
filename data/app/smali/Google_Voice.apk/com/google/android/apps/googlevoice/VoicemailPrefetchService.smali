.class public Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;
.super Landroid/app/Service;
.source "VoicemailPrefetchService.java"


# static fields
.field public static final EXTRA_VOICEMAIL_IDS:Ljava/lang/String; = "VOICEMAIL_IDS"

.field private static final GET_REQUEST_TIMEOUT_MILLIS:J = 0xbb8L

.field private static final LAST_MODIFIED_FOR_PRIMARY_CACHE:J


# instance fields
.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field doDownload:Ljava/lang/Runnable;

.field private downloadThread:Ljava/lang/Thread;

.field private downloadVoicemailIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    new-instance v0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$1;-><init>(Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->doDownload:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->downloadVoicemailIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->download(Ljava/lang/String;)V

    return-void
.end method

.method private download(Ljava/lang/String;)V
    .registers 7
    .parameter "messageId"

    .prologue
    .line 64
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 65
    .local v1, finished:Landroid/os/ConditionVariable;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceRecordingRequest()Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;

    move-result-object v2

    .line 66
    .local v2, request:Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;
    invoke-interface {v2, p1}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->setCallId(Ljava/lang/String;)V

    .line 67
    new-instance v3, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService$2;-><init>(Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;Landroid/os/ConditionVariable;)V

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->submit(Ljava/lang/Runnable;)V

    .line 73
    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    .line 75
    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->getFilename()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 79
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    .line 82
    .end local v0           #file:Ljava/io/File;
    :cond_3a
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 33
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->downloadVoicemailIds:Ljava/util/List;

    .line 35
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 40
    if-nez p1, :cond_6

    .line 51
    :cond_5
    :goto_5
    return-void

    .line 43
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->downloadVoicemailIds:Ljava/util/List;

    const-string v1, "VOICEMAIL_IDS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->downloadVoicemailIds:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->downloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->downloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_5

    .line 48
    :cond_21
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->doDownload:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->downloadThread:Ljava/lang/Thread;

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailPrefetchService;->downloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method
