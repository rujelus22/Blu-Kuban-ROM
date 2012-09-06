.class public final enum Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final enum ACCESS_NUMBER_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final ACCESS_NUMBER_FOUND_VALUE:I = 0x4c

.field public static final enum ACCESS_NUMBER_LOOKUP_AUTHENTICATION_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final ACCESS_NUMBER_LOOKUP_AUTHENTICATION_FAILED_VALUE:I = 0x4e

.field public static final enum ACCESS_NUMBER_LOOKUP_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final ACCESS_NUMBER_LOOKUP_FAILED_VALUE:I = 0x4d

.field public static final enum ACCESS_NUMBER_LOOKUP_SKIPPED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final ACCESS_NUMBER_LOOKUP_SKIPPED_VALUE:I = 0x4a

.field public static final enum ACCESS_NUMBER_LOOKUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final ACCESS_NUMBER_LOOKUP_STARTED_VALUE:I = 0x4b

.field public static final enum BRING_APP_TO_FOREGROUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final BRING_APP_TO_FOREGROUND_VALUE:I = 0x5

.field public static final enum CALL_ABANDONED_WITHOUT_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CALL_ABANDONED_WITHOUT_NUMBER_VALUE:I = 0x4f

.field public static final enum CALL_ABANDONED_WITH_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CALL_ABANDONED_WITH_ACCESS_NUMBER_VALUE:I = 0x50

.field public static final enum CALL_ABANDONED_WITH_SHADOW_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CALL_ABANDONED_WITH_SHADOW_NUMBER_VALUE:I = 0x51

.field public static final enum CALL_COMPLETED_WITHOUT_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CALL_COMPLETED_WITHOUT_NUMBER_VALUE:I = 0x52

.field public static final enum CALL_COMPLETED_WITH_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CALL_COMPLETED_WITH_ACCESS_NUMBER_VALUE:I = 0x53

.field public static final enum CALL_COMPLETED_WITH_SHADOW_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CALL_COMPLETED_WITH_SHADOW_NUMBER_VALUE:I = 0x54

.field public static final enum CALL_SETUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CALL_SETUP_STARTED_VALUE:I = 0x45

.field public static final enum CONTACTS_DIAL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CONTACTS_DIAL_VALUE:I = 0x20

.field public static final enum CONTACTS_DRILL_IN:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CONTACTS_DRILL_IN_VALUE:I = 0x1e

.field public static final enum CONTACTS_DRILL_OUT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CONTACTS_DRILL_OUT_VALUE:I = 0x1f

.field public static final enum CONTACTS_EDIT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CONTACTS_EDIT_VALUE:I = 0x22

.field public static final enum CONTACTS_GROUPS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CONTACTS_GROUPS_VALUE:I = 0x23

.field public static final enum CONTACTS_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CONTACTS_SMS_VALUE:I = 0x21

.field public static final enum CONVERSATION_DELETE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CONVERSATION_DELETE_VALUE:I = 0x12

.field public static final enum CONVERSATION_PLAY_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CONVERSATION_PLAY_RECORDING_VALUE:I = 0xd

.field public static final enum CONVERSATION_REPLY_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CONVERSATION_REPLY_CALL_VALUE:I = 0x11

.field public static final enum CONVERSATION_REPLY_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CONVERSATION_REPLY_SMS_VALUE:I = 0x10

.field public static final enum CONVERSATION_RETRIEVE_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final CONVERSATION_RETRIEVE_RECORDING_VALUE:I = 0xf

.field public static final enum EXCEPTION_ON_DONE_GET_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final EXCEPTION_ON_DONE_GET_ACCESS_NUMBER_VALUE:I = 0x55

.field public static final enum EXTERNAL_AUTOROUTED_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final EXTERNAL_AUTOROUTED_CALL_VALUE:I = 0x30

.field public static final enum EXTERNAL_AUTOROUTED_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final EXTERNAL_AUTOROUTED_SMS_VALUE:I = 0x31

.field public static final enum EXTERNAL_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final EXTERNAL_CALL_VALUE:I = 0x2e

.field public static final enum EXTERNAL_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final EXTERNAL_SMS_VALUE:I = 0x2f

.field public static final enum FIRST_STARTUP:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final enum FIRST_STARTUP_UPGRADE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final FIRST_STARTUP_UPGRADE_VALUE:I = 0x2

.field public static final FIRST_STARTUP_VALUE:I = 0x1

