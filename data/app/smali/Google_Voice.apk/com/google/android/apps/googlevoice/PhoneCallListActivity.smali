.class public Lcom/google/android/apps/googlevoice/PhoneCallListActivity;
.super Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;
.source "PhoneCallListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/googlevoice/PlaybackClock$Listener;
.implements Lcom/google/android/apps/googlevoice/PlaybackClock$StepListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
.implements Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;,
        Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;,
        Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SMS_SENT:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_SENT"

.field private static final COLUMN_THREAD_ID:Ljava/lang/String; = "thread_id"

.field static final DIALOG_ID_DOWNLOAD_FAILED:I = 0x450

.field static final DIALOG_ID_DOWNLOAD_FAILED_NO_NETWORK:I = 0x451

.field static final DIALOG_ID_SENDING:I = 0x3e9

.field private static final DIALOG_ID_SEND_FAILED:I = 0x3ea

.field private static final DIALOG_ID_SEND_FAILED_DESTINATION_DISALLOWED:I = 0x3ec

.field private static final DIALOG_ID_SEND_FAILED_NO_CREDIT:I = 0x3eb

.field static final DIALOG_ID_SEND_FAILED_NO_NETWORK:I = 0x3f0

.field private static final DIALOG_ID_SHORT_CODE:I = 0x3ef

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "EXTRA_MESSAGE"

.field private static final ID_CANCEL_SMS_REQUEST:I = 0x1f

.field private static final ID_CREDENTIALS_FAILED:I = 0x6

.field private static final ID_CREDENTIALS_LOADED:I = 0x5

.field public static final ID_DIALOG_DND_FAILED:I = 0x3ee

.field public static final ID_DIALOG_DND_PROGRESS:I = 0x3ed

.field static final ID_DO_NOT_KEEP_SCREEN_ON:I = 0x1e

.field static final ID_KEEP_SCREEN_ON:I = 0x1d

.field public static final ID_MENU_ITEM_ADD_STAR:I = 0xd

.field public static final ID_MENU_ITEM_ARCHIVE:I = 0x11

.field public static final ID_MENU_ITEM_CALL:I = 0xb

.field public static final ID_MENU_ITEM_CLICK_TO_CALL:I = 0x23

.field public static final ID_MENU_ITEM_COPY_MESSAGE_TEXT:I = 0x17

.field public static final ID_MENU_ITEM_DELETE:I = 0xf

.field private static final ID_MENU_ITEM_DELETE_PENDING_SMS:I = 0x19

.field public static final ID_MENU_ITEM_DISABLE_SPEAKER:I = 0x16

.field private static final ID_MENU_ITEM_EDIT_PENDING_SMS:I = 0x1b

.field public static final ID_MENU_ITEM_ENABLE_SPEAKER:I = 0x15

.field public static final ID_MENU_ITEM_FEEDBACK:I = 0x22

.field public static final ID_MENU_ITEM_HELP:I = 0x21

.field public static final ID_MENU_ITEM_REFRESH:I = 0xa

.field public static final ID_MENU_ITEM_REMOVE_STAR:I = 0xe

.field private static final ID_MENU_ITEM_RESEND_FAILED_MESSAGE:I = 0x1a

.field public static final ID_MENU_ITEM_RESTORE:I = 0x12

.field public static final ID_MENU_ITEM_SETTINGS:I = 0x20

.field public static final ID_MENU_ITEM_SMS:I = 0xc

.field public static final ID_MENU_ITEM_UNDELETE:I = 0x10

.field public static final ID_MENU_ITEM_VIEW_MESSAGE_DETAILS:I = 0x18

.field static final ID_MODEL_UPDATED:I = 0x0

.field private static final ID_PLACE_CALL:I = 0x26

.field private static final ID_PLACE_CLICK_TO_CALL:I = 0x27

.field private static final ID_REQUEST_DND:I = 0x7d0

.field static final ID_SEND_BUTTON:I = 0x1

.field public static final ID_SETTINGS_UPDATED:I = 0x1c

.field private static final ID_SMS_COST_LOOKED_UP:I = 0x2

.field private static final ID_SYNCHRONOUS_SMS_REQUEST:I = 0x4

.field static final ID_UPDATE_VIEW:I = 0x3

.field private static final MAX_RECIPIENTS:I = 0x5

.field private static final PLAYBACK_STATUS_ACQUIRING:I = 0x1

.field private static final PLAYBACK_STATUS_IDLE:I = 0x0

.field private static final PLAYBACK_STATUS_PLAYING:I = 0x2

.field private static final REGEX_CONTACT_INFO:Ljava/lang/String; = "[^\\s^,][^,]*"

.field private static final REGEX_SHORT_CODE_US:Ljava/lang/String; = "[02-9][0-9]{4,5}"

.field private static final URI_MMS_SMS_CONVERSATIONS:Ljava/lang/String; = "content://mms-sms/conversations/"

.field private static final URI_SMS_SENT:Ljava/lang/String; = "content://sms/sent"


# instance fields
.field private actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

.field private actionListView:Landroid/widget/ListView;

.field private activePlayDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

.field private addStarMenuItem:Landroid/view/MenuItem;

.field additionalRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/core/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private additionalRecipientsRequestIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private archiveMenuItem:Landroid/view/MenuItem;

.field private callMenuItem:Landroid/view/MenuItem;

.field private clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

.field private clickToCallMenuItem:Landroid/view/MenuItem;

.field private clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

.field contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

.field private contactInfoPattern:Ljava/util/regex/Pattern;

.field private conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

.field private conversationId:Ljava/lang/String;

.field private currentPlaybackTimeView:Landroid/widget/TextView;

.field private deleteMenuItem:Landroid/view/MenuItem;

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

.field private displayableSmsCost:Ljava/lang/String;

.field private dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

.field private feedbackMenuItem:Landroid/view/MenuItem;

.field handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

.field private headerBadgeView:Landroid/widget/ImageView;

.field private headerDetailsView:Landroid/widget/TextView;

.field private headerNameView:Landroid/widget/TextView;

.field private headerNumberView:Landroid/widget/TextView;

.field private headerView:Landroid/view/View;

.field private helpMenuItem:Landroid/view/MenuItem;

.field private intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

.field private isSmsSentReceiverRegistered:Z

.field private lastSmsCostLookupDestinationNumber:Ljava/lang/String;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private listView:Landroid/widget/ListView;

.field private listener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;

.field private localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

.field private log:Lcom/google/android/apps/common/log/GLog;

.field private maxPlaybackTimeView:Landroid/widget/TextView;

.field private mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;

.field messageText:Landroid/widget/EditText;

.field numberText:Landroid/widget/AutoCompleteTextView;

.field private phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

.field private photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

.field private playButton:Landroid/widget/ImageButton;

.field private playbackBar:Landroid/widget/SeekBar;

.field private playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

.field private playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

.field private playbackStatus:I

.field private playbackView:Landroid/view/View;

.field private positionWhenTextUpdatedSec:J

.field private refreshMenuItem:Landroid/view/MenuItem;

.field private removeStarMenuItem:Landroid/view/MenuItem;

.field private requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

.field private restoreMenuItem:Landroid/view/MenuItem;

.field private seekingTracker:Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;

.field private sendButton:Landroid/view/View;

.field private sendingDialog:Landroid/app/ProgressDialog;

.field sentReceiver:Landroid/content/BroadcastReceiver;

.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private settingsMenuItem:Landroid/view/MenuItem;

.field private simpleCallSection:Landroid/view/View;

