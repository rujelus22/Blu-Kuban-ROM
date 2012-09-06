.class public Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;
.super Landroid/app/ListActivity;
.source "ConversationListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
.implements Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;
.implements Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$6;,
        Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;
    }
.end annotation


# static fields
.field private static final DROPDOWN_LABELS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_LABEL:Ljava/lang/String; = "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

.field public static final ID_AUTHENTICATION_REQUEST:I = 0x15

.field public static final ID_AUTH_TOKEN_INVALIDATED:I = 0x14

.field public static final ID_CLICK_TO_CALL:I = 0xc

.field public static final ID_CLICK_TO_CALL_FAILED:I = 0xe

.field public static final ID_CLICK_TO_CALL_OK:I = 0xd

.field public static final ID_CREDENTIALS:I = 0x7

.field public static final ID_CREDENTIALS_FAILED:I = 0x9

.field public static final ID_CREDENTIALS_OK:I = 0x8

.field public static final ID_DIALOG_BALANCE:I = 0x3e8

.field public static final ID_DIALOG_DND_FAILED:I = 0x3ea

.field public static final ID_DIALOG_DND_PROGRESS:I = 0x3e9

.field public static final ID_LIST_CONVERSATION_REQUEST:I = 0xa

.field public static final ID_LIST_CONVERSATION_RESPONSE:I = 0xb

.field public static final ID_MENU_ITEM_BALANCE:I = 0x68

.field public static final ID_MENU_ITEM_CLICK_TO_CALL:I = 0x6c

.field public static final ID_MENU_ITEM_COMPOSE:I = 0x64

.field public static final ID_MENU_ITEM_FEEDBACK:I = 0x6b

.field public static final ID_MENU_ITEM_HELP:I = 0x69

.field public static final ID_MENU_ITEM_LABELS:I = 0x65

.field public static final ID_MENU_ITEM_REFRESH:I = 0x66

.field public static final ID_MENU_ITEM_SEARCH:I = 0x6a

.field public static final ID_MENU_ITEM_SETTINGS:I = 0x67

.field private static final ID_REQUEST_DND:I = 0x44c

.field public static final ID_SETTINGS_UPDATED:I = 0x16

.field public static final ID_UPDATE_COMPLETED:I = 0x4

.field public static final ID_UPDATE_EXCEPTION:I = 0x5

.field public static final ID_UPDATE_STARTED:I = 0x3

.field public static final ID_UPDATE_STATUS:I = 0x1

.field public static final ID_UPDATE_VIEW:I = 0x2

.field public static final ID_VIEW_SCROLL:I = 0x6

.field private static lastSearchInstance:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;


# instance fields
.field private actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

.field private adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

.field private authenticating:Z

.field private clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

.field private composeMenuItem:Landroid/view/MenuItem;

.field private contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

.field private contextMenuHelper:Lcom/google/android/apps/googlevoice/ContextMenuHelper;

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

.field private eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

.field private handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field private idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

.field private intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

.field private labelAdapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;

.field private labelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/core/Label;",
            ">;"
        }
    .end annotation
.end field

.field private labelName:Ljava/lang/String;

.field private labelNavigationListener:Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;

.field private localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

.field private log:Lcom/google/android/apps/common/log/GLog;

.field private provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

.field private proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

.field private query:Ljava/lang/String;

.field private refreshMenuItem:Landroid/view/MenuItem;

.field private retryScroll:Z

.field private retryUpdate:Z

.field private scrollWasAtBottom:Z

.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

.field private smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

.field private startupLogger:Lcom/google/android/apps/googlevoice/StartupLogger;

.field private unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

.field private updateStateListener:Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;

.field private updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

.field private userPresenceHelper:Lcom/google/android/apps/googlevoice/activity/UserPresenceHelper;

.field private versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

.field private voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