.field public static final enum KEYPAD_ADD_CONTACT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final KEYPAD_ADD_CONTACT_VALUE:I = 0x19

.field public static final enum KEYPAD_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final KEYPAD_CALL_VALUE:I = 0x1b

.field public static final enum KEYPAD_REFRESH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final KEYPAD_REFRESH_VALUE:I = 0x1c

.field public static final enum KEYPAD_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final KEYPAD_SMS_VALUE:I = 0x1a

.field public static final enum LABEL_ALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LABEL_ALL_VALUE:I = 0x9

.field public static final enum LABEL_DELETE_CONVERSATION:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LABEL_DELETE_CONVERSATION_VALUE:I = 0xb

.field public static final enum LABEL_OPEN_CONVERSATION:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LABEL_OPEN_CONVERSATION_VALUE:I = 0xc

.field public static final enum LABEL_REFRESH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LABEL_REFRESH_VALUE:I = 0xa

.field public static final enum LABEL_UNREAD:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LABEL_UNREAD_VALUE:I = 0x8

.field public static final enum LATENCY_CONNECT_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LATENCY_CONNECT_CALL_VALUE:I = 0x2b

.field public static final enum LATENCY_FIRST_STARTUP_PROVISIONING_FLOW:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LATENCY_FIRST_STARTUP_PROVISIONING_FLOW_VALUE:I = 0x28

.field public static final enum LATENCY_LOGIN:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LATENCY_LOGIN_VALUE:I = 0x27

.field public static final enum LATENCY_REFRESH_ADDITIONAL_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LATENCY_REFRESH_ADDITIONAL_INBOX_VALUE:I = 0x2a

.field public static final enum LATENCY_REFRESH_DEFAULT_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LATENCY_REFRESH_DEFAULT_INBOX_VALUE:I = 0x29

.field public static final enum LATENCY_RETRIEVE_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LATENCY_RETRIEVE_RECORDING_VALUE:I = 0x2d

.field public static final enum LATENCY_SEND_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final LATENCY_SEND_SMS_VALUE:I = 0x2c

.field public static final enum OBSOLETE_CALL_SETUP_AUTHENTICATION_FAILURE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OBSOLETE_CALL_SETUP_AUTHENTICATION_FAILURE_VALUE:I = 0x35

.field public static final enum OBSOLETE_CALL_SETUP_CALL_ABANDONED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OBSOLETE_CALL_SETUP_CALL_ABANDONED_VALUE:I = 0x36

.field public static final enum OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final enum OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED_TO_AUTH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED_TO_AUTH_VALUE:I = 0x39

.field public static final OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED_VALUE:I = 0x38

.field public static final enum OBSOLETE_CALL_SETUP_CALL_THROUGH_SUCCEEDED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OBSOLETE_CALL_SETUP_CALL_THROUGH_SUCCEEDED_VALUE:I = 0x37

.field public static final enum OBSOLETE_CALL_SETUP_GET_ACCESS_NUMBER_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OBSOLETE_CALL_SETUP_GET_ACCESS_NUMBER_FAILED_VALUE:I = 0x3a

.field public static final enum OBSOLETE_CALL_SETUP_GOT_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OBSOLETE_CALL_SETUP_GOT_ACCESS_NUMBER_VALUE:I = 0x33

.field public static final enum OBSOLETE_CALL_SETUP_INITIATE_CALL_REQUEST:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OBSOLETE_CALL_SETUP_INITIATE_CALL_REQUEST_VALUE:I = 0x32

.field public static final enum OBSOLETE_CALL_SETUP_NO_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OBSOLETE_CALL_SETUP_NO_ACCESS_NUMBER_VALUE:I = 0x34

.field public static final enum OPEN_CONTACTS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OPEN_CONTACTS_VALUE:I = 0x1d

.field public static final enum OPEN_KEYPAD:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OPEN_KEYPAD_VALUE:I = 0x18

.field public static final enum OPEN_LABEL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OPEN_LABEL_VALUE:I = 0x7

.field public static final enum OPEN_RECENTS_ALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OPEN_RECENTS_ALL_VALUE:I = 0x13

.field public static final enum OPEN_RECENTS_SUMMARY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OPEN_RECENTS_SUMMARY_VALUE:I = 0x14

.field public static final enum OPEN_SETTINGS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final OPEN_SETTINGS_VALUE:I = 0x24

.field public static final enum RECENTS_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final RECENTS_CALL_VALUE:I = 0x16

