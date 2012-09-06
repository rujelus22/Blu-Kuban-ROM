.class public Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;
.super Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;
.source "AndroidVoiceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;,
        Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;,
        Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;,
        Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_COLUMN_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field private static final DB_COLUMN_DATA:Ljava/lang/String; = "data"

.field private static final DB_COLUMN_LABEL:Ljava/lang/String; = "label"

.field private static final DB_NAME:Ljava/lang/String; = "model.db"

.field private static final DB_TABLE_CONVERSATIONS:Ljava/lang/String; = "conversations"

.field private static final DB_TABLE_CONVERSATION_LABELS:Ljava/lang/String; = "conversation_labels"

.field private static final DB_TABLE_LABELS:Ljava/lang/String; = "labels"

.field private static final DB_VERSION:I = 0x2

.field private static final FILENAME_SUFFIX_MP3:Ljava/lang/String; = ".mp3"

.field private static final LAST_MODIFIED_FOR_PRIMARY_CACHE:J = 0x0L

.field private static final MP3_LIFETIME_LIMIT_MILLIS:J = 0x9a7ec800L

.field private static final VOICE_RECORDING_PRIMARY_CACHE_SIZE:I = 0x8

.field private static final VOICE_RECORDING_SECONDARY_CACHE_SIZE:I = 0x4


# instance fields
.field private final actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

.field private backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

.field private final backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

.field private final clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private contactCheckThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private contactInfosByNumberKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private contactInfosToCheck:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/googlevoice/core/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private contactRebuildThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final contactsApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

.field private contactsCursor:Landroid/database/Cursor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private contactsObserver:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final context:Landroid/content/Context;

.field private final contextProxy:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

.field private conversationsById:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private final databaseLock:Ljava/lang/Object;