.field private voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->DROPDOWN_LABELS:Ljava/util/Set;

    .line 134
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->DROPDOWN_LABELS:Ljava/util/Set;

    const-string v1, "inbox"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->DROPDOWN_LABELS:Ljava/util/Set;

    const-string v1, "starred"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->DROPDOWN_LABELS:Ljava/util/Set;

    const-string v1, "voicemail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->DROPDOWN_LABELS:Ljava/util/Set;

    const-string v1, "sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->DROPDOWN_LABELS:Ljava/util/Set;

    const-string v1, "missed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->DROPDOWN_LABELS:Ljava/util/Set;

    const-string v1, "unread"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->lastSearchInstance:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelList:Ljava/util/List;

    .line 179
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->scrollWasAtBottom:Z

    .line 182
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->retryScroll:Z

    .line 183
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->retryUpdate:Z

    .line 184
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->authenticating:Z

    .line 191
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$1;-><init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStateListener:Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;

    .line 938
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/IdNumberHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/common/log/GLog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->log:Lcom/google/android/apps/common/log/GLog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->refreshMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/system/ActionBarHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->retryScroll:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->authenticating:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->authenticating:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/DndBarView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/model/VoiceModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Lcom/google/android/apps/googlevoice/UnreadNotifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->disableDoNotDisturb()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startLabelListActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startConversationListActivity(Ljava/lang/String;)V

    return-void
.end method

.method private configureDialogTextColor(Landroid/app/Dialog;)V
    .registers 7
    .parameter "dialog"

    .prologue
    const v3, -0x1

    .line 520
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsHoneycombOrLater()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 521
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->message:I

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 522
    .local v1, messageView:Landroid/widget/TextView;
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->balance:I

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 523
    .local v0, balanceView:Landroid/widget/TextView;
    if-nez v1, :cond_36

    .line 524
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message View not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :cond_36
    if-nez v0, :cond_51

    .line 527
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Balance View not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 529
    :cond_51
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    .end local v0           #balanceView:Landroid/widget/TextView;
    .end local v1           #messageView:Landroid/widget/TextView;
    :cond_57
    return-void
.end method

.method private createContextMenuHelper()Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;
    .registers 10

    .prologue
    .line 666
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelName:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;-><init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;Lcom/google/android/apps/googlevoice/model/LocalModelView;Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;Lcom/google/android/apps/googlevoice/ServiceManager;Lcom/google/android/apps/googlevoice/service/ActivityProxy;Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;Ljava/lang/String;Lcom/google/android/apps/googlevoice/net/EventLogger;)V

    return-object v0
.end method

.method private disableDoNotDisturb()V
    .registers 3

    .prologue
    const/16 v1, 0x3e9

    .line 1038
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->showDialog(I)V

    .line 1039
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1040
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/activity/IntentFactory;->newDoNotDisturbSettingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x44c

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1046
    :goto_18
    return-void

    .line 1043
    :cond_19
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->removeDialog(I)V

    .line 1044
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->update(Lcom/google/android/apps/googlevoice/settings/ServerSettings;)V

    goto :goto_18
.end method

.method private ensureSingleSearchActivity()V
    .registers 2

    .prologue
    .line 914
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->lastSearchInstance:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->lastSearchInstance:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    if-eq v0, p0, :cond_d

    .line 915
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->lastSearchInstance:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->finish()V

    .line 917
    :cond_d
    sput-object p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->lastSearchInstance:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    .line 918
    return-void
.end method