.field private smsCostLookup:Lcom/google/android/apps/googlevoice/SmsCostLookup;

.field private smsMenuItem:Landroid/view/MenuItem;

.field private smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

.field private smsReplySection:Landroid/view/View;

.field private smsSender:Lcom/google/android/apps/googlevoice/system/SmsSender;

.field private speakerButton:Landroid/widget/ImageButton;

.field private speakerEnabled:Z

.field private taskRunner:Lcom/googlex/common/task/TaskRunner;

.field private titleResourceId:I

.field private transcriptPlayer:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

.field private undeleteMenuItem:Landroid/view/MenuItem;

.field private versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

.field private voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

.field private wheel:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;-><init>()V

    .line 295
    iput v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->activePlayDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    .line 305
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->isSmsSentReceiverRegistered:Z

    .line 335
    new-instance v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$1;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sentReceiver:Landroid/content/BroadcastReceiver;

    .line 2138
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Lcom/google/android/apps/googlevoice/core/Conversation;)Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendNativeSMS()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->lastSmsCostLookupDestinationNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setDisplayableSmsCost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/common/time/ClockUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/system/VersionHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/activity/DndBarView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipientsRequestIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DialogManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/googlex/common/task/TaskRunner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/TranscriptPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->transcriptPlayer:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackClock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I

    return v0
.end method