.field private defaultLabels:[Lcom/google/android/apps/googlevoice/core/Label;

.field private didStartObservingContacts:Z

.field private final fileComparatorByLastModified:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private haveUpToDateContacts:Z

.field private history:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

.field private labels:[Lcom/google/android/apps/googlevoice/core/Label;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private memoryUtils:Lcom/google/android/apps/googlevoice/util/MemoryUtils;

.field private final mp3Filter:Ljava/io/FilenameFilter;

.field private searchLabel:Lcom/google/android/apps/googlevoice/core/Label;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private unknownContactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

.field private final versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

.field private wantUpToDateContacts:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/model/ActionModel;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/proxy/ContextProxy;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;Lcom/google/android/apps/googlevoice/system/VersionHelper;Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;)V
    .registers 11
    .parameter "actionModel"
    .parameter "voicePreferences"
    .parameter "contextProxy"
    .parameter "clockUtils"
    .parameter "backgroundThreadFactory"
    .parameter "versionHelper"
    .parameter "contactsApiHelper"

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;-><init>()V

    .line 120
    new-array v0, v2, [Lcom/google/android/apps/googlevoice/core/PhoneCall;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->history:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 121
    new-array v0, v2, [Lcom/google/android/apps/googlevoice/core/Label;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 123
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosByNumberKey:Ljava/util/Map;

    .line 126
    new-instance v0, Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->unknownContactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 129
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->didStartObservingContacts:Z

    .line 131
    iput v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->wantUpToDateContacts:I

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->haveUpToDateContacts:Z

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->databaseLock:Ljava/lang/Object;

    .line 150
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->log:Lcom/google/android/apps/common/log/GLog;

    .line 151
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contextProxy:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    .line 152
    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contentResolver:Landroid/content/ContentResolver;

    .line 154
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->isFullSubscriber()Z

    move-result v0

    if-eqz v0, :cond_8b

    sget-object v0, Lcom/google/android/apps/googlevoice/core/Label;->DEFAULT_LABELS_TO_DISPLAY_FOR_FULL_SUBSCRIBERS:[Lcom/google/android/apps/googlevoice/core/Label;

    :goto_5c
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->defaultLabels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 157
    new-array v0, v2, [Lcom/google/android/apps/googlevoice/core/Label;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->defaultLabels:[Lcom/google/android/apps/googlevoice/core/Label;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/core/Label;->mergeLabelArrays([Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Label;)[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 158
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

    .line 159
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 160
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 161
    iput-object p7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    .line 162
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    .line 163
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getMemoryUtils()Lcom/google/android/apps/googlevoice/util/MemoryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->memoryUtils:Lcom/google/android/apps/googlevoice/util/MemoryUtils;

    .line 164
    new-instance v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$1;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->mp3Filter:Ljava/io/FilenameFilter;

    .line 170
    new-instance v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$2;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->fileComparatorByLastModified:Ljava/util/Comparator;

    .line 177
    return-void

    .line 154
    :cond_8b
    sget-object v0, Lcom/google/android/apps/googlevoice/core/Label;->DEFAULT_LABELS_TO_DISPLAY_FOR_LITE_SUBSCRIBERS:[Lcom/google/android/apps/googlevoice/core/Label;

    goto :goto_5c
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->databaseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Lcom/google/android/apps/googlevoice/util/MemoryUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->memoryUtils:Lcom/google/android/apps/googlevoice/util/MemoryUtils;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->noteContactsChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->noteContactsRebuilt()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactRebuildThreadFinished()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Lcom/google/android/apps/googlevoice/core/ContactInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->checkLocalContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/io/FilenameFilter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->mp3Filter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getCallIdsForRecentVoicemails()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Comparator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->fileComparatorByLastModified:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Ljava/io/File;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->isPrimaryCache(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->recordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Lcom/google/android/apps/common/time/ClockUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/Object;Lcom/google/android/apps/common/time/ClockUtils;Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;Ljava/util/List;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 91
    invoke-static/range {p0 .. p5}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->writeConversationToDatabase(Landroid/content/Context;Ljava/lang/Object;Lcom/google/android/apps/common/time/ClockUtils;Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Landroid/database/Cursor;Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->setContactsCursorAndObserver(Landroid/database/Cursor;Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;)V

    return-void
.end method

.method private addLabelToConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V
    .registers 5
    .parameter "conversation"
    .parameter "label"

    .prologue
    .line 266
    invoke-virtual {p0, p2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/googlevoice/core/Label;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 267
    invoke-virtual {p1, p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->addLabel(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->notifyListenersConversationUpdated(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 269
    return-void
.end method

.method private attemptToWriteToDatabase(Ljava/util/Hashtable;Ljava/util/List;Ljava/util/List;)V
    .registers 40
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 853
    .local p1, conversationBufsById:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;>;"
    .local p2, labelBufs:Ljava/util/List;,"Ljava/util/List<Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;>;"
    .local p3, conversationIdsByLabel:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->log:Lcom/google/android/apps/common/log/GLog;

    move-object/from16 v29, v0

    const-string v30, "VoiceModel.writeToDatabase():"

    invoke-interface/range {v29 .. v30}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v15

    .line 855
    .local v15, t0:J
    const/4 v8, 0x0

    .line 857
    .local v8, db:Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getSQLiteDatabaseProxy()Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;

    move-result-object v8

    .line 859
    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->beginTransaction()V

    .line 861
    const-string v29, "labels"

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v8, v0, v1, v2}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 862
    const-string v29, "conversations"

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v8, v0, v1, v2}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 863
    const-string v29, "conversation_labels"

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v8, v0, v1, v2}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v17

    .line 867
    .local v17, t1:J
    const/16 v27, 0x0

    .line 868
    .local v27, wroteConversations:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_5e
    :goto_5e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_99

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 869
    .local v9, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;>;"
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 870
    .local v25, values:Landroid/content/ContentValues;
    const-string v30, "conversation_id"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v30, "conversations"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/protobuf/MessageLite;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->safelyAddMessageAsDataToValueAndInsert(Ljava/lang/String;Landroid/content/ContentValues;Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;Lcom/google/protobuf/MessageLite;)Z

    move-result v29

    if-eqz v29, :cond_5e

    .line 873
    add-int/lit8 v27, v27, 0x1

    goto :goto_5e

    .line 877
    .end local v9           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;>;"
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v19

    .line 879
    .local v19, t2:J
    const/16 v28, 0x0

    .line 880
    .local v28, wroteLabels:I
    const/16 v26, 0x0

    .line 881
    .local v26, wroteConversationLabels:I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 882
    .local v7, conversationIdsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<[Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :cond_af
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_113

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    .line 883
    .local v13, labelBuf:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    invoke-virtual {v13}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getLabel()Ljava/lang/String;

    move-result-object v12

    .line 884
    .local v12, label:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 885
    .local v6, conversationIds:[Ljava/lang/String;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 886
    .restart local v25       #values:Landroid/content/ContentValues;
    const-string v29, "label"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v29, "labels"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v8, v13}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->safelyAddMessageAsDataToValueAndInsert(Ljava/lang/String;Landroid/content/ContentValues;Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;Lcom/google/protobuf/MessageLite;)Z

    move-result v29

    if-eqz v29, :cond_af

    .line 888
    add-int/lit8 v28, v28, 0x1

    .line 890
    move-object v4, v6

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_e6
    if-ge v11, v14, :cond_af

    aget-object v5, v4, v11

    .line 891
    .local v5, conversationId:Ljava/lang/String;
    new-instance v25, Landroid/content/ContentValues;

    .end local v25           #values:Landroid/content/ContentValues;
    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 892
    .restart local v25       #values:Landroid/content/ContentValues;
    const-string v29, "label"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v29, "conversation_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v29, "conversation_labels"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-interface {v8, v0, v1, v2}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 895
    add-int/lit8 v26, v26, 0x1

    .line 890
    add-int/lit8 v11, v11, 0x1

    goto :goto_e6

    .line 900
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #conversationId:Ljava/lang/String;
    .end local v6           #conversationIds:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #label:Ljava/lang/String;
    .end local v13           #labelBuf:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .end local v14           #len$:I
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_113
    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->setTransactionSuccessful()V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v21

    .line 903
    .local v21, t3:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->log:Lcom/google/android/apps/common/log/GLog;

    move-object/from16 v29, v0

    const-string v30, "VoiceModel._saveToDatabase(): wrote %d conversations (%d ms), %d labels, %d conversationLabels (%d ms) in %d ms"

    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    sub-long v33, v19, v17

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x4

    sub-long v33, v21, v19

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x5

    sub-long v33, v21, v15

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V
    :try_end_16d
    .catchall {:try_start_16 .. :try_end_16d} :catchall_1a6

    .line 908
    if-eqz v8, :cond_175

    .line 910
    :try_start_16f
    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->endTransaction()V
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_1a1

    .line 912
    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->close()V

    .line 915
    :cond_175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v23

    .line 916
    .local v23, t4:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->log:Lcom/google/android/apps/common/log/GLog;

    move-object/from16 v29, v0

    const-string v30, "VoiceModel._saveToDatabase(): %d ms total"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    sub-long v33, v23, v15

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 918
    return-void

    .line 912
    .end local v23           #t4:J
    :catchall_1a1
    move-exception v29

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->close()V

    throw v29

    .line 908
    .end local v7           #conversationIdsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<[Ljava/lang/String;>;"
    .end local v17           #t1:J
    .end local v19           #t2:J
    .end local v21           #t3:J
    .end local v26           #wroteConversationLabels:I
    .end local v27           #wroteConversations:I
    .end local v28           #wroteLabels:I
    :catchall_1a6
    move-exception v29

    if-eqz v8, :cond_1af

    .line 910
    :try_start_1a9
    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->endTransaction()V
    :try_end_1ac
    .catchall {:try_start_1a9 .. :try_end_1ac} :catchall_1db

    .line 912
    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->close()V

    .line 915
    :cond_1af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v23

    .line 916
    .restart local v23       #t4:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->log:Lcom/google/android/apps/common/log/GLog;

    move-object/from16 v30, v0

    const-string v31, "VoiceModel._saveToDatabase(): %d ms total"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    sub-long v34, v23, v15

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 917
    throw v29

    .line 912
    .end local v23           #t4:J
    :catchall_1db
    move-exception v29

    invoke-interface {v8}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->close()V

    throw v29
.end method

.method private declared-synchronized checkLocalContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V
    .registers 4
    .parameter "contactInfo"

    .prologue
    .line 1258
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_25

    .line 1259
    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1260
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1261
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_22

    .line 1262
    :try_start_f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactCheckThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;

    if-nez v0, :cond_20

    .line 1263
    new-instance v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactCheckThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;

    .line 1264
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactCheckThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->startThread(Ljava/lang/Thread;)V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    .line 1266
    :cond_20
    monitor-exit p0

    return-void

    .line 1261
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 1258
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkLocalContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "contactInfo"
    .parameter "phoneNumber"
    .parameter "numberKey"

    .prologue
    .line 995
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 996
    invoke-virtual {p0, p3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->cursorForNumberKey(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 997
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_f

    .line 1065
    :cond_e
    :goto_e
    return-void

    .line 1001
    :cond_f
    :try_start_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_46

    .line 1002
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1003
    .local v1, id:J
    sget-object v7, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1005
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;

    sget v8, Lcom/google/android/apps/googlevoice/R$drawable;->default_contact_picture:I

    const/4 v9, 0x0

    invoke-static {v7, v6, v8, v9}, Landroid/provider/Contacts$People;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1007
    .local v5, photo:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v5}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 1008
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1009
    .local v3, localName:Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalName(Ljava/lang/String;)V

    .line 1010
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalId(Ljava/lang/Long;)V

    .line 1011
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalLookupKey(Ljava/lang/String;)V

    .line 1016
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_57

    .line 1027
    .end local v1           #id:J
    .end local v3           #localName:Ljava/lang/String;
    .end local v5           #photo:Landroid/graphics/Bitmap;
    .end local v6           #uri:Landroid/net/Uri;
    :goto_42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 1021
    :cond_46
    const/4 v7, 0x0

    :try_start_47
    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 1022
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalId(Ljava/lang/Long;)V

    .line 1023
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalName(Ljava/lang/String;)V

    .line 1024
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalLookupKey(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_57

    goto :goto_42

    .line 1027
    :catchall_57
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7

    .line 1030
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_5c
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contentResolver:Landroid/content/ContentResolver;

    invoke-interface {v7, v8, p2}, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;->cursorForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1031
    .restart local v0       #cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_e

    .line 1035
    :try_start_66
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 1036
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1037
    .restart local v1       #id:J
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1038
    .local v4, lookupKey:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1039
    .restart local v3       #localName:Ljava/lang/String;
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_98

    .line 1040
    const-string v7, "phoneLookup returned name=\'%s\', lookupKey=\'%s\', id=\'%d\'"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1043
    :cond_98
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contentResolver:Landroid/content/ContentResolver;

    invoke-interface {v7, v8, v1, v2, v4}, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;->photoForContact(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 1044
    invoke-virtual {p1, v3}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalName(Ljava/lang/String;)V

    .line 1045
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalId(Ljava/lang/Long;)V

    .line 1046
    invoke-virtual {p1, v4}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalLookupKey(Ljava/lang/String;)V

    .line 1051
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_b3
    .catchall {:try_start_66 .. :try_end_b3} :catchall_c9

    .line 1062
    .end local v1           #id:J
    .end local v3           #localName:Ljava/lang/String;
    .end local v4           #lookupKey:Ljava/lang/String;
    :goto_b3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e

    .line 1056
    :cond_b8
    const/4 v7, 0x0

    :try_start_b9
    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 1057
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalId(Ljava/lang/Long;)V

    .line 1058
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalLookupKey(Ljava/lang/String;)V

    .line 1059
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalName(Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_b9 .. :try_end_c8} :catchall_c9

    goto :goto_b3

    .line 1062
    :catchall_c9
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7
.end method

.method private declared-synchronized clearContactsCursorAndObserver()V
    .registers 3

    .prologue
    .line 1277
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsCursor:Landroid/database/Cursor;

    .line 1278
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_11

    .line 1279
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsObserver:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;

    if-eqz v1, :cond_e

    .line 1280
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsObserver:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1282
    :cond_e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1284
    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsCursor:Landroid/database/Cursor;

    .line 1285
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsObserver:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 1286
    monitor-exit p0

    return-void

    .line 1277
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized contactRebuildThreadFinished()V
    .registers 2

    .prologue
    .line 1250
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_a

    .line 1251
    const-string v0, "VoiceModel.contactRebuildThreadFinished()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1253
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactRebuildThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;

    .line 1254
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1255
    monitor-exit p0

    return-void

    .line 1250
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized ensureUpToDateContacts()V
    .registers 5

    .prologue
    .line 1186
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_23

    .line 1187
    const-string v0, "VoiceModel.ensureUpToDateContacts(): have = %b, want = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->haveUpToDateContacts:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->wantUpToDateContacts:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1190
    :cond_23
    iget v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->wantUpToDateContacts:I

    if-lez v0, :cond_3c

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->haveUpToDateContacts:Z

    if-nez v0, :cond_3c

    .line 1191
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactRebuildThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;

    if-nez v0, :cond_3e

    .line 1192
    new-instance v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactRebuildThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;

    .line 1193
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactRebuildThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->startThread(Ljava/lang/Thread;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_44

    .line 1200
    :cond_3c
    :goto_3c
    monitor-exit p0

    return-void

    .line 1195
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactRebuildThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->rebuildAgain()V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_44

    goto :goto_3c

    .line 1186
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private generateHistory()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 404
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_a

    .line 405
    const-string v7, "VoiceModel.generateHistory():"

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 407
    :cond_a
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 409
    .local v5, phoneCallVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/google/android/apps/googlevoice/core/PhoneCall;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    array-length v7, v7

    if-ge v1, v7, :cond_47

    .line 410
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 411
    .local v0, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1e
    array-length v7, v0

    if-ge v2, v7, :cond_44

    .line 412
    aget-object v7, v0, v2

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v6

    .line 413
    .local v6, phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_28
    array-length v7, v6

    if-ge v3, v7, :cond_41

    .line 414
    aget-object v7, v6, v3

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->getNumber()I

    move-result v7

    packed-switch v7, :pswitch_data_6e

    .line 413
    :goto_38
    :pswitch_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 422
    :pswitch_3b
    aget-object v7, v6, v3

    invoke-virtual {v5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_38

    .line 411
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 409
    .end local v3           #k:I
    .end local v6           #phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 428
    .end local v0           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v2           #j:I
    :cond_47
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v4, v7, [Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 429
    .local v4, phoneCallArray:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-virtual {v5, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 430
    sget-object v7, Lcom/google/android/apps/googlevoice/core/PhoneCall;->COMPARATOR:Lcom/google/android/apps/googlevoice/core/PhoneCall$Comparator;

    invoke-static {v4, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 434
    array-length v7, v4

    const/16 v8, 0x64

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v7, v7, [Lcom/google/android/apps/googlevoice/core/PhoneCall;

    iput-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->history:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 435
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->history:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->history:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    array-length v8, v8

    invoke-static {v4, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    sget-object v7, Lcom/google/android/apps/googlevoice/core/PhoneCall;->COMPARATOR:Lcom/google/android/apps/googlevoice/core/PhoneCall$Comparator;

    invoke-static {v4, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 437
    return-void

    .line 414
    :pswitch_data_6e
    .packed-switch 0x7
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_38
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method private getCallId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "filename"

    .prologue
    .line 1443
    const-string v0, ".mp3"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCallIdsForRecentVoicemails()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .local v1, callIdsForRecentVoicemails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "voicemail"

    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v6

    .line 1523
    .local v6, voicemailLabel:Lcom/google/android/apps/googlevoice/core/Label;
    if-eqz v6, :cond_32

    .line 1525
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v2

    .line 1526
    .local v2, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    const/4 v0, 0x0

    .line 1527
    .local v0, cacheIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    array-length v7, v2

    if-ge v3, v7, :cond_32

    const/16 v7, 0x8

    if-ge v0, v7, :cond_32

    .line 1529
    aget-object v5, v2, v3

    .line 1530
    .local v5, voicemailConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-direct {p0, v5}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->isInboxConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1531
    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLastPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v4

    .line 1532
    .local v4, messageId:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    add-int/lit8 v0, v0, 0x1

    .line 1528
    .end local v4           #messageId:Ljava/lang/String;
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1537
    .end local v0           #cacheIndex:I
    .end local v2           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v3           #i:I
    .end local v5           #voicemailConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_32
    return-object v1
.end method

.method private isInboxConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)Z
    .registers 7
    .parameter "conversation"

    .prologue
    .line 1541
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLabels()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_17

    aget-object v2, v0, v1

    .line 1542
    .local v2, label:Ljava/lang/String;
    const-string v4, "inbox"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1543
    const/4 v4, 0x1

    .line 1546
    .end local v2           #label:Ljava/lang/String;
    :goto_13
    return v4

    .line 1541
    .restart local v2       #label:Ljava/lang/String;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1546
    .end local v2           #label:Ljava/lang/String;
    :cond_17
    const/4 v4, 0x0

    goto :goto_13
.end method

.method private isPrimaryCache(Ljava/io/File;)Z
    .registers 6
    .parameter "file"

    .prologue
    .line 1447
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private declared-synchronized noteContactsChanged()V
    .registers 2

    .prologue
    .line 1176
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->haveUpToDateContacts:Z

    .line 1177
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->ensureUpToDateContacts()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1178
    monitor-exit p0

    return-void

    .line 1176
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized noteContactsRebuilt()V
    .registers 2

    .prologue
    .line 1181
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->haveUpToDateContacts:Z

    .line 1182
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->notifyListenersContactsUpdated()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1183
    monitor-exit p0

    return-void

    .line 1181
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static recordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "callId"

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeConversationFromLabels(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 7
    .parameter "oldConversation"

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLabels()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .line 260
    .local v2, labelName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/apps/googlevoice/core/Label;->removeConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 262
    .end local v2           #labelName:Ljava/lang/String;
    :cond_14
    return-void
.end method

.method private removeLabelFromConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V
    .registers 4
    .parameter "conversation"
    .parameter "label"

    .prologue
    .line 273
    invoke-virtual {p0, p2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/core/Label;->removeConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 274
    invoke-virtual {p1, p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->removeLabel(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->notifyListenersConversationUpdated(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 276
    return-void
.end method

.method private safelyAddMessageAsDataToValueAndInsert(Ljava/lang/String;Landroid/content/ContentValues;Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;Lcom/google/protobuf/MessageLite;)Z
    .registers 9
    .parameter "tableName"
    .parameter "values"
    .parameter "database"
    .parameter "message"

    .prologue
    .line 924
    :try_start_0
    invoke-interface {p4}, Lcom/google/protobuf/MessageLite;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_f

    move-result-object v0

    .line 931
    .local v0, byteArray:[B
    const-string v2, "data"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 932
    const/4 v2, 0x0

    invoke-interface {p3, p1, v2, p2}, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 933
    const/4 v2, 0x1

    .end local v0           #byteArray:[B
    :goto_e
    return v2

    .line 925
    :catch_f
    move-exception v1

    .line 928
    .local v1, e:Ljava/lang/OutOfMemoryError;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "Out of memory, failed to store message"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 929
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private declared-synchronized saveConversationsAndLabelsToDatabase()V
    .registers 3

    .prologue
    .line 667
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->saveConversationsAndLabelsToDatabaseInternal()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_4} :catch_6

    .line 672
    monitor-exit p0

    return-void

    .line 668
    :catch_6
    move-exception v0

    .line 669
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_7
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->memoryUtils:Lcom/google/android/apps/googlevoice/util/MemoryUtils;

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/util/MemoryUtils;->onOutOfMemory(Ljava/lang/Throwable;)V

    .line 670
    throw v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_d

    .line 667
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized saveConversationsAndLabelsToDatabaseInternal()V
    .registers 19

    .prologue
    .line 679
    monitor-enter p0

    :try_start_1
    sget-boolean v13, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v13, :cond_a

    .line 680
    const-string v13, "VoiceModel.saveConversationsAndLabelToDatabase():"

    invoke-static {v13}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 683
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v13}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v11

    .line 685
    .local v11, started:J
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 690
    .local v2, conversationBufsById:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 691
    .local v1, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->toApiConversation()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3b

    goto :goto_23

    .line 679
    .end local v1           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v2           #conversationBufsById:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #started:J
    :catchall_3b
    move-exception v13

    monitor-exit p0

    throw v13

    .line 694
    .restart local v2       #conversationBufsById:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v11       #started:J
    :cond_3e
    :try_start_3e
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 695
    .local v10, labelBufs:Ljava/util/List;,"Ljava/util/List<Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 696
    .local v4, conversationIdsByLabel:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_49
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    array-length v13, v13

    if-ge v6, v13, :cond_7f

    .line 697
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    aget-object v9, v13, v6

    .line 698
    .local v9, label:Lcom/google/android/apps/googlevoice/core/Label;
    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/Label;->isDefaultLabel()Z

    move-result v13

    if-nez v13, :cond_7c

    .line 699
    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/Label;->toApiConversationLabel()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v5

    .line 701
    .local v5, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    array-length v13, v5

    new-array v3, v13, [Ljava/lang/String;

    .line 702
    .local v3, conversationIds:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, j:I
    :goto_6b
    array-length v13, v5

    if-ge v8, v13, :cond_79

    .line 703
    aget-object v13, v5, v8

    invoke-virtual {v13}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v8

    .line 702
    add-int/lit8 v8, v8, 0x1

    goto :goto_6b

    .line 705
    :cond_79
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    .end local v3           #conversationIds:[Ljava/lang/String;
    .end local v5           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v8           #j:I
    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 709
    .end local v9           #label:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_7f
    sget-boolean v13, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v13, :cond_a2

    .line 710
    const-string v13, "saveConversationsAndLabelsToDatabase(): preparations took %d ms"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v11

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 714
    :cond_a2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v13

    new-instance v14, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2, v10, v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$3;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Ljava/util/Hashtable;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v13, v14}, Lcom/google/android/apps/googlevoice/BackgroundThread;->runInBackground(Ljava/lang/Runnable;)V
    :try_end_b0
    .catchall {:try_start_3e .. :try_end_b0} :catchall_3b

    .line 727
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized setContactsCursorAndObserver(Landroid/database/Cursor;Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;)V
    .registers 5
    .parameter "cursor"
    .parameter "observer"

    .prologue
    .line 1269
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsCursor:Landroid/database/Cursor;

    .line 1270
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsObserver:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;

    .line 1271
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsObserver:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;

    if-eqz v0, :cond_14

    .line 1272
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactsObserver:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactsObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 1274
    :cond_14
    monitor-exit p0

    return-void

    .line 1269
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateVoicemailPrimaryCache()V
    .registers 3

    .prologue
    .line 1454
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$6;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1487
    return-void
.end method

.method private updateVoicemailSecondaryCache()V
    .registers 3

    .prologue
    .line 1493
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$7;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1518
    return-void
.end method

.method private static writeConversationToDatabase(Landroid/content/Context;Ljava/lang/Object;Lcom/google/android/apps/common/time/ClockUtils;Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;Ljava/util/List;)V
    .registers 18
    .parameter "context"
    .parameter "databaseLock"
    .parameter "clockUtils"
    .parameter "conversationId"
    .parameter "conversationBuf"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Lcom/google/android/apps/common/time/ClockUtils;",
            "Ljava/lang/String;",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    .local p5, labelBufs:Ljava/util/List;,"Ljava/util/List<Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;>;"
    monitor-enter p1

    .line 779
    :try_start_1
    sget-boolean v8, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v8, :cond_a

    .line 780
    const-string v8, "VoiceModel.writeConversationToDatabase():"

    invoke-static {v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 782
    :cond_a
    new-instance v3, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;

    invoke-direct {v3, p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_96

    .line 783
    .local v3, helper:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;
    const/4 v1, 0x0

    .line 785
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_10
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 786
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 787
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 789
    .local v7, values:Landroid/content/ContentValues;
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p3, v0, v8

    .line 790
    .local v0, conversationWhereArgs:[Ljava/lang/String;
    const-string v8, "data"

    invoke-virtual/range {p4 .. p4}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 791
    const-string v8, "conversations"

    const-string v9, "conversation_id= ?"

    invoke-virtual {v1, v8, v7, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 795
    const-string v8, "conversation_labels"

    const-string v9, "conversation_id= ?"

    invoke-virtual {v1, v8, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 798
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    .line 799
    .local v5, labelBuf:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 800
    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 802
    .local v6, labelName:Ljava/lang/String;
    const-string v8, "data"

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 803
    const-string v8, "labels"

    const-string v9, "label= ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v1, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 805
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 806
    const-string v8, "label"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v8, "conversation_id"

    invoke-virtual {v7, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v8, "conversation_labels"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_79
    .catchall {:try_start_10 .. :try_end_79} :catchall_99
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_79} :catch_7a

    goto :goto_3d

    .line 811
    .end local v0           #conversationWhereArgs:[Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #labelBuf:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .end local v6           #labelName:Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_7a
    move-exception v2

    .line 812
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_7b
    const-string v8, "VoiceModel.saveToDatabase(): failed to save conversation to database"

    invoke-static {v8, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_99

    .line 814
    if-eqz v1, :cond_88

    .line 815
    :try_start_82
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 816
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 819
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :cond_88
    :goto_88
    monitor-exit p1
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_96

    .line 820
    return-void

    .line 810
    .restart local v0       #conversationWhereArgs:[Ljava/lang/String;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_8a
    :try_start_8a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_99
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8a .. :try_end_8d} :catch_7a

    .line 814
    if-eqz v1, :cond_88

    .line 815
    :try_start_8f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 816
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_88

    .line 819
    .end local v0           #conversationWhereArgs:[Ljava/lang/String;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #helper:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #values:Landroid/content/ContentValues;
    :catchall_96
    move-exception v8

    monitor-exit p1
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_96

    throw v8

    .line 814
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #helper:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;
    :catchall_99
    move-exception v8

    if-eqz v1, :cond_a2

    .line 815
    :try_start_9c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 816
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a2
    throw v8
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_96
.end method


# virtual methods
.method public addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V
    .registers 6
    .parameter "conversation"
    .parameter "flag"

    .prologue
    .line 200
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_1a

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceModel.addAction(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 203
    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

    invoke-interface {v1, p1, p2}, Lcom/google/android/apps/googlevoice/model/ActionModel;->addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)Lcom/google/android/apps/googlevoice/core/Action;

    move-result-object v0

    .line 204
    .local v0, action:Lcom/google/android/apps/googlevoice/core/Action;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->notifyListenersActionUpdated(Lcom/google/android/apps/googlevoice/core/Action;)V

    .line 205
    return-void
.end method

.method public addConversations(Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 7
    .parameter "label"
    .parameter "conversations"

    .prologue
    .line 220
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 221
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 222
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, p2

    if-ge v1, v2, :cond_1c

    .line 223
    aget-object v0, p2, v1

    .line 224
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/apps/googlevoice/core/Label;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 225
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 227
    .end local v0           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_1c
    array-length v2, p2

    if-lez v2, :cond_22

    .line 228
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->notifyListenersModelUpdated()V

    .line 230
    :cond_22
    return-void
.end method

.method public addConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 16
    .parameter "conversations"

    .prologue
    .line 235
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 236
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    array-length v8, v0

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v4           #i$:I
    .end local v8           #len$:I
    .local v5, i$:I
    :goto_7
    if-ge v5, v8, :cond_53

    aget-object v2, v0, v5

    .line 237
    .local v2, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, conversationId:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    invoke-virtual {v10, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 241
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    invoke-virtual {v10, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-direct {p0, v10}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->removeConversationFromLabels(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 243
    :cond_22
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    invoke-virtual {v10, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLabels()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_2d
    if-ge v4, v9, :cond_4f

    aget-object v7, v1, v4

    .line 245
    .local v7, labelName:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v6

    .line 246
    .local v6, label:Lcom/google/android/apps/googlevoice/core/Label;
    const/4 v10, 0x1

    invoke-virtual {v6, v2, v10}, Lcom/google/android/apps/googlevoice/core/Label;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 248
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationTime()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/Label;->getTimestamp()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_4c

    .line 249
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationTime()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/google/android/apps/googlevoice/core/Label;->setTimestamp(J)V

    .line 244
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 236
    .end local v6           #label:Lcom/google/android/apps/googlevoice/core/Label;
    .end local v7           #labelName:Ljava/lang/String;
    :cond_4f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_7

    .line 253
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v3           #conversationId:Ljava/lang/String;
    .end local v9           #len$:I
    :cond_53
    array-length v10, p1

    if-lez v10, :cond_59

    .line 254
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->notifyListenersModelUpdated()V

    .line 256
    :cond_59
    return-void
.end method

.method public cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;
    .registers 5
    .parameter "contactInfo"

    .prologue
    .line 943
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, numberKey:Ljava/lang/String;
    :goto_e
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_22

    .line 951
    :cond_16
    iget-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->unknownContactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 967
    .end local p1
    :goto_18
    return-object p1

    .line 943
    .end local v1           #numberKey:Ljava/lang/String;
    .restart local p1
    :cond_19
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 953
    .restart local v1       #numberKey:Ljava/lang/String;
    :cond_22
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosByNumberKey:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 954
    .local v0, cachedInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    if-nez v0, :cond_35

    .line 959
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosByNumberKey:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->checkLocalContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    goto :goto_18

    :cond_35
    move-object p1, v0

    .line 967
    goto :goto_18
.end method

.method public declared-synchronized clear()V
    .registers 7

    .prologue
    .line 1095
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_2
    new-array v4, v4, [Lcom/google/android/apps/googlevoice/core/PhoneCall;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->history:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 1096
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/android/apps/googlevoice/core/Label;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 1097
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    .line 1098
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosByNumberKey:Ljava/util/Map;

    .line 1099
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->mp3Filter:Ljava/io/FilenameFilter;

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_27
    if-ge v2, v3, :cond_31

    aget-object v1, v0, v2

    .line 1100
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1099
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1102
    .end local v1           #file:Ljava/io/File;
    :cond_31
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/model/ActionModel;->clear()V

    .line 1103
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->saveToDatabase()V
    :try_end_39
    .catchall {:try_start_2 .. :try_end_39} :catchall_3b

    .line 1104
    monitor-exit p0

    return-void

    .line 1095
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_3b
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized clearSearchLabel()V
    .registers 2

    .prologue
    .line 1433
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->searchLabel:Lcom/google/android/apps/googlevoice/core/Label;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1434
    monitor-exit p0

    return-void

    .line 1433
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cursorForNumberKey(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "numberKey"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 972
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_24

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursorForNumberKey(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 975
    :cond_24
    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 976
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 977
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "person"

    aput-object v0, v2, v6

    const-string v0, "display_name"

    aput-object v0, v2, v7

    .line 981
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const-string v3, "data =?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 990
    :goto_42
    return-object v0

    .line 988
    .end local v2           #projection:[Ljava/lang/String;
    :cond_43
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "person"

    aput-object v0, v2, v6

    const-string v0, "name"

    aput-object v0, v2, v7

    .line 989
    .restart local v2       #projection:[Ljava/lang/String;
    const-string v3, "number_key = ?"

    .line 990
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_42
.end method

.method public getAction(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Action;
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/ActionModel;->getAction(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Action;

    move-result-object v0

    return-object v0
.end method

.method public getActions()[Lcom/google/android/apps/googlevoice/core/Action;
    .registers 2

    .prologue
    .line 281
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 282
    const-string v0, "VoiceModel.getActions():"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 284
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/ActionModel;->getActions()[Lcom/google/android/apps/googlevoice/core/Action;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;
    .registers 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    if-nez v0, :cond_16

    .line 182
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_e

    .line 183
    const-string v0, "AndroidVoiceModel: creating & starting background thread"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 185
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;->createBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    .line 187
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 181
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 3
    .parameter "id"

    .prologue
    .line 295
    if-eqz p1, :cond_b

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 298
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public declared-synchronized getDefaultLabel()Lcom/google/android/apps/googlevoice/core/Label;
    .registers 2

    .prologue
    .line 441
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_a

    .line 442
    const-string v0, "VoiceModel.getDefaultLabel():"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 444
    :cond_a
    const-string v0, "inbox"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 441
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHistory()[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 2

    .prologue
    .line 449
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->history:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;
    .registers 8
    .parameter "label"

    .prologue
    .line 455
    monitor-enter p0

    :try_start_1
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_14

    .line 456
    const-string v3, "VoiceModel.getLabel(\'%s\'):"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 458
    :cond_14
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    array-length v3, v3

    if-ge v1, v3, :cond_31

    .line 459
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 460
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    aget-object v0, v3, v1
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_72

    .line 480
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-object v0

    .line 458
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 464
    :cond_31
    :try_start_31
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_44

    .line 465
    const-string v3, "checking for default label with label \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 467
    :cond_44
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/core/Label;->getDefaultLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    .line 468
    .local v0, defaultLabel:Lcom/google/android/apps/googlevoice/core/Label;
    if-eqz v0, :cond_75

    .line 470
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 471
    .local v2, newLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/core/Label;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/core/Label;->inPriorityOrder(Ljava/util/List;)[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 473
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_2c

    .line 474
    const-string v3, "found default label with label \'%s\', added to list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_31 .. :try_end_71} :catchall_72

    goto :goto_2c

    .line 455
    .end local v0           #defaultLabel:Lcom/google/android/apps/googlevoice/core/Label;
    .end local v1           #i:I
    .end local v2           #newLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/core/Label;>;"
    :catchall_72
    move-exception v3

    monitor-exit p0

    throw v3

    .line 479
    .restart local v0       #defaultLabel:Lcom/google/android/apps/googlevoice/core/Label;
    .restart local v1       #i:I
    :cond_75
    :try_start_75
    const-string v3, "Trying to find label \'%s\', which does not exist!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_75 .. :try_end_84} :catchall_72

    .line 480
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public getLabels()[Lcom/google/android/apps/googlevoice/core/Label;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    return-object v0
.end method

.method public getRecordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "callId"

    .prologue
    .line 535
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->recordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->recordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method getSQLiteDatabaseProxy()Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;
    .registers 5

    .prologue
    .line 835
    new-instance v0, Lcom/google/android/apps/googlevoice/util/Delegator;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/util/Delegator;-><init>()V

    const-class v1, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;

    new-instance v2, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contextProxy:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/googlevoice/util/Delegator;->adapt(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/proxy/SQLiteDatabaseProxy;

    return-object v0
.end method

.method public declared-synchronized getSearchLabel()Lcom/google/android/apps/googlevoice/core/Label;
    .registers 3

    .prologue
    .line 1423
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->searchLabel:Lcom/google/android/apps/googlevoice/core/Label;

    if-nez v1, :cond_11

    .line 1424
    new-instance v0, Lcom/google/android/apps/googlevoice/core/Label;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/core/Label;-><init>()V

    .line 1425
    .local v0, label:Lcom/google/android/apps/googlevoice/core/Label;
    const-string v1, "search"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/Label;->setLabel(Ljava/lang/String;)V

    .line 1426
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->searchLabel:Lcom/google/android/apps/googlevoice/core/Label;

    .line 1428
    .end local v0           #label:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->searchLabel:Lcom/google/android/apps/googlevoice/core/Label;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v1

    .line 1423
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ignoreContactsUpToDate()V
    .registers 5

    .prologue
    .line 1209
    monitor-enter p0

    :try_start_1
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_a

    .line 1210
    const-string v3, "VoiceModel.ignoreContactsUpToDate():"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_48

    .line 1213
    :cond_a
    const/4 v3, 0x0

    :try_start_b
    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->didStartObservingContacts:Z

    .line 1214
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->clearContactsCursorAndObserver()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_48
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_10} :catch_55

    .line 1218
    :goto_10
    const/4 v3, 0x1

    :try_start_11
    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->haveUpToDateContacts:Z

    .line 1219
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->wantUpToDateContacts:I

    .line 1220
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactRebuildThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;

    .line 1221
    .local v2, rebuildThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;
    if-eqz v2, :cond_4b

    .line 1222
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_23

    .line 1223
    const-string v3, "waiting for contactRebuildThread to finish"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1225
    :cond_23
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->clearRebuildAgain()V

    .line 1226
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;->interrupt()V
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_48

    .line 1228
    :try_start_29
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_48
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_41

    .line 1239
    :cond_2c
    :goto_2c
    :try_start_2c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactCheckThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;

    .line 1240
    .local v0, checkThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;
    if-eqz v0, :cond_3f

    .line 1241
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_39

    .line 1242
    const-string v3, "interrupting contactCheckThread"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1244
    :cond_39
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->interrupt()V

    .line 1245
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactCheckThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_48

    .line 1247
    :cond_3f
    monitor-exit p0

    return-void

    .line 1229
    .end local v0           #checkThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;
    :catch_41
    move-exception v1

    .line 1231
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_42
    const-string v3, "Interrupted while waiting for contactRebuildThread to finish"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_48

    goto :goto_2c

    .line 1209
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #rebuildThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;
    :catchall_48
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1234
    .restart local v2       #rebuildThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;
    :cond_4b
    :try_start_4b
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_2c

    .line 1235
    const-string v3, "no current contactRebuildThread, done"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_48

    goto :goto_2c

    .line 1215
    .end local v2           #rebuildThread:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactRebuildThread;
    :catch_55
    move-exception v3

    goto :goto_10
.end method

.method public loadFromDatabase()V
    .registers 29

    .prologue
    .line 566
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_9

    .line 567
    const-string v3, "VoiceModel.loadFromDatabase"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 570
    :cond_9
    :try_start_9
    new-instance v21, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 571
    .local v21, helper:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_17} :catch_c9

    move-result-object v2

    .line 573
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_18
    const-string v3, "labels"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 575
    .local v18, cursor:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [Lcom/google/android/apps/googlevoice/core/Label;

    move-object/from16 v27, v0
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_c4

    .line 577
    .local v27, tempLabels:[Lcom/google/android/apps/googlevoice/core/Label;
    const/16 v22, 0x0

    .local v22, i:I
    move/from16 v23, v22

    .line 578
    .end local v22           #i:I
    .local v23, i:I
    :goto_37
    :try_start_37
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 579
    new-instance v13, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 580
    .local v13, bais:Ljava/io/ByteArrayInputStream;
    invoke-static {v13}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_e8
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4c} :catch_b6

    move-result-object v11

    .line 581
    .local v11, apiLabel:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    add-int/lit8 v22, v23, 0x1

    .end local v23           #i:I
    .restart local v22       #i:I
    :try_start_4f
    new-instance v3, Lcom/google/android/apps/googlevoice/core/Label;

    invoke-direct {v3, v11}, Lcom/google/android/apps/googlevoice/core/Label;-><init>(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)V

    aput-object v3, v27, v23
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_e8
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_56} :catch_1b0

    move/from16 v23, v22

    .line 582
    .end local v22           #i:I
    .restart local v23       #i:I
    goto :goto_37

    .line 586
    .end local v11           #apiLabel:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .end local v13           #bais:Ljava/io/ByteArrayInputStream;
    :cond_59
    :try_start_59
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 589
    .end local v23           #i:I
    :goto_5c
    const-string v3, "conversations"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_c4

    move-result-object v18

    .line 592
    :goto_6f
    :try_start_6f
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_161

    .line 593
    new-instance v13, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 594
    .restart local v13       #bais:Ljava/io/ByteArrayInputStream;
    invoke-static {v13}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v10

    .line 595
    .local v10, apiConversation:Lcom/google/grandcentral/api2/Api2$ApiConversation;
    new-instance v15, Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-direct {v15, v10}, Lcom/google/android/apps/googlevoice/core/Conversation;-><init>(Lcom/google/grandcentral/api2/Api2$ApiConversation;)V

    .line 596
    .local v15, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    invoke-virtual {v15}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-virtual {v15}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v12

    .local v12, arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    array-length v0, v12

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_9e
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_ed

    aget-object v14, v12, v24

    .line 598
    .local v14, call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-virtual {v14}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V
    :try_end_b3
    .catchall {:try_start_6f .. :try_end_b3} :catchall_165
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_b3} :catch_f2

    .line 597
    add-int/lit8 v24, v24, 0x1

    goto :goto_9e

    .line 583
    .end local v10           #apiConversation:Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .end local v12           #arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v13           #bais:Ljava/io/ByteArrayInputStream;
    .end local v14           #call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v15           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v24           #i$:I
    .end local v26           #len$:I
    .restart local v23       #i:I
    :catch_b6
    move-exception v19

    move/from16 v22, v23

    .line 584
    .end local v23           #i:I
    .local v19, e:Ljava/io/IOException;
    .restart local v22       #i:I
    :goto_b9
    :try_start_b9
    const-string v3, "Failed to load labels from database"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c0
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_e8

    .line 586
    :try_start_c0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c4

    goto :goto_5c

    .line 636
    .end local v18           #cursor:Landroid/database/Cursor;
    .end local v19           #e:Ljava/io/IOException;
    .end local v22           #i:I
    .end local v27           #tempLabels:[Lcom/google/android/apps/googlevoice/core/Label;
    :catchall_c4
    move-exception v3

    :try_start_c5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
    :try_end_c9
    .catch Ljava/lang/RuntimeException; {:try_start_c5 .. :try_end_c9} :catch_c9

    .line 638
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v21           #helper:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;
    :catch_c9
    move-exception v20

    .line 639
    .local v20, ex:Ljava/lang/RuntimeException;
    const-string v3, "Exception loading existing database, removing"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/android/apps/googlevoice/core/Label;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->updateModel(Ljava/util/Hashtable;[Lcom/google/android/apps/googlevoice/core/Label;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;

    const-string v4, "model.db"

    invoke-virtual {v3, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 645
    .end local v20           #ex:Ljava/lang/RuntimeException;
    :goto_e7
    return-void

    .line 586
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v18       #cursor:Landroid/database/Cursor;
    .restart local v21       #helper:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;
    .restart local v27       #tempLabels:[Lcom/google/android/apps/googlevoice/core/Label;
    :catchall_e8
    move-exception v3

    :try_start_e9
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_c4

    .line 600
    .restart local v10       #apiConversation:Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .restart local v12       #arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .restart local v13       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v15       #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .restart local v24       #i$:I
    .restart local v26       #len$:I
    :cond_ed
    :try_start_ed
    invoke-virtual {v15}, Lcom/google/android/apps/googlevoice/core/Conversation;->refreshContactInfo()V
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_165
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f2

    goto/16 :goto_6f

    .line 602
    .end local v10           #apiConversation:Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .end local v12           #arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v13           #bais:Ljava/io/ByteArrayInputStream;
    .end local v15           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v24           #i$:I
    .end local v26           #len$:I
    :catch_f2
    move-exception v19

    .line 603
    .restart local v19       #e:Ljava/io/IOException;
    :try_start_f3
    const-string v3, "Failed to load conversations from database"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_fa
    .catchall {:try_start_f3 .. :try_end_fa} :catchall_165

    .line 605
    :try_start_fa
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 608
    .end local v19           #e:Ljava/io/IOException;
    :goto_fd
    move-object/from16 v12, v27

    .local v12, arr$:[Lcom/google/android/apps/googlevoice/core/Label;
    array-length v0, v12

    move/from16 v26, v0

    .restart local v26       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_104
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_183

    aget-object v25, v12, v24

    .line 609
    .local v25, label:Lcom/google/android/apps/googlevoice/core/Label;
    const-string v3, "conversation_labels"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "conversation_id"

    aput-object v6, v4, v5

    const-string v5, "%s = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "label"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_134
    .catchall {:try_start_fa .. :try_end_134} :catchall_c4

    move-result-object v18

    .line 615
    :try_start_135
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [Lcom/google/android/apps/googlevoice/core/Conversation;

    move-object/from16 v17, v0

    .line 616
    .local v17, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    const/16 v22, 0x0

    .restart local v22       #i:I
    move/from16 v23, v22

    .line 617
    .end local v22           #i:I
    .restart local v23       #i:I
    :goto_141
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 618
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 619
    .local v16, conversationId:Ljava/lang/String;
    add-int/lit8 v22, v23, 0x1

    .end local v23           #i:I
    .restart local v22       #i:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/googlevoice/core/Conversation;

    aput-object v3, v17, v23
    :try_end_15e
    .catchall {:try_start_135 .. :try_end_15e} :catchall_17e

    move/from16 v23, v22

    .line 620
    .end local v22           #i:I
    .restart local v23       #i:I
    goto :goto_141

    .line 605
    .end local v12           #arr$:[Lcom/google/android/apps/googlevoice/core/Label;
    .end local v16           #conversationId:Ljava/lang/String;
    .end local v17           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v23           #i:I
    .end local v24           #i$:I
    .end local v25           #label:Lcom/google/android/apps/googlevoice/core/Label;
    .end local v26           #len$:I
    :cond_161
    :try_start_161
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_fd

    :catchall_165
    move-exception v3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_16a
    .catchall {:try_start_161 .. :try_end_16a} :catchall_c4

    .line 621
    .restart local v12       #arr$:[Lcom/google/android/apps/googlevoice/core/Label;
    .restart local v17       #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .restart local v23       #i:I
    .restart local v24       #i$:I
    .restart local v25       #label:Lcom/google/android/apps/googlevoice/core/Label;
    .restart local v26       #len$:I
    :cond_16a
    :try_start_16a
    sget-object v3, Lcom/google/android/apps/googlevoice/core/Conversation;->COMPARATOR:Lcom/google/android/apps/googlevoice/core/Conversation$Comparator;

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 622
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/Label;->setConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V
    :try_end_178
    .catchall {:try_start_16a .. :try_end_178} :catchall_17e

    .line 624
    :try_start_178
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 608
    add-int/lit8 v24, v24, 0x1

    goto :goto_104

    .line 624
    .end local v17           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v23           #i:I
    :catchall_17e
    move-exception v3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3

    .line 628
    .end local v25           #label:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-gtz v3, :cond_192

    move-object/from16 v0, v27

    array-length v3, v0

    if-lez v3, :cond_19d

    .line 629
    :cond_192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->updateModel(Ljava/util/Hashtable;[Lcom/google/android/apps/googlevoice/core/Label;)V

    .line 633
    :cond_19d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    invoke-interface {v3, v4}, Lcom/google/android/apps/googlevoice/model/ActionModel;->loadFromDatabase(Ljava/util/Hashtable;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->notifyListenersActionsUpdated()V
    :try_end_1ab
    .catchall {:try_start_178 .. :try_end_1ab} :catchall_c4

    .line 636
    :try_start_1ab
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1ae
    .catch Ljava/lang/RuntimeException; {:try_start_1ab .. :try_end_1ae} :catch_c9

    goto/16 :goto_e7

    .line 583
    .end local v12           #arr$:[Lcom/google/android/apps/googlevoice/core/Label;
    .end local v24           #i$:I
    .end local v26           #len$:I
    .restart local v11       #apiLabel:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .restart local v13       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v22       #i:I
    :catch_1b0
    move-exception v19

    goto/16 :goto_b9
.end method

.method public declared-synchronized markConversationAsArchived(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 5
    .parameter "conversation"
    .parameter "archived"

    .prologue
    .line 324
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_21

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceModel.markConversationAsArchived("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 327
    :cond_21
    if-eqz p2, :cond_31

    .line 328
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 329
    const-string v0, "inbox"

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->removeLabelFromConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V

    .line 334
    :goto_2c
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->saveConversationToDatabase(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_3c

    .line 335
    monitor-exit p0

    return-void

    .line 331
    :cond_31
    const/16 v0, 0x8

    :try_start_33
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 332
    const-string v0, "inbox"

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addLabelToConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3c

    goto :goto_2c

    .line 324
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markConversationAsDeleted(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 5
    .parameter "conversation"
    .parameter "deleted"

    .prologue
    .line 305
    monitor-enter p0

    :try_start_1
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_a

    .line 306
    const-string v1, "VoiceModel.markConversationAsDeleted()"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 308
    :cond_a
    if-eqz p2, :cond_2a

    .line 309
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 310
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/apps/googlevoice/core/Label;->removeConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 312
    :cond_1c
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 313
    const-string v1, "trash"

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addLabelToConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V

    .line 318
    .end local v0           #i:I
    :goto_25
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->saveConversationToDatabase(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_34

    .line 319
    monitor-exit p0

    return-void

    .line 315
    :cond_2a
    const/4 v1, 0x2

    :try_start_2b
    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 316
    const-string v1, "trash"

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->removeLabelFromConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_34

    goto :goto_25

    .line 305
    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized markConversationAsRead(Lcom/google/android/apps/googlevoice/core/Conversation;Z)Z
    .registers 9
    .parameter "conversation"
    .parameter "read"

    .prologue
    .line 340
    monitor-enter p0

    :try_start_1
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_21

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoiceModel.markConversationAsRead("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 344
    :cond_21
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_70

    move-result v4

    if-ne v4, p2, :cond_2a

    .line 345
    const/4 v4, 0x0

    .line 367
    :goto_28
    monitor-exit p0

    return v4

    .line 348
    :cond_2a
    :try_start_2a
    invoke-virtual {p1, p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->setIsRead(Z)V

    .line 349
    if-eqz p2, :cond_4f

    const/16 v4, 0x10

    :goto_31
    invoke-virtual {p0, p1, v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 352
    if-eqz p2, :cond_52

    .line 353
    const-string v4, "unread"

    invoke-direct {p0, p1, v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->removeLabelFromConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLabels()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_41
    if-ge v1, v3, :cond_6b

    aget-object v2, v0, v1

    .line 355
    .local v2, label:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/Label;->decrementUnreadCount()V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 349
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #len$:I
    :cond_4f
    const/16 v4, 0x20

    goto :goto_31

    .line 358
    :cond_52
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLabels()[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_58
    if-ge v1, v3, :cond_66

    aget-object v2, v0, v1

    .line 359
    .restart local v2       #label:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/Label;->incrementUnreadCount()V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 361
    .end local v2           #label:Ljava/lang/String;
    :cond_66
    const-string v4, "unread"

    invoke-direct {p0, p1, v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addLabelToConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V

    .line 365
    :cond_6b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->saveConversationToDatabase(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    :try_end_6e
    .catchall {:try_start_2a .. :try_end_6e} :catchall_70

    .line 367
    const/4 v4, 0x1

    goto :goto_28

    .line 340
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :catchall_70
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized markConversationAsSpam(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 6
    .parameter "conversation"
    .parameter "spam"

    .prologue
    const/4 v2, 0x1

    .line 389
    monitor-enter p0

    :try_start_2
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_22

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceModel.markConversationAsSpam("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 392
    :cond_22
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isSpam()Z

    move-result v0

    if-nez v0, :cond_39

    if-ne p2, v2, :cond_39

    .line 393
    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 394
    const-string v0, "spam"

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addLabelToConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V

    .line 399
    :cond_34
    :goto_34
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->saveConversationToDatabase(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_4c

    .line 400
    monitor-exit p0

    return-void

    .line 395
    :cond_39
    :try_start_39
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isSpam()Z

    move-result v0

    if-ne v0, v2, :cond_34

    if-nez p2, :cond_34

    .line 396
    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 397
    const-string v0, "spam"

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->removeLabelFromConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_4c

    goto :goto_34

    .line 389
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markConversationAsStarred(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 6
    .parameter "conversation"
    .parameter "starred"

    .prologue
    const/4 v2, 0x1

    .line 373
    monitor-enter p0

    :try_start_2
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_22

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceModel.markConversationAsStarred("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 376
    :cond_22
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isStarred()Z

    move-result v0

    if-nez v0, :cond_39

    if-ne p2, v2, :cond_39

    .line 377
    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 378
    const-string v0, "starred"

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addLabelToConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V

    .line 383
    :cond_34
    :goto_34
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->saveConversationToDatabase(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_4c

    .line 384
    monitor-exit p0

    return-void

    .line 379
    :cond_39
    :try_start_39
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isStarred()Z

    move-result v0

    if-ne v0, v2, :cond_34

    if-nez p2, :cond_34

    .line 380
    const/16 v0, 0x200

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 381
    const-string v0, "starred"

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->removeLabelFromConversation(Lcom/google/android/apps/googlevoice/core/Conversation;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_4c

    goto :goto_34

    .line 373
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized neverMindUpToDateContacts()V
    .registers 2

    .prologue
    .line 1169
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->wantUpToDateContacts:I

    if-lez v0, :cond_b

    .line 1170
    iget v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->wantUpToDateContacts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->wantUpToDateContacts:I

    .line 1172
    :cond_b
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->ensureUpToDateContacts()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1173
    monitor-exit p0

    return-void

    .line 1169
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyListenersModelUpdated()V
    .registers 1

    .prologue
    .line 1438
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->notifyListenersModelUpdated()V

    .line 1439
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->updateVoicemailPrimaryCache()V

    .line 1440
    return-void
.end method

.method public rebuildContactInfos()Z
    .registers 7

    .prologue
    .line 1068
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_9

    .line 1069
    const-string v5, "rebuildContactInfos()"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1071
    :cond_9
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosByNumberKey:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1072
    .local v1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/ContactInfo;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1073
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/ContactInfo;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1074
    sget-boolean v5, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v5, :cond_32

    .line 1075
    const-string v5, "rebuildContactInfos(): Interrupted!"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1077
    :cond_32
    const/4 v5, 0x0

    .line 1087
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/ContactInfo;>;"
    :goto_33
    return v5

    .line 1080
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/ContactInfo;>;"
    :cond_34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1081
    .local v4, numberKey:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 1085
    .local v0, contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5, v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->checkLocalContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1087
    .end local v0           #contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/ContactInfo;>;"
    .end local v4           #numberKey:Ljava/lang/String;
    :cond_48
    const/4 v5, 0x1

    goto :goto_33
.end method

.method public removeAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V
    .registers 5
    .parameter "conversation"
    .parameter "flag"

    .prologue
    .line 210
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_9

    .line 211
    const-string v1, "VoiceModel.removeAction():"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 213
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

    invoke-interface {v1, p1, p2}, Lcom/google/android/apps/googlevoice/model/ActionModel;->removeAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)Lcom/google/android/apps/googlevoice/core/Action;

    move-result-object v0

    .line 214
    .local v0, action:Lcom/google/android/apps/googlevoice/core/Action;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->notifyListenersActionUpdated(Lcom/google/android/apps/googlevoice/core/Action;)V

    .line 215
    return-void
.end method

.method public declared-synchronized requestUpToDateContacts()V
    .registers 3

    .prologue
    .line 1141
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->didStartObservingContacts:Z

    if-nez v0, :cond_1d

    .line 1142
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_e

    .line 1143
    const-string v0, "AndroidVoiceModel: Starting to observe contacts"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1145
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$5;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/BackgroundThread;->runInBackground(Ljava/lang/Runnable;)V

    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->didStartObservingContacts:Z

    .line 1159
    :cond_1d
    iget v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->wantUpToDateContacts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->wantUpToDateContacts:I

    .line 1160
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->ensureUpToDateContacts()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 1161
    monitor-exit p0

    return-void

    .line 1141
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveActionsToDatabase()V
    .registers 3

    .prologue
    .line 768
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->actionModel:Lcom/google/android/apps/googlevoice/model/ActionModel;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/model/ActionModel;->saveToDatabase(Lcom/google/android/apps/googlevoice/BackgroundThread;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 769
    monitor-exit p0

    return-void

    .line 768
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveConversationToDatabase(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 12
    .parameter "conversation"

    .prologue
    .line 739
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, conversationId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->toApiConversation()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v0

    .line 743
    .local v0, apiConversation:Lcom/google/grandcentral/api2/Api2$ApiConversation;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v5, labelBufs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLabels()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v7, :cond_2c

    aget-object v6, v1, v3

    .line 745
    .local v6, labelName:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v4

    .line 746
    .local v4, label:Lcom/google/android/apps/googlevoice/core/Label;
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/Label;->isDefaultLabel()Z

    move-result v8

    if-nez v8, :cond_29

    .line 747
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/Label;->toApiConversationLabel()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 751
    .end local v4           #label:Lcom/google/android/apps/googlevoice/core/Label;
    .end local v6           #labelName:Ljava/lang/String;
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v8

    new-instance v9, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;

    invoke-direct {v9, p0, v2, v0, v5}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$4;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;Ljava/util/ArrayList;)V

    invoke-interface {v8, v9}, Lcom/google/android/apps/googlevoice/BackgroundThread;->runInBackground(Ljava/lang/Runnable;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 758
    monitor-exit p0

    return-void

    .line 739
    .end local v0           #apiConversation:Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #conversationId:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #labelBufs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;>;"
    .end local v7           #len$:I
    :catchall_3a
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public saveRecordingBytesForCallId([BLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "recordingDataForCallId"
    .parameter "callId"

    .prologue
    const/4 v3, 0x0

    .line 541
    invoke-static {p2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->recordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, filename:Ljava/lang/String;
    const/4 v2, 0x0

    .line 544
    .local v2, stream:Ljava/io/FileOutputStream;
    :try_start_6
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 545
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 546
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 547
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->updateVoicemailSecondaryCache()V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_30
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_16} :catch_1a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_16} :catch_25

    .line 555
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    .line 557
    .end local v1           #filename:Ljava/lang/String;
    :goto_19
    return-object v1

    .line 548
    .restart local v1       #filename:Ljava/lang/String;
    :catch_1a
    move-exception v0

    .line 549
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_1b
    const-string v4, "saveRecordingBytesForCallId"

    invoke-static {v4, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_30

    .line 555
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    move-object v1, v3

    goto :goto_19

    .line 551
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_25
    move-exception v0

    .line 552
    .local v0, e:Ljava/io/IOException;
    :try_start_26
    const-string v4, "saveRecordingBytesForCallId"

    invoke-static {v4, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_30

    .line 555
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    move-object v1, v3

    goto :goto_19

    .end local v0           #e:Ljava/io/IOException;
    :catchall_30
    move-exception v3

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    throw v3
.end method

.method public declared-synchronized saveToDatabase()V
    .registers 2

    .prologue
    .line 655
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->saveConversationsAndLabelsToDatabase()V

    .line 656
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->saveActionsToDatabase()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 657
    monitor-exit p0

    return-void

    .line 655
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsFullSubscriber(Z)V
    .registers 4
    .parameter "isFullSubscriber"

    .prologue
    .line 192
    if-eqz p1, :cond_11

    sget-object v0, Lcom/google/android/apps/googlevoice/core/Label;->DEFAULT_LABELS_TO_DISPLAY_FOR_FULL_SUBSCRIBERS:[Lcom/google/android/apps/googlevoice/core/Label;

    :goto_4
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->defaultLabels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->defaultLabels:[Lcom/google/android/apps/googlevoice/core/Label;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/core/Label;->mergeLabelArrays([Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Label;)[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 195
    return-void

    .line 192
    :cond_11
    sget-object v0, Lcom/google/android/apps/googlevoice/core/Label;->DEFAULT_LABELS_TO_DISPLAY_FOR_LITE_SUBSCRIBERS:[Lcom/google/android/apps/googlevoice/core/Label;

    goto :goto_4
.end method

.method startThread(Ljava/lang/Thread;)V
    .registers 2
    .parameter "thread"

    .prologue
    .line 1204
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1205
    return-void
.end method

.method public updateModel(Ljava/util/Hashtable;[Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 13
    .parameter
    .parameter "newLabels"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;[",
            "Lcom/google/android/apps/googlevoice/core/Label;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, newConversationsById:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    const/4 v9, 0x0

    .line 493
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_a

    .line 494
    const-string v7, "VoiceModel.updateModel():"

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 496
    :cond_a
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 497
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 498
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->conversationsById:Ljava/util/Hashtable;

    .line 499
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->defaultLabels:[Lcom/google/android/apps/googlevoice/core/Label;

    invoke-static {p2, v7}, Lcom/google/android/apps/googlevoice/core/Label;->mergeLabelArrays([Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Label;)[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 503
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->searchLabel:Lcom/google/android/apps/googlevoice/core/Label;

    if-eqz v7, :cond_6b

    .line 505
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v4, newConversations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    const/4 v5, 0x0

    .line 508
    .local v5, unreadCount:I
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->searchLabel:Lcom/google/android/apps/googlevoice/core/Label;

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2c
    if-ge v2, v3, :cond_49

    aget-object v1, v0, v2

    .line 509
    .local v1, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v6

    .line 510
    .local v6, updatedConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v6, :cond_3b

    .line 512
    move-object v1, v6

    .line 514
    :cond_3b
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v7

    if-nez v7, :cond_46

    .line 516
    add-int/lit8 v5, v5, 0x1

    .line 508
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 521
    .end local v1           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v6           #updatedConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_49
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->searchLabel:Lcom/google/android/apps/googlevoice/core/Label;

    new-array v8, v9, [Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v7, v8}, Lcom/google/android/apps/googlevoice/core/Label;->setConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 523
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->searchLabel:Lcom/google/android/apps/googlevoice/core/Label;

    new-array v7, v9, [Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {p0, v8, v7}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->addConversations(Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 525
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->searchLabel:Lcom/google/android/apps/googlevoice/core/Label;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/apps/googlevoice/core/Label;->setTotalCount(I)V

    .line 526
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->searchLabel:Lcom/google/android/apps/googlevoice/core/Label;

    invoke-virtual {v7, v5}, Lcom/google/android/apps/googlevoice/core/Label;->setUnreadCount(I)V

    .line 529
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #newConversations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    .end local v5           #unreadCount:I
    :cond_6b
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->generateHistory()V

    .line 530
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->notifyListenersModelUpdated()V

    .line 531
    return-void
.end method

.method writeToDatabase(Ljava/util/Hashtable;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 826
    .local p1, conversationBufsById:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiConversation;>;"
    .local p2, labelBufs:Ljava/util/List;,"Ljava/util/List<Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;>;"
    .local p3, conversationIdsByLabel:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->attemptToWriteToDatabase(Ljava/util/Hashtable;Ljava/util/List;Ljava/util/List;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 832
    :goto_3
    return-void

    .line 827
    :catch_4
    move-exception v0

    .line 828
    .local v0, exception:Landroid/database/sqlite/SQLiteException;
    const-string v1, "VoiceModel.writeToDatabase(): deleting bad database and retrying"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contextProxy:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    const-string v2, "model.db"

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->deleteDatabase(Ljava/lang/String;)Z

    .line 830
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->attemptToWriteToDatabase(Ljava/util/Hashtable;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method