.method private isContentAvailable()Z
    .registers 5

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->getTimestamp()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private setTextViewText(Landroid/app/Dialog;ILjava/lang/String;)V
    .registers 8
    .parameter "dialog"
    .parameter "textViewId"
    .parameter "text"

    .prologue
    .line 509
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 510
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_2b

    .line 511
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    :cond_2b
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method private startConversationListActivity(Ljava/lang/String;)V
    .registers 5
    .parameter "label"

    .prologue
    const/4 v2, 0x0

    .line 1054
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1055
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1057
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1058
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->finish()V

    .line 1060
    invoke-virtual {p0, v2, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->overridePendingTransition(II)V

    .line 1061
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1062
    return-void
.end method

.method private startLabelListActivity()V
    .registers 3

    .prologue
    .line 1065
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/LabelListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1066
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1067
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1068
    return-void
.end method

.method private updateActionBar()V
    .registers 8

    .prologue
    .line 309
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    invoke-interface {v5, p0}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->isListNavigationMode(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 310
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelName:Ljava/lang/String;

    if-eqz v5, :cond_22

    .line 311
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v1

    .line 312
    .local v1, currentLabel:Lcom/google/android/apps/googlevoice/core/Label;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelAdapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;

    invoke-virtual {v5, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->setCurrentLabel(Lcom/google/android/apps/googlevoice/core/Label;)V

    .line 313
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Label;->getUnreadCount()I

    move-result v6

    invoke-interface {v5, p0, v6}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->displayUnread(Landroid/app/Activity;I)V

    .line 316
    .end local v1           #currentLabel:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_22
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 319
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelList:Ljava/util/List;

    new-instance v6, Lcom/google/android/apps/googlevoice/core/Label;

    invoke-direct {v6}, Lcom/google/android/apps/googlevoice/core/Label;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabels()[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Label;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_39
    if-ge v2, v4, :cond_51

    aget-object v3, v0, v2

    .line 321
    .local v3, label:Lcom/google/android/apps/googlevoice/core/Label;
    sget-object v5, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->DROPDOWN_LABELS:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 322
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 325
    .end local v3           #label:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_51
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelAdapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;->notifyDataSetChanged()V

    .line 327
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/core/Label;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_56
    return-void
.end method

.method private updateStatusInProgress()V
    .registers 4

    .prologue
    .line 861
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    sget-object v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->PROGRESS:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->getProgressMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->setStatus(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method private updateStatusNetworkError()V
    .registers 4

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->refreshMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setProgressBarIndeterminateVisibility(Landroid/app/Activity;Landroid/view/MenuItem;Z)V

    .line 867
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    sget-object v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->ERROR:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->conversation_view_network_error:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->setStatus(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method private updateStatusOk()V
    .registers 4

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->refreshMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setProgressBarIndeterminateVisibility(Landroid/app/Activity;Landroid/view/MenuItem;Z)V

    .line 873
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->getConversationCount()I

    move-result v1

    if-le v0, v1, :cond_28

    .line 875
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    sget-object v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->INFO:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->conversation_view_more:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->setStatus(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;Ljava/lang/String;)V

    .line 883
    :goto_27
    return-void

    .line 876
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->getConversationCount()I

    move-result v0

    if-nez v0, :cond_3e

    .line 878
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    sget-object v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;->INFO:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->getEmptyMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->setStatus(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter$Type;Ljava/lang/String;)V

    goto :goto_27

    .line 881
    :cond_3e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->clearStatus()V

    goto :goto_27
.end method


# virtual methods
.method public actionUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Action;)V
    .registers 5
    .parameter "model"
    .parameter "action"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 730
    return-void
.end method

.method public actionsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 735
    return-void
.end method

.method public contactsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 740
    return-void
.end method

.method public conversationUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 5
    .parameter "model"
    .parameter "conversation"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 725
    return-void
.end method

.method public labelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 5
    .parameter "model"
    .parameter "theLabel"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 720
    return-void
.end method

.method public modelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 715
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 399
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_22

    .line 400
    const-string v0, "ConversationListActivity.onActivityResult(%d, %d, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 403
    :cond_22
    sparse-switch p1, :sswitch_data_5a

    .line 428
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 430
    :cond_28
    :goto_28
    return-void

    .line 405
    :sswitch_29
    iput-boolean v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->authenticating:Z

    .line 406
    if-ne p2, v5, :cond_28

    .line 407
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->retryScroll:Z

    if-eqz v0, :cond_39

    .line 408
    iput-boolean v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->retryScroll:Z

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 411
    :cond_39
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->retryUpdate:Z

    if-eqz v0, :cond_28

    .line 412
    iput-boolean v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->retryUpdate:Z

    .line 413
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    goto :goto_28

    .line 420
    :sswitch_45
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->removeDialog(I)V

    .line 421
    if-eq p2, v5, :cond_51

    .line 422
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->showDialog(I)V

    .line 424
    :cond_51
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->update(Lcom/google/android/apps/googlevoice/settings/ServerSettings;)V

    goto :goto_28

    .line 403
    nop

    :sswitch_data_5a
    .sparse-switch
        0x15 -> :sswitch_29
        0x44c -> :sswitch_45
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->contextMenuHelper:Lcom/google/android/apps/googlevoice/ContextMenuHelper;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/ContextMenuHelper;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->contextMenuHelper:Lcom/google/android/apps/googlevoice/ContextMenuHelper;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/ContextMenuHelper;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 687
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 688
    return-void
.end method

.method public onConversationsMapped(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "oldConversationId"
    .parameter "newConversationId"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 777
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "bundle"

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 206
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_11

    .line 207
    const-string v0, "ConversationListActivity.onCreate()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 210
    :cond_11
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getUpdateStateManager()Lcom/google/android/apps/googlevoice/UpdateStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getContactApiHelper()Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceUtil()Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getUnreadNotifier()Lcom/google/android/apps/googlevoice/UnreadNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getEventLogger()Lcom/google/android/apps/googlevoice/net/EventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$ConversationListHandler;-><init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSmsOutboxManager()Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLocalModelView()Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getStartupLogger()Lcom/google/android/apps/googlevoice/StartupLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startupLogger:Lcom/google/android/apps/googlevoice/StartupLogger;

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getIntentFactory()Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$2;-><init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createUserPresenceHelper(Ljava/lang/Runnable;)Lcom/google/android/apps/googlevoice/activity/UserPresenceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->userPresenceHelper:Lcom/google/android/apps/googlevoice/activity/UserPresenceHelper;

    .line 237
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createActivityProxy(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    .line 238
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getActionBarHelper()Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->log:Lcom/google/android/apps/common/log/GLog;

    .line 241
    new-instance v0, Lcom/google/android/apps/googlevoice/IdNumberHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->log:Lcom/google/android/apps/common/log/GLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/IdNumberHelper;-><init>(Lcom/google/android/apps/common/log/GLog;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getPhotoHandler()Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

    move-result-object v3

    .line 243
    .local v3, photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/NullConversationListProvider;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/NullConversationListProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    .line 244
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/model/LocalModelView;Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;Lcom/google/android/apps/googlevoice/ServiceManager;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    .line 246
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->createContextMenuHelper()Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->contextMenuHelper:Lcom/google/android/apps/googlevoice/ContextMenuHelper;

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClickToCallHelper()Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSignInStatusRegistrar()Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    move-result-object v8

    .line 251
    .local v8, signIsStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$3;-><init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V

    invoke-interface {v8, v0}, Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;->addListener(Lcom/google/android/apps/googlevoice/SignInStatusListener;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->addListener(Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;)V

    .line 262
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->enableProgressBarIndeterminate(Landroid/app/Activity;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->requestLeftIcon(Landroid/app/Activity;)V

    .line 267
    sget v0, Lcom/google/android/apps/googlevoice/R$layout;->conversation_list:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->setContentView(I)V

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->dnd_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/activity/DndBarView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    sget v1, Lcom/google/android/apps/googlevoice/R$id;->dnd_button:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$4;-><init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 278
    .local v7, listView:Landroid/widget/ListView;
    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 279
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    sget v1, Lcom/google/android/apps/googlevoice/R$drawable;->gv_title_bar_icon:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setLeftIconDrawableResource(Landroid/app/Activity;I)V

    .line 282
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;

    sget v1, Lcom/google/android/apps/googlevoice/R$layout;->spinner_dropdown_item:I

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelAdapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;

    .line 283
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$5;-><init>(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelNavigationListener:Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;

    .line 305
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->setDefaultKeyMode(I)V

    .line 306
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 674
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 675
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->contextMenuHelper:Lcom/google/android/apps/googlevoice/ContextMenuHelper;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/ContextMenuHelper;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 676
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 462
    packed-switch p1, :pswitch_data_46

    .line 479
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    .line 464
    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108009b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->app_name:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/google/android/apps/googlevoice/R$layout;->account_dialog:I

    invoke-static {p0, v2, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->inflateDialogView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_8

    .line 473
    :pswitch_39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->createProgressDialog(Landroid/content/Context;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_8

    .line 476
    :pswitch_40
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->createErrorDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 462
    nop

    :pswitch_data_46
    .packed-switch 0x3e8
        :pswitch_9
        :pswitch_39
        :pswitch_40
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 540
    const/16 v2, 0x64

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->menu_item_compose:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_compose:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->composeMenuItem:Landroid/view/MenuItem;

    .line 543
    const/16 v2, 0x66

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->menu_item_refresh:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_refresh:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->refreshMenuItem:Landroid/view/MenuItem;

    .line 546
    const/16 v2, 0x6a

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->menu_item_search:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_search:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 548
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 549
    const/16 v2, 0x6c

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->menu_item_click_to_call:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_call:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 553
    :cond_44
    const/16 v2, 0x65

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->menu_item_labels:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_labels:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 556
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 559
    .local v1, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_56
    if-ge v0, v1, :cond_62

    .line 560
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/support/v4/view/MenuCompat;->setShowAsAction(Landroid/view/MenuItem;I)Z

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 564
    :cond_62
    const/16 v2, 0x68

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->menu_item_balance:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_balance:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 566
    const/16 v2, 0x67

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->menu_item_settings:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080049

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 568
    const/16 v2, 0x69

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->menu_item_help:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080040

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 570
    const/16 v2, 0x6b

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->menu_item_feedback:I

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080050

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 573
    move v0, v1

    :goto_9a
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_aa

    .line 574
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/support/v4/view/MenuCompat;->setShowAsAction(Landroid/view/MenuItem;I)Z

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 578
    :cond_aa
    return v5
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 387
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 388
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_c

    .line 389
    const-string v0, "ConversationListActivity.onDestroy()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 391
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->removeListener(Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;)V

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->removeListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->clearSearchLabel()V

    .line 395
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 888
    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

    .line 889
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 890
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->setResult(I)V

    .line 891
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->finish()V

    .line 893
    :cond_12
    const/4 v0, 0x1

    .line 895
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 902
    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

    .line 903
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v0

    if-nez v0, :cond_12

    .line 904
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->setResult(I)V

    .line 905
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->finish()V

    .line 907
    :cond_12
    const/4 v0, 0x1

    .line 909
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "listView"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 438
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_1a

    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConversationListActivity.onListItemClick(): id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 441
    :cond_1a
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    invoke-virtual {v4, p3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->getConversation(I)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 442
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v0, :cond_4f

    .line 443
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v2

    .line 444
    .local v2, event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v4, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_OPEN_CONVERSATION:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {v2, v4}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 445
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelName:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 446
    int-to-long v4, p3

    invoke-interface {v2, v4, v5}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setPosition(J)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 447
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setCount(I)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 449
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, conversationId:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    .local v3, intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceUri;->createConversationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 454
    .end local v1           #conversationId:Ljava/lang/String;
    .end local v2           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4f
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "menuItem"

    .prologue
    const/4 v4, 0x1

    .line 592
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_b2

    .line 652
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_c
    :goto_c
    return v4

    .line 594
    :sswitch_d
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

    const-string v6, "inbox"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 601
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_24
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 602
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    .line 603
    .local v0, event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v5, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_REFRESH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {v0, v5}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 604
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelName:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 605
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto :goto_c

    .line 609
    .end local v0           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :sswitch_3e
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 614
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_49
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->onSearchRequested()Z

    goto :goto_c

    .line 618
    :sswitch_4d
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v6, 0xc

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_c

    .line 622
    :sswitch_55
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabels()[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 623
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/google/android/apps/googlevoice/LabelListActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 629
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_68
    const/16 v5, 0x3e8

    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->showDialog(I)V

    goto :goto_c

    .line 633
    :sswitch_6e
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 634
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 638
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_79
    sget v5, Lcom/google/android/apps/googlevoice/R$string;->uri_help:I

    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 639
    .local v2, helpUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 643
    .end local v2           #helpUri:Landroid/net/Uri;
    :sswitch_8f
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsEclairOrEarlier()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 644
    sget v5, Lcom/google/android/apps/googlevoice/R$string;->uri_feedback:I

    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 645
    .local v1, feedbackUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 647
    .end local v1           #feedbackUri:Landroid/net/Uri;
    :cond_ad
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/system/FeedbackSender;->send(Landroid/app/Activity;)V

    goto/16 :goto_c

    .line 592
    :sswitch_data_b2
    .sparse-switch
        0x64 -> :sswitch_3e
        0x65 -> :sswitch_55
        0x66 -> :sswitch_24
        0x67 -> :sswitch_6e
        0x68 -> :sswitch_68
        0x69 -> :sswitch_79
        0x6a -> :sswitch_49
        0x6b -> :sswitch_8f
        0x6c -> :sswitch_4d
        0x102002c -> :sswitch_d
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 377
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->userPresenceHelper:Lcom/google/android/apps/googlevoice/activity/UserPresenceHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelper;->onActivityPaused(Lcom/google/android/apps/googlevoice/service/ActivityProxy;)V

    .line 378
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_13

    .line 379
    const-string v0, "ConversationListActivity.onPause()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 381
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStateListener:Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/UpdateStateManager;->removeListener(Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;)V

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->neverMindUpToDateContacts()V

    .line 383
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 9
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 486
    packed-switch p1, :pswitch_data_2a

    .line 498
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 501
    :goto_6
    return-void

    .line 488
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getDisplayableAccountBalance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->toStringNullEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, accountBalance:Ljava/lang/String;
    sget v1, Lcom/google/android/apps/googlevoice/R$id;->balance:I

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->dialog_account_balance_value:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v1, v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->setTextViewText(Landroid/app/Dialog;ILjava/lang/String;)V

    .line 494
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->configureDialogTextColor(Landroid/app/Dialog;)V

    goto :goto_6

    .line 486
    :pswitch_data_2a
    .packed-switch 0x3e8
        :pswitch_7
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->composeMenuItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->isFullSubscriber()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 12

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 332
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_c

    .line 333
    const-string v0, "ConversationListActivity.onResume()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 335
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->startupLogger:Lcom/google/android/apps/googlevoice/StartupLogger;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/StartupLogger;->onStartupEnd(Lcom/google/android/apps/googlevoice/net/EventLogger;)V

    .line 336
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStateListener:Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/UpdateStateManager;->addListener(Lcom/google/android/apps/googlevoice/UpdateStateManager$Listener;)V

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->update(Lcom/google/android/apps/googlevoice/settings/ServerSettings;)V

    .line 338
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v3, 0x16

    invoke-interface {v1, v3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->fetch(Landroid/os/Message;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    .line 340
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 341
    .local v10, intent:Landroid/content/Intent;
    if-eqz v10, :cond_a7

    .line 343
    const-string v0, "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, labelName:Ljava/lang/String;
    const-string v0, "query"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, query:Ljava/lang/String;
    if-eqz v2, :cond_77

    .line 347
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelName:Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelAdapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelNavigationListener:Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;

    invoke-interface {v0, p0, v1, v3}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->enableLabelNavigation(Landroid/app/Activity;Landroid/widget/SpinnerAdapter;Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;)V

    .line 349
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .end local v5           #query:Ljava/lang/String;
    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/net/VoiceService;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_LABEL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/net/EventLogger;->submitWithLabel(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->createContextMenuHelper()Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->contextMenuHelper:Lcom/google/android/apps/googlevoice/ContextMenuHelper;

    .line 369
    .end local v2           #labelName:Ljava/lang/String;
    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->requestUpToDateContacts()V

    .line 370
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateView()V

    .line 371
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->userPresenceHelper:Lcom/google/android/apps/googlevoice/activity/UserPresenceHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->proxy:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UserPresenceHelper;->onActivityResumed(Lcom/google/android/apps/googlevoice/service/ActivityProxy;)V

    .line 372
    return-void

    .line 353
    .restart local v2       #labelName:Ljava/lang/String;
    .restart local v5       #query:Ljava/lang/String;
    :cond_77
    if-eqz v5, :cond_67

    .line 354
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->ensureSingleSearchActivity()V

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->query:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 357
    iput-object v5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->query:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->clearSearchLabel()V

    .line 360
    new-instance v3, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    move-object v4, p0

    move-object v6, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/net/EventLogger;)V

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 363
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->createContextMenuHelper()Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListContextMenuHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->contextMenuHelper:Lcom/google/android/apps/googlevoice/ContextMenuHelper;

    goto :goto_67

    .line 367
    .end local v2           #labelName:Ljava/lang/String;
    .end local v5           #query:Ljava/lang/String;
    :cond_a7
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelAdapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelSpinnerAdapter;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->labelNavigationListener:Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;

    invoke-interface {v0, p0, v1, v3}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->enableLabelNavigation(Landroid/app/Activity;Landroid/widget/SpinnerAdapter;Lcom/google/android/apps/googlevoice/system/ActionBarHelper$OnActionBarNavigationListener;)V

    goto :goto_67
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 8
    .parameter "view"
    .parameter "first"
    .parameter "count"
    .parameter "total"

    .prologue
    .line 696
    add-int v1, p2, p3

    if-lt v1, p4, :cond_18

    const/4 v0, 0x1

    .line 697
    .local v0, atBottom:Z
    :goto_5
    if-eqz v0, :cond_15

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->scrollWasAtBottom:Z

    if-nez v1, :cond_15

    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->authenticating:Z

    if-nez v1, :cond_15

    .line 698
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 700
    :cond_15
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->scrollWasAtBottom:Z

    .line 701
    return-void

    .line 696
    .end local v0           #atBottom:Z
    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 706
    return-void
.end method

.method public onSmsAdded(Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/PendingSms;)V
    .registers 6
    .parameter "conversationId"
    .parameter "pendingSms"

    .prologue
    .line 758
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 759
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 760
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 762
    :cond_1c
    return-void
.end method

.method public onSmsRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 767
    return-void
.end method

.method public onSmsRetry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 772
    return-void
.end method

.method public requestForegroundUpdate()V
    .registers 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 932
    return-void
.end method

.method public sendMessageCredentialsFailed()V
    .registers 3

    .prologue
    .line 926
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 927
    return-void
.end method

.method setConversationListProviderForTest(Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    .line 1051
    return-void
.end method

.method public updateCompleted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 753
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 754
    return-void
.end method

.method public updateException(Lcom/google/android/apps/googlevoice/model/VoiceModel;Ljava/lang/Exception;)V
    .registers 8
    .parameter "model"
    .parameter "exception"

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x1

    .line 781
    instance-of v0, p2, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v0, :cond_24

    check-cast p2, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-ne v0, v1, :cond_24

    .line 783
    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->retryUpdate:Z

    .line 784
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v1, v4}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v2, v4}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V

    .line 788
    :cond_24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 792
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 793
    return-void
.end method

.method public updateStarted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 745
    return-void
.end method

.method public updateStatus()V
    .registers 3

    .prologue
    .line 810
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$6;->$SwitchMap$com$google$android$apps$googlevoice$UpdateStateManager$State:[I

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->getUpdateState()Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 847
    :goto_11
    return-void

    .line 813
    :pswitch_12
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity$6;->$SwitchMap$com$google$android$apps$googlevoice$UpdateStateManager$State:[I

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/UpdateStateManager;->getUpdateState()Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    goto :goto_11

    .line 816
    :pswitch_24
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStatusOk()V

    goto :goto_11

    .line 821
    :pswitch_28
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->isContentAvailable()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 822
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStatusInProgress()V

    goto :goto_11

    .line 824
    :cond_32
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStatusOk()V

    goto :goto_11

    .line 830
    :pswitch_36
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStatusNetworkError()V

    goto :goto_11

    .line 837
    :pswitch_3a
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStatusInProgress()V

    goto :goto_11

    .line 842
    :pswitch_3e
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStatusNetworkError()V

    .line 844
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->noteUpdateStateFailedShown()V

    goto :goto_11

    .line 810
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_12
        :pswitch_3a
        :pswitch_3e
    .end packed-switch

    .line 813
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_24
        :pswitch_28
        :pswitch_36
    .end packed-switch
.end method

.method public updateView()V
    .registers 4

    .prologue
    .line 800
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 801
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateActionBar()V

    .line 802
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->provider:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getConversationsWithLabel(Lcom/google/android/apps/googlevoice/core/Label;)[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 803
    .local v0, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->adapter:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;

    if-eqz v0, :cond_23

    .end local v0           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    :goto_1c
    invoke-virtual {v1, v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationArrayAdapter;->setConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 804
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;->updateStatus()V

    .line 805
    return-void

    .line 803
    .restart local v0       #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_23
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/google/android/apps/googlevoice/core/Conversation;

    goto :goto_1c
.end method