.method static synthetic access$3502(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackStatus:I

    return p1
.end method

.method static synthetic access$3600(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setActivePlayDownloadStopListener(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getLatestPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/ConnectionInformation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->unregisterSmsSentReceiver()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->wheel:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->disableDoNotDisturb()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshMultiContactInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->resetSmsCost()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshSmsCostIfNecessary()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateSendButton()V

    return-void
.end method

.method private declared-synchronized clearActivePlayDownloadStopListener()V
    .registers 2

    .prologue
    .line 2074
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->activePlayDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    if-eqz v0, :cond_a

    .line 2075
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->activePlayDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->onActiveLost()V

    .line 2077
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->activePlayDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 2078
    monitor-exit p0

    return-void

    .line 2074
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private disableDoNotDisturb()V
    .registers 3

    .prologue
    const/16 v1, 0x3ed

    .line 2474
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->showDialog(I)V

    .line 2475
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2476
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/activity/IntentFactory;->newDoNotDisturbSettingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2482
    :goto_18
    return-void

    .line 2479
    :cond_19
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->removeDialog(I)V

    .line 2480
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->update(Lcom/google/android/apps/googlevoice/settings/ServerSettings;)V

    goto :goto_18
.end method

.method private editTextMessage(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V
    .registers 6
    .parameter "smsPhoneCall"

    .prologue
    .line 1205
    if-eqz p1, :cond_1b

    .line 1206
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->removePendingSms(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v0

    .line 1209
    .local v0, removedSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    if-eqz v0, :cond_1b

    .line 1210
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    .end local v0           #removedSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_1b
    return-void
.end method

.method private getContactInfo(Landroid/text/Editable;II)Lcom/google/android/apps/googlevoice/core/ContactInfo;
    .registers 13
    .parameter "contactEditable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1113
    const/4 v3, 0x0

    .line 1116
    .local v3, contact:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    const-class v7, Landroid/text/Annotation;

    invoke-interface {p1, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    .line 1117
    .local v1, annotations:[Landroid/text/Annotation;
    if-eqz v1, :cond_75

    array-length v7, v1

    if-lez v7, :cond_75

    .line 1118
    new-instance v5, Ljava/util/HashMap;

    array-length v7, v1

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 1119
    .local v5, indexed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, v1

    .local v2, arr$:[Landroid/text/Annotation;
    array-length v6, v2

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_17
    if-ge v4, v6, :cond_29

    aget-object v0, v2, v4

    .line 1120
    .local v0, annotation:Landroid/text/Annotation;
    invoke-virtual {v0}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1122
    .end local v0           #annotation:Landroid/text/Annotation;
    :cond_29
    const-string v7, "name"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    const-string v7, "number"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    const-string v7, "person_id"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 1125
    new-instance v3, Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .end local v3           #contact:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    invoke-direct {v3}, Lcom/google/android/apps/googlevoice/core/ContactInfo;-><init>()V

    .line 1126
    .restart local v3       #contact:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    const-string v7, "name"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalName(Ljava/lang/String;)V

    .line 1127
    const-string v7, "number"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 1129
    const-string v7, "person_id"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setLocalId(Ljava/lang/Long;)V

    .line 1131
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v7, v3}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v3

    .line 1136
    .end local v2           #arr$:[Landroid/text/Annotation;
    .end local v4           #i$:I
    .end local v5           #indexed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #len$:I
    :cond_75
    if-nez v3, :cond_8f

    if-le p3, p2, :cond_8f

    .line 1137
    new-instance v3, Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .end local v3           #contact:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    invoke-direct {v3}, Lcom/google/android/apps/googlevoice/core/ContactInfo;-><init>()V

    .line 1138
    .restart local v3       #contact:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 1139
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v7, v3}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v3

    .line 1141
    :cond_8f
    return-object v3
.end method

.method private getContactPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getLatestPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 3

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    array-length v0, v0

    if-nez v0, :cond_b

    .line 1281
    :cond_9
    const/4 v0, 0x0

    .line 1283
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_a
.end method

.method private getMergedPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 3

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getPhoneCallsWithConversationId(Ljava/lang/String;)[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v0

    return-object v0
.end method

.method private getSmsCostLookup()Lcom/google/android/apps/googlevoice/SmsCostLookup;
    .registers 4

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsCostLookup:Lcom/google/android/apps/googlevoice/SmsCostLookup;

    if-nez v0, :cond_f

    .line 1270
    new-instance v0, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->log:Lcom/google/android/apps/common/log/GLog;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/RpcBasedSmsCostLookup;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/common/log/GLog;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsCostLookup:Lcom/google/android/apps/googlevoice/SmsCostLookup;

    .line 1272
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsCostLookup:Lcom/google/android/apps/googlevoice/SmsCostLookup;

    return-object v0
.end method

.method private getSmsInfoRetriever()Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;
    .registers 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    return-object v0
.end method

.method private static isSamePhoneCalls(Landroid/widget/Adapter;[Lcom/google/android/apps/googlevoice/core/PhoneCall;)Z
    .registers 7
    .parameter "adapter"
    .parameter "array"

    .prologue
    const/4 v2, 0x0

    .line 1949
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    array-length v4, p1

    if-eq v3, v4, :cond_9

    .line 1959
    :cond_8
    :goto_8
    return v2

    .line 1953
    :cond_9
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_c
    if-ltz v1, :cond_27

    .line 1954
    invoke-interface {p0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 1955
    .local v0, adapterItem:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    aget-object v3, p1, v1

    invoke-static {v0, v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sameVoicemail(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/core/PhoneCall;)Z

    move-result v3

    if-nez v3, :cond_24

    aget-object v3, p1, v1

    invoke-static {v0, v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sameTextMessage(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/core/PhoneCall;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1953
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1959
    .end local v0           #adapterItem:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_27
    const/4 v2, 0x1

    goto :goto_8
.end method

.method private loadConversationWithConversationId(Ljava/lang/String;)V
    .registers 3
    .parameter "conversationIdToLoad"

    .prologue
    .line 619
    if-eqz p1, :cond_18

    .line 620
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;

    .line 621
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 622
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    if-eqz v0, :cond_18

    .line 623
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 626
    :cond_18
    return-void
.end method

.method private onKeyboardStateChanged(Z)V
    .registers 4
    .parameter "isKeyboardOpen"

    .prologue
    .line 1988
    if-eqz p1, :cond_9

    .line 1989
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1993
    :goto_8
    return-void

    .line 1991
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_8
.end method

.method private refreshMultiContactInfo()V
    .registers 12

    .prologue
    .line 1145
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    if-eqz v7, :cond_22

    .line 1146
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 1147
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_21

    .line 1148
    const-string v7, "In an existing conversation: returning %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1186
    :cond_21
    :goto_21
    return-void

    .line 1152
    :cond_22
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 1153
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipients:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1154
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipientsRequestIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1157
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->numberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 1158
    .local v6, s:Landroid/text/Editable;
    if-eqz v6, :cond_21

    .line 1159
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1160
    .local v3, matcher:Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 1161
    .local v1, beginIndex:I
    const/4 v2, 0x0

    .line 1162
    .local v2, endIndex:I
    :goto_43
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1163
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 1164
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 1166
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipients:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x5

    if-lt v7, v8, :cond_6d

    .line 1167
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v6, v1, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1168
    sget v7, Lcom/google/android/apps/googlevoice/R$string;->sms_max_recipient_limit_exceeded_short_toast:I

    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 1171
    :cond_6d
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    if-nez v7, :cond_7a

    .line 1172
    invoke-direct {p0, v6, v1, v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getContactInfo(Landroid/text/Editable;II)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 1182
    :cond_77
    :goto_77
    add-int/lit8 v1, v2, 0x1

    goto :goto_43

    .line 1174
    :cond_7a
    invoke-direct {p0, v6, v1, v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getContactInfo(Landroid/text/Editable;II)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v0

    .line 1175
    .local v0, additionalRecipient:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    if-eqz v0, :cond_77

    .line 1176
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipients:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;->generate(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 1179
    .local v4, requestId:J
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipientsRequestIds:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_77
.end method

.method private refreshPosition(JZ)V
    .registers 9
    .parameter "position"
    .parameter "force"

    .prologue
    .line 2022
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackBar:Landroid/widget/SeekBar;

    long-to-int v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2029
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 2030
    .local v0, seconds:I
    if-nez p3, :cond_14

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->positionWhenTextUpdatedSec:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3a

    .line 2031
    :cond_14
    int-to-long v1, v0

    iput-wide v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->positionWhenTextUpdatedSec:J

    .line 2032
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_35

    .line 2033
    const-string v1, "%d millis elapsed = %d seconds"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 2035
    :cond_35
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->currentPlaybackTimeView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setMinutesSecondsText(Landroid/widget/TextView;I)V

    .line 2037
    :cond_3a
    return-void
.end method

.method private refreshSmsCostIfNecessary()V
    .registers 5

    .prologue
    .line 1219
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1233
    :cond_8
    :goto_8
    return-void

    .line 1222
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 1223
    .local v0, destinationNumber:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->lastSmsCostLookupDestinationNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->equalsNullSafe(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1227
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->lastSmsCostLookupDestinationNumber:Ljava/lang/String;

    .line 1228
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setDisplayableSmsCost(Ljava/lang/String;)V

    .line 1229
    if-eqz v0, :cond_8

    .line 1230
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getSmsCostLookup()Lcom/google/android/apps/googlevoice/SmsCostLookup;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/googlevoice/SmsCostLookup;->initiateLookup(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_8
.end method

.method private declared-synchronized registerSmsSentReceiver()V
    .registers 4

    .prologue
    .line 2503
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.apps.googlevoice.SMS_SENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->isSmsSentReceiverRegistered:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 2505
    monitor-exit p0

    return-void

    .line 2503
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetSmsCost()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1239
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->lastSmsCostLookupDestinationNumber:Ljava/lang/String;

    .line 1240
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getSmsCostLookup()Lcom/google/android/apps/googlevoice/SmsCostLookup;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/SmsCostLookup;->cancelAllLookups()V

    .line 1241
    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setDisplayableSmsCost(Ljava/lang/String;)V

    .line 1242
    return-void
.end method

.method public static sameTextMessage(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/core/PhoneCall;)Z
    .registers 3
    .parameter "first"
    .parameter "second"

    .prologue
    .line 1973
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static sameVoicemail(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/core/PhoneCall;)Z
    .registers 4
    .parameter "first"
    .parameter "second"

    .prologue
    .line 1967
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isAudibleRecording()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isAudibleRecording()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private sendNativeSMS()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 2488
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    .line 2489
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->registerSmsSentReceiver()V

    .line 2490
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.google.android.apps.googlevoice.SMS_SENT"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2491
    .local v6, sentIntent:Landroid/content/Intent;
    const-string v0, "EXTRA_MESSAGE"

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2492
    const/4 v0, 0x1

    const/high16 v1, 0x4000

    invoke-static {p0, v0, v6, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2495
    .local v4, sentPendingIntent:Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsSender:Lcom/google/android/apps/googlevoice/system/SmsSender;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/system/SmsSender;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 2497
    return-void
.end method

.method private declared-synchronized setActivePlayDownloadStopListener(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V
    .registers 3
    .parameter "pdsListener"

    .prologue
    .line 2068
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clearActivePlayDownloadStopListener()V

    .line 2069
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->activePlayDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    .line 2070
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->onActive()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 2071
    monitor-exit p0

    return-void

    .line 2068
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setDisplayableSmsCost(Ljava/lang/String;)V
    .registers 2
    .parameter "displayableSmsCost"

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->displayableSmsCost:Ljava/lang/String;

    .line 1251
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateTitle()V

    .line 1252
    return-void
.end method

.method private static setMinutesSecondsText(Landroid/widget/TextView;I)V
    .registers 6
    .parameter "textView"
    .parameter "seconds"

    .prologue
    .line 2040
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    rem-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2041
    return-void
.end method

.method private setTitleResourceId(I)V
    .registers 2
    .parameter "titleResourceId"

    .prologue
    .line 1447
    iput p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->titleResourceId:I

    .line 1448
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateTitle()V

    .line 1449
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "toastMessage"

    .prologue
    const/4 v2, 0x0

    .line 1190
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1191
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1192
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1193
    return-void
.end method

.method private declared-synchronized unregisterSmsSentReceiver()V
    .registers 2

    .prologue
    .line 2511
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->isSmsSentReceiverRegistered:Z

    if-eqz v0, :cond_a

    .line 2512
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2513
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->isSmsSentReceiverRegistered:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 2514
    monitor-exit p0

    return-void

    .line 2511
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updatePhoneCalls()V
    .registers 2

    .prologue
    .line 1276
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getMergedPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 1277
    return-void
.end method

.method private updateSendButton()V
    .registers 4

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendButton:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v2, 0x1b8

    if-gt v0, v2, :cond_31

    const/4 v0, 0x1

    :goto_2d
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1110
    return-void

    .line 1107
    :cond_31
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private updateSpeakerButton()V
    .registers 3

    .prologue
    .line 556
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->speakerButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->speakerEnabled:Z

    if-eqz v0, :cond_d

    const v0, 0x1080032

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 558
    return-void

    .line 556
    :cond_d
    const v0, 0x1080031

    goto :goto_9
.end method

.method private updateTitle()V
    .registers 3

    .prologue
    .line 1455
    iget v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->titleResourceId:I

    if-nez v0, :cond_5

    .line 1464
    :goto_4
    return-void

    .line 1459
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->displayableSmsCost:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->displayableSmsCost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 1460
    :cond_11
    iget v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->titleResourceId:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setTitle(I)V

    goto :goto_4

    .line 1462
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->titleResourceId:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->displayableSmsCost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private updateView()V
    .registers 16

    .prologue
    .line 1288
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    if-nez v9, :cond_28

    .line 1290
    sget v9, Lcom/google/android/apps/googlevoice/R$string;->title_compose:I

    invoke-direct {p0, v9}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setTitleResourceId(I)V

    .line 1291
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->numberText:Landroid/widget/AutoCompleteTextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 1292
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1293
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsReplySection:Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v9}, Lcom/google/android/apps/googlevoice/VoicePreferences;->isFullSubscriber()Z

    move-result v9

    if-eqz v9, :cond_25

    const/4 v9, 0x0

    :goto_21
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    :cond_24
    :goto_24
    return-void

    .line 1293
    :cond_25
    const/16 v9, 0x8

    goto :goto_21

    .line 1297
    :cond_28
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->numberText:Landroid/widget/AutoCompleteTextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 1299
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updatePhoneCalls()V

    .line 1301
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    array-length v9, v9

    if-nez v9, :cond_aa

    .line 1303
    sget v9, Lcom/google/android/apps/googlevoice/R$string;->title_compose:I

    invoke-direct {p0, v9}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setTitleResourceId(I)V

    .line 1304
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    :cond_43
    :goto_43
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    array-length v9, v9

    if-eqz v9, :cond_53

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isTextMessage()Z

    move-result v9

    if-eqz v9, :cond_1a0

    .line 1351
    :cond_53
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 1352
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 1353
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsReplySection:Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v9}, Lcom/google/android/apps/googlevoice/VoicePreferences;->isFullSubscriber()Z

    move-result v9

    if-eqz v9, :cond_19c

    const/4 v9, 0x0

    :goto_6a
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1361
    :goto_6d
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getLatestPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v2

    .line 1362
    .local v2, lastCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-eqz v2, :cond_1b5

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isTextMessage()Z

    move-result v9

    if-nez v9, :cond_1b5

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isAudibleRecording()Z

    move-result v9

    if-nez v9, :cond_1b5

    .line 1364
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1365
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->simpleCallSection:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->actionListView:Landroid/widget/ListView;

    new-instance v10, Lcom/google/android/apps/googlevoice/ContactActionAdapter;

    iget-object v11, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    iget-object v12, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-virtual {v12, p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v12

    invoke-direct {v10, v11, v12}, Lcom/google/android/apps/googlevoice/ContactActionAdapter;-><init>(Lcom/google/android/apps/googlevoice/core/ContactInfo;Z)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1369
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->actionListView:Landroid/widget/ListView;

    new-instance v10, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$25;

    invoke-direct {v10, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$25;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_24

    .line 1306
    .end local v2           #lastCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_aa
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTypeName()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setTitleResourceId(I)V

    .line 1307
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getLatestPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v4

    .line 1309
    .local v4, phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-eqz v4, :cond_43

    .line 1310
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerView:Landroid/view/View;

    iget-object v12, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-interface {v9, v10, v11, v12}, Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;->applyContactInformation(Landroid/content/Context;Landroid/view/View;Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    .line 1311
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerBadgeView:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getBadgeForPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1312
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerNameView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->nameString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerNumberView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isTextMessage()Z

    move-result v9

    if-eqz v9, :cond_fd

    .line 1315
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerDetailsView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_43

    .line 1317
    :cond_fd
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTimeFormat()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1318
    .local v8, timeFormat:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerDetailsView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1320
    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v11

    iget-object v13, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v13}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v13

    invoke-static {p0, v11, v12, v13, v14}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatDateTime(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallDuration()F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 1325
    .local v7, seconds:I
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackBar:Landroid/widget/SeekBar;

    if-eqz v9, :cond_149

    .line 1326
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackBar:Landroid/widget/SeekBar;

    mul-int/lit16 v10, v7, 0x3e8

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1327
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->maxPlaybackTimeView:Landroid/widget/TextView;

    invoke-static {v9, v7}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setMinutesSecondsText(Landroid/widget/TextView;I)V

    .line 1330
    :cond_149
    if-lez v7, :cond_172

    .line 1331
    const-string v9, " ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    div-int/lit8 v3, v7, 0x3c

    .line 1333
    .local v3, minutes:I
    rem-int/lit8 v7, v7, 0x3c

    .line 1334
    if-nez v3, :cond_17d

    .line 1335
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->duration_seconds_short:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    :goto_16d
    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    .end local v3           #minutes:I
    :cond_172
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerDetailsView:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_43

    .line 1337
    .restart local v3       #minutes:I
    :cond_17d
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->duration_minutes_seconds_short:I

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16d

    .line 1353
    .end local v3           #minutes:I
    .end local v4           #phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #seconds:I
    .end local v8           #timeFormat:Ljava/lang/String;
    :cond_19c
    const/16 v9, 0x8

    goto/16 :goto_6a

    .line 1356
    :cond_1a0
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 1357
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 1358
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsReplySection:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6d

    .line 1395
    .restart local v2       #lastCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_1b5
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1396
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->simpleCallSection:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    const/4 v1, 0x1

    .line 1399
    .local v1, callsDiffer:Z
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;

    .line 1400
    .local v0, adapter:Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;
    if-eqz v0, :cond_1d9

    .line 1402
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-static {v0, v9}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->isSamePhoneCalls(Landroid/widget/Adapter;[Lcom/google/android/apps/googlevoice/core/PhoneCall;)Z

    move-result v9

    if-eqz v9, :cond_237

    .line 1403
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->notifyDataSetChanged()V

    .line 1404
    const/4 v1, 0x0

    .line 1410
    :cond_1d9
    :goto_1d9
    if-eqz v0, :cond_1dd

    if-eqz v1, :cond_244

    .line 1411
    :cond_1dd
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    new-instance v10, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;

    sget v11, Lcom/google/android/apps/googlevoice/R$layout;->conversation_item:I

    iget-object v12, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getSmsInfoRetriever()Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;

    move-result-object v13

    invoke-direct {v10, p0, v11, v12, v13}, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;I[Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1414
    if-eqz v2, :cond_23b

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isAudibleRecording()Z

    move-result v9

    if-eqz v9, :cond_23b

    .line 1415
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1416
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->currentPlaybackTimeView:Landroid/widget/TextView;

    const-string v10, "00:00"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1417
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->maxPlaybackTimeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallDuration()F

    move-result v10

    float-to-int v10, v10

    invoke-static {v9, v10}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setMinutesSecondsText(Landroid/widget/TextView;I)V

    .line 1420
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallDuration()F

    move-result v10

    const/high16 v11, 0x447a

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1421
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackBar:Landroid/widget/SeekBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1423
    new-instance v5, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackView:Landroid/view/View;

    invoke-direct {v5, p0, v9}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Landroid/view/View;)V

    .line 1426
    .local v5, playDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;
    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->download()V

    .line 1427
    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setListener(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;)V

    .line 1428
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->activePlayDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    if-nez v9, :cond_24

    .line 1430
    invoke-direct {p0, v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setActivePlayDownloadStopListener(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;)V

    goto/16 :goto_24

    .line 1406
    .end local v5           #playDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;
    :cond_237
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->stopPlayback()V

    goto :goto_1d9

    .line 1434
    :cond_23b
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_24

    .line 1437
    :cond_244
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_24
.end method


# virtual methods
.method public actionUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Action;)V
    .registers 5
    .parameter "model"
    .parameter "action"

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Action;->getConversation()Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1924
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 1926
    :cond_1a
    return-void
.end method

.method public actionsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 1931
    return-void
.end method

.method public contactsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 3
    .parameter "model"

    .prologue
    .line 1913
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 1914
    const-string v0, "PhoneCallListActivity.contactsUpdated()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1916
    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->modelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V

    .line 1917
    return-void
.end method

.method public conversationUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 5
    .parameter "model"
    .parameter "updatedConversation"

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 1909
    return-void
.end method

.method isMoveToInboxAvailable()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2107
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLabels()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v3, :cond_19

    aget-object v2, v0, v1

    .line 2108
    .local v2, l:Ljava/lang/String;
    const-string v5, "inbox"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2117
    .end local v2           #l:Ljava/lang/String;
    :cond_15
    :goto_15
    return v4

    .line 2107
    .restart local v2       #l:Ljava/lang/String;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2112
    .end local v2           #l:Ljava/lang/String;
    :cond_19
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->getLabels()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v3, :cond_15

    aget-object v2, v0, v1

    .line 2113
    .restart local v2       #l:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v5, v2}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Label;->isMoveToInboxAvailable()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 2114
    const/4 v4, 0x1

    goto :goto_15

    .line 2112
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method public isSpeakerEnabled()Z
    .registers 2

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;->isSpeakerEnabled()Z

    move-result v0

    return v0
.end method

.method public labelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 5
    .parameter "model"
    .parameter "updatedLabel"

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 1904
    return-void
.end method

.method public modelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->loadConversationWithConversationId(Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 1899
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 667
    packed-switch p1, :pswitch_data_1c

    .line 678
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 680
    :goto_6
    return-void

    .line 670
    :pswitch_7
    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->removeDialog(I)V

    .line 671
    const/4 v0, -0x1

    if-eq p2, v0, :cond_14

    .line 672
    const/16 v0, 0x3ee

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->showDialog(I)V

    .line 674
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->update(Lcom/google/android/apps/googlevoice/settings/ServerSettings;)V

    goto :goto_6

    .line 667
    :pswitch_data_1c
    .packed-switch 0x7d0
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    .line 945
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendButton:Landroid/view/View;

    if-ne p1, v1, :cond_b

    .line 946
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 952
    :cond_a
    :goto_a
    return-void

    .line 947
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;

    if-eqz v1, :cond_19

    .line 948
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;->onPlayButtonDidClick()V

    goto :goto_a

    .line 949
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->speakerButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_a

    .line 950
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->speakerEnabled:Z

    if-nez v1, :cond_25

    :goto_21
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setSpeakerEnabled(Z)V

    goto :goto_a

    :cond_25
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 1978
    invoke-super {p0, p1}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1979
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_1e

    .line 1980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1983
    :cond_1e
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v0, :cond_26

    .line 1984
    .local v0, isKeyboardOpen:Z
    :goto_22
    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->onKeyboardStateChanged(Z)V

    .line 1985
    return-void

    .line 1983
    .end local v0           #isKeyboardOpen:Z
    :cond_26
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 15
    .parameter "item"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 892
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 894
    .local v5, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    iget v8, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v1, v7, v8

    .line 895
    .local v1, call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v3

    .line 896
    .local v3, contact:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_b4

    .line 938
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 939
    :goto_26
    return v11

    .line 898
    :pswitch_27
    const-string v7, "clipboard"

    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    .line 899
    .local v2, clipboard:Landroid/text/ClipboardManager;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getTextForPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 902
    .end local v2           #clipboard:Landroid/text/ClipboardManager;
    :pswitch_37
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 903
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isTextMessage()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 904
    sget v7, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_title_sms:I

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 908
    :goto_47
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/google/android/apps/googlevoice/VoiceUtil;->formatFullDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 909
    .local v4, dateTime:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getDetailFormat()I

    move-result v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    aput-object v4, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 911
    .local v6, message:Ljava/lang/String;
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_77

    .line 912
    const-string v7, "details message = \'%s\'"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 914
    :cond_77
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 915
    const v7, 0x104000a

    new-instance v8, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$9;

    invoke-direct {v8, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$9;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 921
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_26

    .line 906
    .end local v4           #dateTime:Ljava/lang/String;
    .end local v6           #message:Ljava/lang/String;
    :cond_8d
    sget v7, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_title:I

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_47

    .line 925
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_93
    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->editTextMessage(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    goto :goto_26

    .line 930
    :pswitch_97
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->removePendingSms(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/PendingSms;

    goto :goto_26

    .line 935
    :pswitch_a5
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->retryPendingSms(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 896
    :pswitch_data_b4
    .packed-switch 0x17
        :pswitch_27
        :pswitch_37
        :pswitch_97
        :pswitch_a5
        :pswitch_93
    .end packed-switch
.end method

.method public onConversationsMapped(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "oldConversationId"
    .parameter "newConversationId"

    .prologue
    .line 2465
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p2, :cond_1d

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2467
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->loadConversationWithConversationId(Ljava/lang/String;)V

    .line 2468
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 2470
    :cond_1d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x5

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 380
    invoke-super {p0, p1}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 381
    sget-object v4, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v4, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 382
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->layoutInflater:Landroid/view/LayoutInflater;

    .line 383
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 384
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVersionHelper()Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    .line 385
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 386
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 387
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceUtil()Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    .line 388
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 389
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLocalModelView()Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    .line 390
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getMediaPlayer()Lcom/google/android/apps/googlevoice/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->mediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;

    .line 391
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4, p0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getDialogManager(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/DialogManager;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    .line 392
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getPhotoHandler()Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

    .line 393
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getConnectionInformation()Lcom/google/android/apps/googlevoice/ConnectionInformation;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

    .line 394
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getTaskRunner()Lcom/googlex/common/task/TaskRunner;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    .line 395
    new-instance v4, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;

    invoke-direct {v4, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    .line 396
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createRequestIdGenerator()Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    .line 397
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSmsOutboxManager()Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    .line 398
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    invoke-interface {v4, v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 399
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/String;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->log:Lcom/google/android/apps/common/log/GLog;

    .line 400
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 401
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getIntentFactory()Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->intentFactory:Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    .line 402
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getActionBarHelper()Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    .line 403
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSmsSender()Lcom/google/android/apps/googlevoice/system/SmsSender;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsSender:Lcom/google/android/apps/googlevoice/system/SmsSender;

    .line 404
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClickToCallHelper()Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

    .line 406
    invoke-virtual {p0, v8}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->requestWindowFeature(I)Z

    .line 407
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    invoke-interface {v4, p0}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->requestLeftIcon(Landroid/app/Activity;)V

    .line 408
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipients:Ljava/util/List;

    .line 409
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipientsRequestIds:Ljava/util/List;

    .line 410
    const-string v4, "[^\\s^,][^,]*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfoPattern:Ljava/util/regex/Pattern;

    .line 413
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSignInStatusRegistrar()Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    move-result-object v3

    .line 414
    .local v3, signInStatusRegistrar:Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;
    new-instance v4, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$2;

    invoke-direct {v4, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$2;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-interface {v3, v4}, Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;->addListener(Lcom/google/android/apps/googlevoice/SignInStatusListener;)V

    .line 424
    sget v4, Lcom/google/android/apps/googlevoice/R$layout;->phonecall_list:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setContentView(I)V

    .line 426
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->header:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerView:Landroid/view/View;

    .line 427
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->name:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerNameView:Landroid/widget/TextView;

    .line 428
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->number:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerNumberView:Landroid/widget/TextView;

    .line 429
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->details:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerDetailsView:Landroid/widget/TextView;

    .line 430
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->badge:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerBadgeView:Landroid/widget/ImageView;

    .line 431
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->photoHandler:Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->headerView:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-interface {v4, v6, v7}, Lcom/google/android/apps/googlevoice/contactphotos/PhotoHandler;->afterInflation(Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 433
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->dnd_view:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/googlevoice/activity/DndBarView;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    .line 434
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    sget v6, Lcom/google/android/apps/googlevoice/R$id;->dnd_button:I

    invoke-virtual {v4, v6}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v6, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$3;

    invoke-direct {v6, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$3;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->number_text:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->numberText:Landroid/widget/AutoCompleteTextView;

    .line 442
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->numberText:Landroid/widget/AutoCompleteTextView;

    new-instance v6, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$4;

    invoke-direct {v6, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$4;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 455
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->numberText:Landroid/widget/AutoCompleteTextView;

    new-instance v6, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$5;

    invoke-direct {v6, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$5;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 475
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1b8

    invoke-direct {v2, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 476
    .local v2, lengthFilter:Landroid/text/InputFilter$LengthFilter;
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->message_text:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    .line 477
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    new-array v6, v1, [Landroid/text/InputFilter;

    aput-object v2, v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 478
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    new-instance v6, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$6;

    invoke-direct {v6, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$6;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 488
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    new-instance v6, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$7;

    invoke-direct {v6, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$7;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 499
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    new-instance v6, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$8;

    invoke-direct {v6, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$8;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 507
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->list:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    .line 508
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 509
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    sget v6, Lcom/google/android/apps/googlevoice/R$drawable;->sms_focus:I

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setSelector(I)V

    .line 510
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 511
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 512
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 514
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->simple_call_section:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->simpleCallSection:Landroid/view/View;

    .line 515
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->action_list:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->actionListView:Landroid/widget/ListView;

    .line 517
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->actionListView:Landroid/widget/ListView;

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 519
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->send_button:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendButton:Landroid/view/View;

    .line 520
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendButton:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendButton:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 523
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->sms_reply:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsReplySection:Landroid/view/View;

    .line 524
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4, p0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getPlaybackSeekingTracker(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->seekingTracker:Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;

    .line 525
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->playback:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackView:Landroid/view/View;

    .line 526
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->play:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playButton:Landroid/widget/ImageButton;

    .line 527
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->current_time:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->currentPlaybackTimeView:Landroid/widget/TextView;

    .line 528
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->max_time:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->maxPlaybackTimeView:Landroid/widget/TextView;

    .line 529
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->playback_bar:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackBar:Landroid/widget/SeekBar;

    .line 530
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->speaker:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->speakerButton:Landroid/widget/ImageButton;

    .line 531
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVoicemailPlaybackViaSpeaker()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->speakerEnabled:Z

    .line 532
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->speakerButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateSpeakerButton()V

    .line 535
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 536
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getPlaybackClock()Lcom/google/android/apps/googlevoice/PlaybackClock;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

    .line 539
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getPlaybackSpeakerController()Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    .line 540
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getTranscriptPlayer()Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->transcriptPlayer:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    .line 542
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getPlaybackSpeakerController()Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;->loadDefaultSettings()V

    .line 544
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    invoke-virtual {v6, v8}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, v6, v7, v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V

    .line 547
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    sget v6, Lcom/google/android/apps/googlevoice/R$drawable;->gv_title_bar_icon:I

    invoke-interface {v4, p0, v6}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setLeftIconDrawableResource(Landroid/app/Activity;I)V

    .line 548
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    invoke-interface {v4, p0, v1}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->setDisplayHomeAsUpEnabled(Landroid/app/Activity;Z)V

    .line 550
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 551
    .local v0, config:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v4, v1, :cond_2aa

    .line 552
    .local v1, isKeyboardOpen:Z
    :goto_2a6
    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->onKeyboardStateChanged(Z)V

    .line 553
    return-void

    .end local v1           #isKeyboardOpen:Z
    :cond_2aa
    move v1, v5

    .line 551
    goto :goto_2a6
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 18
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 824
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_13

    .line 825
    const-string v7, "onCreateContextMenu %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 827
    :cond_13
    move-object/from16 v0, p3

    instance-of v7, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v7, :cond_134

    move-object/from16 v1, p3

    .line 829
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 830
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    sget-boolean v7, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v7, :cond_44

    .line 831
    const-string v7, "context menu for list item: %d @ %d, %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 834
    :cond_44
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    iget v8, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    aget-object v4, v7, v8

    .line 835
    .local v4, phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    sget v7, Lcom/google/android/apps/googlevoice/R$string;->phonecall_context_menu_title:I

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 836
    const/4 v2, 0x0

    .line 837
    .local v2, order:I
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v7

    if-eqz v7, :cond_89

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_89

    .line 839
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-virtual {v7, p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 840
    const/4 v7, 0x0

    const/16 v8, 0xb

    add-int/lit8 v3, v2, 0x1

    .end local v2           #order:I
    .local v3, order:I
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->phonecall_context_menu_call:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v2, v3

    .line 849
    .end local v3           #order:I
    .restart local v2       #order:I
    :cond_89
    :goto_89
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isTextMessage()Z

    move-result v7

    if-eqz v7, :cond_114

    .line 850
    const/4 v7, 0x0

    const/16 v8, 0x17

    add-int/lit8 v3, v2, 0x1

    .end local v2           #order:I
    .restart local v3       #order:I
    sget v9, Lcom/google/android/apps/googlevoice/R$string;->phonecall_context_menu_copy_sms:I

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move v2, v3

    .line 856
    .end local v3           #order:I
    .restart local v2       #order:I
    :cond_9a
    :goto_9a
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isTextMessage()Z

    move-result v7

    if-eqz v7, :cond_127

    .line 857
    const/4 v7, 0x0

    const/16 v8, 0x18

    add-int/lit8 v3, v2, 0x1

    .end local v2           #order:I
    .restart local v3       #order:I
    sget v9, Lcom/google/android/apps/googlevoice/R$string;->phonecall_context_menu_details_sms:I

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move v2, v3

    .line 865
    .end local v3           #order:I
    .restart local v2       #order:I
    :goto_ab
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v5

    .line 866
    .local v5, smsConversationId:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v6

    .line 867
    .local v6, smsPhoneCallId:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isTextMessage()Z

    move-result v7

    if-eqz v7, :cond_f0

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v7, v5, v6}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->isQueuedSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f0

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v7, v5, v6}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->isSmsInProgress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f0

    .line 871
    const/4 v7, 0x0

    const/16 v8, 0x1b

    add-int/lit8 v3, v2, 0x1

    .end local v2           #order:I
    .restart local v3       #order:I
    sget v9, Lcom/google/android/apps/googlevoice/R$string;->phonecall_edit_sms_context_menu:I

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 875
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v7, v5, v6}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->isFailedSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_138

    .line 876
    const/4 v7, 0x0

    const/16 v8, 0x1a

    add-int/lit8 v2, v3, 0x1

    .end local v3           #order:I
    .restart local v2       #order:I
    sget v9, Lcom/google/android/apps/googlevoice/R$string;->phonecall_resend_sms_context_menu:I

    invoke-interface {p1, v7, v8, v3, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 880
    :goto_e5
    const/4 v7, 0x0

    const/16 v8, 0x19

    add-int/lit8 v3, v2, 0x1

    .end local v2           #order:I
    .restart local v3       #order:I
    sget v9, Lcom/google/android/apps/googlevoice/R$string;->phonecall_context_menu_delete_sms:I

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move v2, v3

    .line 888
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v3           #order:I
    .end local v4           #phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v5           #smsConversationId:Ljava/lang/String;
    .end local v6           #smsPhoneCallId:Ljava/lang/String;
    :cond_f0
    :goto_f0
    return-void

    .line 844
    .restart local v1       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v2       #order:I
    .restart local v4       #phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_f1
    const/4 v7, 0x0

    const/16 v8, 0x23

    add-int/lit8 v3, v2, 0x1

    .end local v2           #order:I
    .restart local v3       #order:I
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/android/apps/googlevoice/R$string;->phonecall_context_menu_click_to_call:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v2, v3

    .end local v3           #order:I
    .restart local v2       #order:I
    goto/16 :goto_89

    .line 852
    :cond_114
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v7

    if-eqz v7, :cond_9a

    .line 853
    const/4 v7, 0x0

    const/16 v8, 0x17

    add-int/lit8 v3, v2, 0x1

    .end local v2           #order:I
    .restart local v3       #order:I
    sget v9, Lcom/google/android/apps/googlevoice/R$string;->phonecall_context_menu_copy_transcript:I

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move v2, v3

    .end local v3           #order:I
    .restart local v2       #order:I
    goto/16 :goto_9a

    .line 860
    :cond_127
    const/4 v7, 0x0

    const/16 v8, 0x18

    add-int/lit8 v3, v2, 0x1

    .end local v2           #order:I
    .restart local v3       #order:I
    sget v9, Lcom/google/android/apps/googlevoice/R$string;->phonecall_context_menu_details:I

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move v2, v3

    .end local v3           #order:I
    .restart local v2       #order:I
    goto/16 :goto_ab

    .line 886
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v2           #order:I
    .end local v4           #phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_134
    invoke-super/range {p0 .. p3}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_f0

    .restart local v1       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v3       #order:I
    .restart local v4       #phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .restart local v5       #smsConversationId:Ljava/lang/String;
    .restart local v6       #smsPhoneCallId:Ljava/lang/String;
    :cond_138
    move v2, v3

    .end local v3           #order:I
    .restart local v2       #order:I
    goto :goto_e5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const v3, 0x104000a

    const/4 v2, 0x1

    .line 956
    sparse-switch p1, :sswitch_data_170

    .line 1103
    invoke-super {p0, p1}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_b
    return-object v0

    .line 958
    :sswitch_c
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendingDialog:Landroid/app/ProgressDialog;

    .line 959
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 960
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 961
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendingDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->message_sms_sending:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 962
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendingDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$10;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$10;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 968
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendingDialog:Landroid/app/ProgressDialog;

    goto :goto_b

    .line 971
    :sswitch_35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->message_sms_send_failed:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$12;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$12;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$11;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$11;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_b

    .line 989
    :sswitch_5f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->message_sms_send_failed_no_network:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$14;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$14;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$13;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$13;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_b

    .line 1007
    :sswitch_89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->message_sms_send_failed_no_credit:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$16;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$16;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$15;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$15;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_b

    .line 1025
    :sswitch_b4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->message_sms_send_failed_destination_disallowed:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$18;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$18;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$17;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$17;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_b

    .line 1043
    :sswitch_df
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->message_recording_download_failed:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$20;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$20;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$19;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$19;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_b

    .line 1061
    :sswitch_10a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->message_recording_download_failed_no_network:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$22;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$22;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$21;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$21;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_b

    .line 1079
    :sswitch_135
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->createProgressDialog(Landroid/content/Context;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    goto/16 :goto_b

    .line 1082
    :sswitch_13d
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->createErrorDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_b

    .line 1085
    :sswitch_143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->message_sending_to_short_code_via_sms:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$24;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$24;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$23;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$23;-><init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_b

    .line 956
    :sswitch_data_170
    .sparse-switch
        0x3e9 -> :sswitch_c
        0x3ea -> :sswitch_35
        0x3eb -> :sswitch_89
        0x3ec -> :sswitch_b4
        0x3ed -> :sswitch_135
        0x3ee -> :sswitch_13d
        0x3ef -> :sswitch_143
        0x3f0 -> :sswitch_5f
        0x450 -> :sswitch_df
        0x451 -> :sswitch_10a
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 684
    invoke-super {p0, p1}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 685
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 686
    const/16 v1, 0xb

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_call:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_call:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->callMenuItem:Landroid/view/MenuItem;

    .line 694
    :goto_1d
    const/16 v1, 0xc

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_sms:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_compose:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsMenuItem:Landroid/view/MenuItem;

    .line 697
    const/16 v1, 0x11

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_archive:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_archive:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->archiveMenuItem:Landroid/view/MenuItem;

    .line 700
    const/16 v1, 0x12

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_restore:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_restore:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->restoreMenuItem:Landroid/view/MenuItem;

    .line 703
    const/16 v1, 0xf

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_delete:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_delete:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->deleteMenuItem:Landroid/view/MenuItem;

    .line 706
    const/16 v1, 0x10

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_undelete:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_restore:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->undeleteMenuItem:Landroid/view/MenuItem;

    .line 709
    const/16 v1, 0xd

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_add_star:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_star:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->addStarMenuItem:Landroid/view/MenuItem;

    .line 712
    const/16 v1, 0xe

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_remove_star:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_star:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->removeStarMenuItem:Landroid/view/MenuItem;

    .line 715
    const/16 v1, 0xa

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_refresh:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_refresh:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshMenuItem:Landroid/view/MenuItem;

    .line 718
    const/16 v1, 0x20

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_settings:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x1080049

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->settingsMenuItem:Landroid/view/MenuItem;

    .line 721
    const/16 v1, 0x21

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_help:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x1080040

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->helpMenuItem:Landroid/view/MenuItem;

    .line 724
    const/16 v1, 0x22

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_feedback:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x1080050

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->feedbackMenuItem:Landroid/view/MenuItem;

    .line 729
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_fe

    .line 730
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ge v0, v1, :cond_fc

    move v1, v2

    :goto_e4
    invoke-static {v4, v1}, Landroid/support/v4/view/MenuCompat;->setShowAsAction(Landroid/view/MenuItem;I)Z

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 690
    .end local v0           #i:I
    :cond_ea
    const/16 v1, 0x23

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->menu_item_click_to_call:I

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_call:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clickToCallMenuItem:Landroid/view/MenuItem;

    goto/16 :goto_1d

    .restart local v0       #i:I
    :cond_fc
    move v1, v3

    .line 730
    goto :goto_e4

    .line 735
    :cond_fe
    return v2
.end method

.method public onCreatedTranscriptView(Lcom/google/android/apps/googlevoice/TranscriptView;Lcom/google/android/apps/googlevoice/core/PhoneCall;)V
    .registers 4
    .parameter "transcriptView"
    .parameter "phoneCall"

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->activePlayDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getLatestPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v0

    if-ne p2, v0, :cond_13

    .line 2100
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->activePlayDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;
    invoke-static {v0, p1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->access$3102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;Lcom/google/android/apps/googlevoice/TranscriptView;)Lcom/google/android/apps/googlevoice/TranscriptView;

    .line 2102
    :cond_13
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "menuItem"

    .prologue
    .line 810
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_21

    .line 811
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 812
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

    const-string v2, "inbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 814
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->startActivity(Landroid/content/Intent;)V

    .line 818
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1f
    const/4 v1, 0x1

    return v1

    .line 816
    :cond_21
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1f
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 648
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->onPause()V

    .line 649
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->stopPlayback()V

    .line 650
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->unregisterSmsSentReceiver()V

    .line 651
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 652
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getSmsCostLookup()Lcom/google/android/apps/googlevoice/SmsCostLookup;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/SmsCostLookup;->cancelAllLookups()V

    .line 655
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->neverMindUpToDateContacts()V

    .line 656
    return-void
.end method

.method public onPlaybackClockDidFinish(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
    .registers 2
    .parameter "clock"

    .prologue
    .line 2009
    return-void
.end method

.method public onPlaybackClockDidPause(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
    .registers 2
    .parameter "clock"

    .prologue
    .line 2005
    return-void
.end method

.method public onPlaybackClockDidResume(Lcom/google/android/apps/googlevoice/PlaybackClock;)V
    .registers 2
    .parameter "clock"

    .prologue
    .line 2001
    return-void
.end method

.method public onPlaybackClockPositionDidSeek(Lcom/google/android/apps/googlevoice/PlaybackClock;J)V
    .registers 5
    .parameter "clock"
    .parameter "position"

    .prologue
    .line 2013
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshPosition(JZ)V

    .line 2014
    return-void
.end method

.method public onPlaybackClockPositionDidStep(Lcom/google/android/apps/googlevoice/PlaybackClock;J)V
    .registers 5
    .parameter "clock"
    .parameter "position"

    .prologue
    .line 2018
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshPosition(JZ)V

    .line 2019
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 740
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshMultiContactInfo()V

    .line 741
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->hasUsablePhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 742
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->callMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1a

    .line 743
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->callMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 745
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clickToCallMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_23

    .line 746
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clickToCallMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 748
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 759
    :goto_28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    if-eqz v0, :cond_d7

    .line 761
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 762
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->archiveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 763
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->restoreMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 775
    :goto_3e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 776
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->deleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 777
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->undeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 783
    :goto_50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->isStarred()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 784
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->addStarMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 785
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->removeStarMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 791
    :goto_62
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 802
    :goto_67
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->settingsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 803
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->helpMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 804
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->feedbackMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 805
    return v3

    .line 750
    :cond_77
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->callMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_80

    .line 751
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->callMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 753
    :cond_80
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clickToCallMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_89

    .line 754
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clickToCallMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 756
    :cond_89
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_28

    .line 764
    :cond_8f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    const-string v1, "inbox"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 765
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->archiveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 766
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->restoreMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3e

    .line 767
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->isMoveToInboxAvailable()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 768
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->archiveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 769
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->restoreMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3e

    .line 771
    :cond_b5
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->archiveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 772
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->restoreMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3e

    .line 779
    :cond_c1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->deleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 780
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->undeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_50

    .line 787
    :cond_cc
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->addStarMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 788
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->removeStarMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_62

    .line 794
    :cond_d7
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->deleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 795
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->undeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 796
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->archiveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 797
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->restoreMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 798
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->addStarMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 799
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->removeStarMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 800
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_67
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;

    if-eqz v0, :cond_13

    if-eqz p3, :cond_13

    .line 2046
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->seekingTracker:Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;

    invoke-interface {v0, p2}, Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;->shouldSeek(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2047
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;

    invoke-interface {v0, p2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;->onPlaybackBarDidSeek(I)V

    .line 2050
    :cond_13
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 630
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->onResume()V

    .line 631
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->update(Lcom/google/android/apps/googlevoice/settings/ServerSettings;)V

    .line 632
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->fetch(Landroid/os/Message;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    .line 634
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    if-eqz v0, :cond_2f

    .line 635
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsRead(Lcom/google/android/apps/googlevoice/core/Conversation;Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 637
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 641
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshSmsCostIfNecessary()V

    .line 643
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->requestUpToDateContacts()V

    .line 644
    return-void
.end method

.method public onSmsAdded(Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/PendingSms;)V
    .registers 5
    .parameter "smsConversationId"
    .parameter "pendingSms"

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 2448
    return-void
.end method

.method public onSmsRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "smsConversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 2453
    return-void
.end method

.method public onSmsRetry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "smsConversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 2458
    return-void
.end method

.method public onStart()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 562
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->onStart()V

    .line 563
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 564
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_23

    .line 565
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 566
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 567
    .local v1, receipientUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->numberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    .end local v1           #receipientUri:Landroid/net/Uri;
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    invoke-virtual {v2, v5}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 579
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshMultiContactInfo()V

    .line 580
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateSendButton()V

    .line 582
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    if-nez v2, :cond_b7

    .line 583
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->numberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 595
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    if-eqz v2, :cond_ea

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasAudibleRecording()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 599
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 600
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setVolumeControlStream(I)V

    .line 604
    :goto_4f
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackClock:Lcom/google/android/apps/googlevoice/PlaybackClock;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/googlevoice/PlaybackClock;->seekPosition(J)V

    .line 605
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->playback:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 610
    :goto_5f
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v2, p0}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    .line 611
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v2, p0}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->addListener(Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;)V

    .line 612
    return-void

    .line 568
    :cond_6a
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 569
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 571
    :cond_82
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    .line 572
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown action, threading as Intent.ACTION_MAIN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 574
    :cond_aa
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/VoiceUri;->parseConversationUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->loadConversationWithConversationId(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 584
    :cond_b7
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    if-eqz v2, :cond_cb

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getLatestPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getLatestPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isTextMessage()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 587
    :cond_cb
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;

    if-eqz v2, :cond_de

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getLatestPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v2

    if-eqz v2, :cond_de

    .line 589
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 592
    :cond_de
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_37

    .line 602
    :cond_e5
    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setVolumeControlStream(I)V

    goto/16 :goto_4f

    .line 607
    :cond_ea
    sget v2, Lcom/google/android/apps/googlevoice/R$id;->playback:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5f
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 2054
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 660
    invoke-super {p0}, Lcom/google/android/apps/googlevoice/ProximitySensorActivityBase;->onStop()V

    .line 661
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->removeListener(Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;)V

    .line 662
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->removeListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    .line 663
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .parameter "seekBar"

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->seekingTracker:Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;->reset()V

    .line 2059
    return-void
.end method

.method public setListener(Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2062
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->listener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$Listener;

    .line 2063
    return-void
.end method

.method public setOnPlayClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "onPlayClickListener"

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1997
    return-void
.end method

.method public setSpeakerEnabled(Z)V
    .registers 3
    .parameter "speakerEnabled"

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackSpeakerController:Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;->setSpeakerEnabled(Z)V

    .line 2093
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->speakerEnabled:Z

    .line 2094
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateSpeakerButton()V

    .line 2095
    return-void
.end method

.method public declared-synchronized stopPlayback()V
    .registers 2

    .prologue
    .line 2081
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->activePlayDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    if-eqz v0, :cond_a

    .line 2082
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->activePlayDownloadStopListener:Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$PlayDownloadStopListener;->stop()V

    .line 2084
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->transcriptPlayer:Lcom/google/android/apps/googlevoice/TranscriptPlayer;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/TranscriptPlayer;->reset()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 2085
    monitor-exit p0

    return-void

    .line 2081
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCompleted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 1936
    return-void
.end method

.method public updateException(Lcom/google/android/apps/googlevoice/model/VoiceModel;Ljava/lang/Exception;)V
    .registers 5
    .parameter "model"
    .parameter "exception"

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    .line 1941
    return-void
.end method

.method public updateStarted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 1946
    return-void
.end method