.field public static final enum RECENTS_CLEAR:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final RECENTS_CLEAR_VALUE:I = 0x15

.field public static final enum RECENTS_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final RECENTS_SMS_VALUE:I = 0x17

.field public static final enum SEARCH_LATENCY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final SEARCH_LATENCY_VALUE:I = 0x66

.field public static final enum SEND_APP_TO_BACKGROUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final SEND_APP_TO_BACKGROUND_VALUE:I = 0x6

.field public static final enum SETTINGS_ACCOUNT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final SETTINGS_ACCOUNT_VALUE:I = 0x25

.field public static final enum SETTINGS_CHANGE_FORWARDING_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final SETTINGS_CHANGE_FORWARDING_NUMBER_VALUE:I = 0x26

.field public static final enum SHADOW_NUMBER_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final SHADOW_NUMBER_FOUND_VALUE:I = 0x48

.field public static final enum SHADOW_NUMBER_LOOKUP_SKIPPED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final SHADOW_NUMBER_LOOKUP_SKIPPED_VALUE:I = 0x46

.field public static final enum SHADOW_NUMBER_LOOKUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final SHADOW_NUMBER_LOOKUP_STARTED_VALUE:I = 0x47

.field public static final enum SHADOW_NUMBER_NOT_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final SHADOW_NUMBER_NOT_FOUND_VALUE:I = 0x49

.field public static final enum START_APP_ACTIVE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final START_APP_ACTIVE_VALUE:I = 0x3

.field public static final enum START_APP_COMPLETE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final START_APP_COMPLETE_VALUE:I = 0x4

.field public static final enum WIDGET_INBOX_ADD_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_INBOX_ADD_WIDGET_VALUE:I = 0x5d

.field public static final enum WIDGET_INBOX_NEXT_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_INBOX_NEXT_MESSAGE_VALUE:I = 0x60

.field public static final enum WIDGET_INBOX_OPEN_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_INBOX_OPEN_INBOX_VALUE:I = 0x5f

.field public static final enum WIDGET_INBOX_OPEN_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_INBOX_OPEN_MESSAGE_VALUE:I = 0x62

.field public static final enum WIDGET_INBOX_PREV_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_INBOX_PREV_MESSAGE_VALUE:I = 0x61

.field public static final enum WIDGET_INBOX_REMOVE_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_INBOX_REMOVE_WIDGET_VALUE:I = 0x5e

.field public static final enum WIDGET_LATENCY_REFRESH_INBOX_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_LATENCY_REFRESH_INBOX_WIDGET_VALUE:I = 0x65

.field public static final enum WIDGET_LATENCY_REFRESH_SETTINGS_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_LATENCY_REFRESH_SETTINGS_WIDGET_VALUE:I = 0x64

.field public static final enum WIDGET_LATENCY_TOGGLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_LATENCY_TOGGLE_DND_VALUE:I = 0x63

.field public static final enum WIDGET_SETTINGS_ADD_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_SETTINGS_ADD_WIDGET_VALUE:I = 0x56

.field public static final enum WIDGET_SETTINGS_COMPOSE_TEXT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_SETTINGS_COMPOSE_TEXT_VALUE:I = 0x59

.field public static final enum WIDGET_SETTINGS_CYCLE_CALL_MODE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_SETTINGS_CYCLE_CALL_MODE_VALUE:I = 0x5a

.field public static final enum WIDGET_SETTINGS_DISABLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_SETTINGS_DISABLE_DND_VALUE:I = 0x5c

.field public static final enum WIDGET_SETTINGS_ENABLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_SETTINGS_ENABLE_DND_VALUE:I = 0x5b

.field public static final enum WIDGET_SETTINGS_OPEN_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_SETTINGS_OPEN_INBOX_VALUE:I = 0x58

.field public static final enum WIDGET_SETTINGS_REMOVE_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType; = null

.field public static final WIDGET_SETTINGS_REMOVE_WIDGET_VALUE:I = 0x57

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 144
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "FIRST_STARTUP"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 145
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "FIRST_STARTUP_UPGRADE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP_UPGRADE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 146
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "START_APP_ACTIVE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->START_APP_ACTIVE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 147
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "START_APP_COMPLETE"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->START_APP_COMPLETE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 148
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "BRING_APP_TO_FOREGROUND"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->BRING_APP_TO_FOREGROUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 149
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "SEND_APP_TO_BACKGROUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SEND_APP_TO_BACKGROUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 150
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OPEN_LABEL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_LABEL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 151
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LABEL_UNREAD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_UNREAD:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 152
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LABEL_ALL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_ALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 153
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LABEL_REFRESH"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_REFRESH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 154
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LABEL_DELETE_CONVERSATION"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_DELETE_CONVERSATION:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 155
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LABEL_OPEN_CONVERSATION"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_OPEN_CONVERSATION:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 156
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CONVERSATION_PLAY_RECORDING"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_PLAY_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 157
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CONVERSATION_RETRIEVE_RECORDING"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_RETRIEVE_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 158
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CONVERSATION_REPLY_SMS"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_REPLY_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 159
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CONVERSATION_REPLY_CALL"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_REPLY_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 160
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CONVERSATION_DELETE"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_DELETE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 161
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OPEN_RECENTS_ALL"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_RECENTS_ALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 162
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OPEN_RECENTS_SUMMARY"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_RECENTS_SUMMARY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 163
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "RECENTS_CLEAR"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->RECENTS_CLEAR:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 164
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "RECENTS_CALL"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->RECENTS_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 165
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "RECENTS_SMS"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const/16 v4, 0x17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->RECENTS_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 166
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OPEN_KEYPAD"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0x18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_KEYPAD:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 167
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "KEYPAD_ADD_CONTACT"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const/16 v4, 0x19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_ADD_CONTACT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 168
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "KEYPAD_SMS"

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/16 v4, 0x1a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 169
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "KEYPAD_CALL"

    const/16 v2, 0x19

    const/16 v3, 0x19

    const/16 v4, 0x1b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 170
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "KEYPAD_REFRESH"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_REFRESH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 171
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OPEN_CONTACTS"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/16 v4, 0x1d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_CONTACTS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 172
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CONTACTS_DRILL_IN"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_DRILL_IN:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 173
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CONTACTS_DRILL_OUT"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const/16 v4, 0x1f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_DRILL_OUT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 174
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CONTACTS_DIAL"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const/16 v4, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_DIAL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 175
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CONTACTS_SMS"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const/16 v4, 0x21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 176
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CONTACTS_EDIT"

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0x22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_EDIT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 177
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CONTACTS_GROUPS"

    const/16 v2, 0x21

    const/16 v3, 0x21

    const/16 v4, 0x23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_GROUPS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 178
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OPEN_SETTINGS"

    const/16 v2, 0x22

    const/16 v3, 0x22

    const/16 v4, 0x24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_SETTINGS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 179
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "SETTINGS_ACCOUNT"

    const/16 v2, 0x23

    const/16 v3, 0x23

    const/16 v4, 0x25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SETTINGS_ACCOUNT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 180
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "SETTINGS_CHANGE_FORWARDING_NUMBER"

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0x26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SETTINGS_CHANGE_FORWARDING_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 181
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LATENCY_LOGIN"

    const/16 v2, 0x25

    const/16 v3, 0x25

    const/16 v4, 0x27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_LOGIN:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 182
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LATENCY_FIRST_STARTUP_PROVISIONING_FLOW"

    const/16 v2, 0x26

    const/16 v3, 0x26

    const/16 v4, 0x28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_FIRST_STARTUP_PROVISIONING_FLOW:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 183
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LATENCY_REFRESH_DEFAULT_INBOX"

    const/16 v2, 0x27

    const/16 v3, 0x27

    const/16 v4, 0x29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_REFRESH_DEFAULT_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 184
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LATENCY_REFRESH_ADDITIONAL_INBOX"

    const/16 v2, 0x28

    const/16 v3, 0x28

    const/16 v4, 0x2a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_REFRESH_ADDITIONAL_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 185
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LATENCY_CONNECT_CALL"

    const/16 v2, 0x29

    const/16 v3, 0x29

    const/16 v4, 0x2b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_CONNECT_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 186
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LATENCY_SEND_SMS"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    const/16 v4, 0x2c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_SEND_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 187
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "LATENCY_RETRIEVE_RECORDING"

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    const/16 v4, 0x2d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_RETRIEVE_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 188
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "EXTERNAL_CALL"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const/16 v4, 0x2e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 189
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "EXTERNAL_SMS"

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    const/16 v4, 0x2f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 190
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "EXTERNAL_AUTOROUTED_CALL"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_AUTOROUTED_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 191
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "EXTERNAL_AUTOROUTED_SMS"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_AUTOROUTED_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 192
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OBSOLETE_CALL_SETUP_INITIATE_CALL_REQUEST"

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_INITIATE_CALL_REQUEST:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 193
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OBSOLETE_CALL_SETUP_GOT_ACCESS_NUMBER"

    const/16 v2, 0x31

    const/16 v3, 0x31

    const/16 v4, 0x33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_GOT_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 194
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OBSOLETE_CALL_SETUP_NO_ACCESS_NUMBER"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_NO_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 195
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OBSOLETE_CALL_SETUP_AUTHENTICATION_FAILURE"

    const/16 v2, 0x33

    const/16 v3, 0x33

    const/16 v4, 0x35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_AUTHENTICATION_FAILURE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 196
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OBSOLETE_CALL_SETUP_CALL_ABANDONED"

    const/16 v2, 0x34

    const/16 v3, 0x34

    const/16 v4, 0x36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_ABANDONED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 197
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OBSOLETE_CALL_SETUP_CALL_THROUGH_SUCCEEDED"

    const/16 v2, 0x35

    const/16 v3, 0x35

    const/16 v4, 0x37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_THROUGH_SUCCEEDED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 198
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED"

    const/16 v2, 0x36

    const/16 v3, 0x36

    const/16 v4, 0x38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 199
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED_TO_AUTH"

    const/16 v2, 0x37

    const/16 v3, 0x37

    const/16 v4, 0x39

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED_TO_AUTH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 200
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "OBSOLETE_CALL_SETUP_GET_ACCESS_NUMBER_FAILED"

    const/16 v2, 0x38

    const/16 v3, 0x38

    const/16 v4, 0x3a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_GET_ACCESS_NUMBER_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 201
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CALL_SETUP_STARTED"

    const/16 v2, 0x39

    const/16 v3, 0x39

    const/16 v4, 0x45

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_SETUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 202
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "SHADOW_NUMBER_LOOKUP_SKIPPED"

    const/16 v2, 0x3a

    const/16 v3, 0x3a

    const/16 v4, 0x46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_LOOKUP_SKIPPED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 203
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "SHADOW_NUMBER_LOOKUP_STARTED"

    const/16 v2, 0x3b

    const/16 v3, 0x3b

    const/16 v4, 0x47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_LOOKUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 204
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "SHADOW_NUMBER_FOUND"

    const/16 v2, 0x3c

    const/16 v3, 0x3c

    const/16 v4, 0x48

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 205
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "SHADOW_NUMBER_NOT_FOUND"

    const/16 v2, 0x3d

    const/16 v3, 0x3d

    const/16 v4, 0x49

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_NOT_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 206
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "ACCESS_NUMBER_LOOKUP_SKIPPED"

    const/16 v2, 0x3e

    const/16 v3, 0x3e

    const/16 v4, 0x4a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_SKIPPED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 207
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "ACCESS_NUMBER_LOOKUP_STARTED"

    const/16 v2, 0x3f

    const/16 v3, 0x3f

    const/16 v4, 0x4b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 208
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "ACCESS_NUMBER_FOUND"

    const/16 v2, 0x40

    const/16 v3, 0x40

    const/16 v4, 0x4c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 209
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "ACCESS_NUMBER_LOOKUP_FAILED"

    const/16 v2, 0x41

    const/16 v3, 0x41

    const/16 v4, 0x4d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 210
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "ACCESS_NUMBER_LOOKUP_AUTHENTICATION_FAILED"

    const/16 v2, 0x42

    const/16 v3, 0x42

    const/16 v4, 0x4e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_AUTHENTICATION_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 211
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CALL_ABANDONED_WITHOUT_NUMBER"

    const/16 v2, 0x43

    const/16 v3, 0x43

    const/16 v4, 0x4f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITHOUT_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 212
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CALL_ABANDONED_WITH_ACCESS_NUMBER"

    const/16 v2, 0x44

    const/16 v3, 0x44

    const/16 v4, 0x50

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITH_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 213
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CALL_ABANDONED_WITH_SHADOW_NUMBER"

    const/16 v2, 0x45

    const/16 v3, 0x45

    const/16 v4, 0x51

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITH_SHADOW_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 214
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CALL_COMPLETED_WITHOUT_NUMBER"

    const/16 v2, 0x46

    const/16 v3, 0x46

    const/16 v4, 0x52

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITHOUT_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 215
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CALL_COMPLETED_WITH_ACCESS_NUMBER"

    const/16 v2, 0x47

    const/16 v3, 0x47

    const/16 v4, 0x53

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITH_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 216
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "CALL_COMPLETED_WITH_SHADOW_NUMBER"

    const/16 v2, 0x48

    const/16 v3, 0x48

    const/16 v4, 0x54

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITH_SHADOW_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 217
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "EXCEPTION_ON_DONE_GET_ACCESS_NUMBER"

    const/16 v2, 0x49

    const/16 v3, 0x49

    const/16 v4, 0x55

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXCEPTION_ON_DONE_GET_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 218
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_SETTINGS_ADD_WIDGET"

    const/16 v2, 0x4a

    const/16 v3, 0x4a

    const/16 v4, 0x56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_ADD_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 219
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_SETTINGS_REMOVE_WIDGET"

    const/16 v2, 0x4b

    const/16 v3, 0x4b

    const/16 v4, 0x57

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_REMOVE_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 220
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_SETTINGS_OPEN_INBOX"

    const/16 v2, 0x4c

    const/16 v3, 0x4c

    const/16 v4, 0x58

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_OPEN_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 221
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_SETTINGS_COMPOSE_TEXT"

    const/16 v2, 0x4d

    const/16 v3, 0x4d

    const/16 v4, 0x59

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_COMPOSE_TEXT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 222
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_SETTINGS_CYCLE_CALL_MODE"

    const/16 v2, 0x4e

    const/16 v3, 0x4e

    const/16 v4, 0x5a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_CYCLE_CALL_MODE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 223
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_SETTINGS_ENABLE_DND"

    const/16 v2, 0x4f

    const/16 v3, 0x4f

    const/16 v4, 0x5b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_ENABLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 224
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_SETTINGS_DISABLE_DND"

    const/16 v2, 0x50

    const/16 v3, 0x50

    const/16 v4, 0x5c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_DISABLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 225
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_INBOX_ADD_WIDGET"

    const/16 v2, 0x51

    const/16 v3, 0x51

    const/16 v4, 0x5d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_ADD_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 226
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_INBOX_REMOVE_WIDGET"

    const/16 v2, 0x52

    const/16 v3, 0x52

    const/16 v4, 0x5e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_REMOVE_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 227
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_INBOX_OPEN_INBOX"

    const/16 v2, 0x53

    const/16 v3, 0x53

    const/16 v4, 0x5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_OPEN_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 228
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_INBOX_NEXT_MESSAGE"

    const/16 v2, 0x54

    const/16 v3, 0x54

    const/16 v4, 0x60

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_NEXT_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 229
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_INBOX_PREV_MESSAGE"

    const/16 v2, 0x55

    const/16 v3, 0x55

    const/16 v4, 0x61

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_PREV_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 230
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_INBOX_OPEN_MESSAGE"

    const/16 v2, 0x56

    const/16 v3, 0x56

    const/16 v4, 0x62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_OPEN_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 231
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_LATENCY_TOGGLE_DND"

    const/16 v2, 0x57

    const/16 v3, 0x57

    const/16 v4, 0x63

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_LATENCY_TOGGLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 232
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_LATENCY_REFRESH_SETTINGS_WIDGET"

    const/16 v2, 0x58

    const/16 v3, 0x58

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_LATENCY_REFRESH_SETTINGS_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 233
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "WIDGET_LATENCY_REFRESH_INBOX_WIDGET"

    const/16 v2, 0x59

    const/16 v3, 0x59

    const/16 v4, 0x65

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_LATENCY_REFRESH_INBOX_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 234
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const-string v1, "SEARCH_LATENCY"

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    const/16 v4, 0x66

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SEARCH_LATENCY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 142
    const/16 v0, 0x5b

    new-array v0, v0, [Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP_UPGRADE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->START_APP_ACTIVE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->START_APP_COMPLETE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->BRING_APP_TO_FOREGROUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SEND_APP_TO_BACKGROUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_LABEL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_UNREAD:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_ALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_REFRESH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_DELETE_CONVERSATION:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_OPEN_CONVERSATION:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_PLAY_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_RETRIEVE_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_REPLY_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_REPLY_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_DELETE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_RECENTS_ALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_RECENTS_SUMMARY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->RECENTS_CLEAR:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->RECENTS_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->RECENTS_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_KEYPAD:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_ADD_CONTACT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_REFRESH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_CONTACTS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_DRILL_IN:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_DRILL_OUT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_DIAL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_EDIT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_GROUPS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_SETTINGS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SETTINGS_ACCOUNT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SETTINGS_CHANGE_FORWARDING_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_LOGIN:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_FIRST_STARTUP_PROVISIONING_FLOW:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_REFRESH_DEFAULT_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_REFRESH_ADDITIONAL_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_CONNECT_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_SEND_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_RETRIEVE_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_AUTOROUTED_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_AUTOROUTED_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_INITIATE_CALL_REQUEST:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_GOT_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_NO_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_AUTHENTICATION_FAILURE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_ABANDONED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_THROUGH_SUCCEEDED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED_TO_AUTH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_GET_ACCESS_NUMBER_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_SETUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_LOOKUP_SKIPPED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_LOOKUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_NOT_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_SKIPPED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_AUTHENTICATION_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITHOUT_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITH_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITH_SHADOW_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITHOUT_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITH_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITH_SHADOW_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXCEPTION_ON_DONE_GET_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_ADD_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_REMOVE_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_OPEN_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_COMPOSE_TEXT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_CYCLE_CALL_MODE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_ENABLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x50

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_DISABLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x51

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_ADD_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x52

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_REMOVE_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x53

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_OPEN_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x54

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_NEXT_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x55

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_PREV_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x56

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_OPEN_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x57

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_LATENCY_TOGGLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x58

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_LATENCY_REFRESH_SETTINGS_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x59

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_LATENCY_REFRESH_INBOX_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SEARCH_LATENCY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->$VALUES:[Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 434
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 444
    iput p4, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->value:I

    .line 445
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    .registers 2
    .parameter "value"

    .prologue
    .line 333
    packed-switch p0, :pswitch_data_148

    .line 425
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 334
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 335
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP_UPGRADE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 336
    :pswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->START_APP_ACTIVE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 337
    :pswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->START_APP_COMPLETE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 338
    :pswitch_11
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->BRING_APP_TO_FOREGROUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 339
    :pswitch_14
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SEND_APP_TO_BACKGROUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 340
    :pswitch_17
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_LABEL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 341
    :pswitch_1a
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_UNREAD:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 342
    :pswitch_1d
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_ALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 343
    :pswitch_20
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_REFRESH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 344
    :pswitch_23
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_DELETE_CONVERSATION:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 345
    :pswitch_26
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LABEL_OPEN_CONVERSATION:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 346
    :pswitch_29
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_PLAY_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 347
    :pswitch_2c
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_RETRIEVE_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 348
    :pswitch_2f
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_REPLY_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 349
    :pswitch_32
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_REPLY_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 350
    :pswitch_35
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_DELETE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 351
    :pswitch_38
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_RECENTS_ALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 352
    :pswitch_3b
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_RECENTS_SUMMARY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 353
    :pswitch_3e
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->RECENTS_CLEAR:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 354
    :pswitch_41
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->RECENTS_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 355
    :pswitch_44
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->RECENTS_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 356
    :pswitch_47
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_KEYPAD:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 357
    :pswitch_4a
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_ADD_CONTACT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 358
    :pswitch_4d
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 359
    :pswitch_50
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 360
    :pswitch_53
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->KEYPAD_REFRESH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 361
    :pswitch_56
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_CONTACTS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 362
    :pswitch_59
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_DRILL_IN:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 363
    :pswitch_5c
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_DRILL_OUT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 364
    :pswitch_5f
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_DIAL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 365
    :pswitch_62
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 366
    :pswitch_65
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_EDIT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 367
    :pswitch_68
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONTACTS_GROUPS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 368
    :pswitch_6b
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OPEN_SETTINGS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 369
    :pswitch_6e
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SETTINGS_ACCOUNT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 370
    :pswitch_71
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SETTINGS_CHANGE_FORWARDING_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 371
    :pswitch_74
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_LOGIN:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 372
    :pswitch_77
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_FIRST_STARTUP_PROVISIONING_FLOW:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 373
    :pswitch_7a
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_REFRESH_DEFAULT_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 374
    :pswitch_7d
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_REFRESH_ADDITIONAL_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 375
    :pswitch_80
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_CONNECT_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_4

    .line 376
    :pswitch_83
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_SEND_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 377
    :pswitch_87
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_RETRIEVE_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 378
    :pswitch_8b
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 379
    :pswitch_8f
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 380
    :pswitch_93
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_AUTOROUTED_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 381
    :pswitch_97
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXTERNAL_AUTOROUTED_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 382
    :pswitch_9b
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_INITIATE_CALL_REQUEST:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 383
    :pswitch_9f
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_GOT_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 384
    :pswitch_a3
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_NO_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 385
    :pswitch_a7
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_AUTHENTICATION_FAILURE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 386
    :pswitch_ab
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_ABANDONED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 387
    :pswitch_af
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_THROUGH_SUCCEEDED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 388
    :pswitch_b3
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 389
    :pswitch_b7
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_CALL_THROUGH_FAILED_TO_AUTH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 390
    :pswitch_bb
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->OBSOLETE_CALL_SETUP_GET_ACCESS_NUMBER_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 391
    :pswitch_bf
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_SETUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 392
    :pswitch_c3
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_LOOKUP_SKIPPED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 393
    :pswitch_c7
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_LOOKUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 394
    :pswitch_cb
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 395
    :pswitch_cf
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SHADOW_NUMBER_NOT_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 396
    :pswitch_d3
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_SKIPPED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 397
    :pswitch_d7
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_STARTED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 398
    :pswitch_db
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_FOUND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 399
    :pswitch_df
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 400
    :pswitch_e3
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->ACCESS_NUMBER_LOOKUP_AUTHENTICATION_FAILED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 401
    :pswitch_e7
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITHOUT_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 402
    :pswitch_eb
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITH_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 403
    :pswitch_ef
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_ABANDONED_WITH_SHADOW_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 404
    :pswitch_f3
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITHOUT_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 405
    :pswitch_f7
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITH_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 406
    :pswitch_fb
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CALL_COMPLETED_WITH_SHADOW_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 407
    :pswitch_ff
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->EXCEPTION_ON_DONE_GET_ACCESS_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 408
    :pswitch_103
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_ADD_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 409
    :pswitch_107
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_REMOVE_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 410
    :pswitch_10b
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_OPEN_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 411
    :pswitch_10f
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_COMPOSE_TEXT:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 412
    :pswitch_113
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_CYCLE_CALL_MODE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 413
    :pswitch_117
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_ENABLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 414
    :pswitch_11b
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_SETTINGS_DISABLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 415
    :pswitch_11f
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_ADD_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 416
    :pswitch_123
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_REMOVE_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 417
    :pswitch_127
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_OPEN_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 418
    :pswitch_12b
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_NEXT_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 419
    :pswitch_12f
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_PREV_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 420
    :pswitch_133
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_INBOX_OPEN_MESSAGE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 421
    :pswitch_137
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_LATENCY_TOGGLE_DND:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 422
    :pswitch_13b
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_LATENCY_REFRESH_SETTINGS_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 423
    :pswitch_13f
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->WIDGET_LATENCY_REFRESH_INBOX_WIDGET:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 424
    :pswitch_143
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SEARCH_LATENCY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto/16 :goto_4

    .line 333
    nop

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_3
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_44
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_68
        :pswitch_6b
        :pswitch_6e
        :pswitch_71
        :pswitch_74
        :pswitch_77
        :pswitch_7a
        :pswitch_7d
        :pswitch_80
        :pswitch_83
        :pswitch_87
        :pswitch_8b
        :pswitch_8f
        :pswitch_93
        :pswitch_97
        :pswitch_9b
        :pswitch_9f
        :pswitch_a3
        :pswitch_a7
        :pswitch_ab
        :pswitch_af
        :pswitch_b3
        :pswitch_b7
        :pswitch_bb
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_bf
        :pswitch_c3
        :pswitch_c7
        :pswitch_cb
        :pswitch_cf
        :pswitch_d3
        :pswitch_d7
        :pswitch_db
        :pswitch_df
        :pswitch_e3
        :pswitch_e7
        :pswitch_eb
        :pswitch_ef
        :pswitch_f3
        :pswitch_f7
        :pswitch_fb
        :pswitch_ff
        :pswitch_103
        :pswitch_107
        :pswitch_10b
        :pswitch_10f
        :pswitch_113
        :pswitch_117
        :pswitch_11b
        :pswitch_11f
        :pswitch_123
        :pswitch_127
        :pswitch_12b
        :pswitch_12f
        :pswitch_133
        :pswitch_137
        :pswitch_13b
        :pswitch_13f
        :pswitch_143
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    .registers 2
    .parameter "name"

    .prologue
    .line 142
    const-class v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    .registers 1

    .prologue
    .line 142
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->$VALUES:[Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 330
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->value:I

    return v0
.end method
