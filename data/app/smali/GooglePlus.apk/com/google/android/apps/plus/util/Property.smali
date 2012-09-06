.class public final enum Lcom/google/android/apps/plus/util/Property;
.super Ljava/lang/Enum;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/util/Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/util/Property;

.field public static final enum ACTIVE_HANGOUT_MODE:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ADD_PHONE_ON_PROFILE:Lcom/google/android/apps/plus/util/Property;

.field public static final enum AUTH_EMAIL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum AUTH_PASSWORD:Lcom/google/android/apps/plus/util/Property;

.field public static final enum AUTH_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum CONTACTS_ACTION_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum CONTACTS_DATA_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_ADVANCED_HANGOUTS:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_DOGFOOD_FEATURES:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_FULL_BLEED_ONEUP:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_HANGOUT_FILMSTRIP_STATUS:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_HANGOUT_STAGE_STATUS:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_HANGOUT_SWITCH:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_HOST_ACTIVITY:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_INSTANT_SHARE:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_INSTANT_SHARE_VIDEO:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_LOCAL_PAGE:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_LOCAL_SWITCHER:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_PLUS_PAGES:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ENABLE_SHAKE_GLOBAL_ACTION:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ES_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum HANGOUT_CAMERA_MIRRORED:Lcom/google/android/apps/plus/util/Property;

.field public static final enum HANGOUT_CAMERA_ORIENTATION:Lcom/google/android/apps/plus/util/Property;

.field public static final enum HANGOUT_STRESS_MODE:Lcom/google/android/apps/plus/util/Property;

.field public static final enum LOCATION_DEBUGGING:Lcom/google/android/apps/plus/util/Property;

.field public static final enum NATIVE_HANGOUT_LOG:Lcom/google/android/apps/plus/util/Property;

.field public static final enum NATIVE_WRAPPER_HANGOUT_LOG_LEVEL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum PLUS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

.field public static final enum PLUS_FRONTEND_PATH:Lcom/google/android/apps/plus/util/Property;

.field public static final enum PLUS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum PLUS_TRACE:Lcom/google/android/apps/plus/util/Property;

.field public static final enum POS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum POS_FRONTEND_PATH:Lcom/google/android/apps/plus/util/Property;

.field public static final enum POS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum SOCIAL_ADS_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum TRACING_PATH:Lcom/google/android/apps/plus/util/Property;

.field public static final enum TRACING_TOKEN:Lcom/google/android/apps/plus/util/Property;

.field public static final enum WARM_WELCOME_ON_LOGIN:Lcom/google/android/apps/plus/util/Property;

.field private static sProperties:Ljava/util/Properties;


# instance fields
.field private final mCanOverride:Z

.field private final mDefaultValue:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_DOGFOOD_FEATURES"

    const-string v3, "debug.plus.dogfood"

    const-string v4, "false"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_DOGFOOD_FEATURES:Lcom/google/android/apps/plus/util/Property;

    .line 45
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ES_URL"

    const-string v3, "debug.plus.es.url"

    const-string v4, "https://m.google.com/app/plus/data?in=4"

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ES_URL:Lcom/google/android/apps/plus/util/Property;

    .line 56
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "CONTACTS_DATA_URL"

    const-string v3, "debug.plus.contacts.data_url"

    const-string v4, "https://m.google.com/app/contacts/data"

    invoke-direct {v0, v1, v7, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->CONTACTS_DATA_URL:Lcom/google/android/apps/plus/util/Property;

    .line 58
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "CONTACTS_ACTION_URL"

    const-string v3, "debug.plus.contacts.action_url"

    const-string v4, "https://m.google.com/app/contacts/action"

    invoke-direct {v0, v1, v8, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->CONTACTS_ACTION_URL:Lcom/google/android/apps/plus/util/Property;

    .line 68
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "AUTH_URL"

    const-string v3, "debug.plus.auth.url"

    invoke-direct {v0, v1, v9, v3}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->AUTH_URL:Lcom/google/android/apps/plus/util/Property;

    .line 69
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "AUTH_EMAIL"

    const/4 v3, 0x5

    const-string v4, "debug.plus.auth.email"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->AUTH_EMAIL:Lcom/google/android/apps/plus/util/Property;

    .line 70
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "AUTH_PASSWORD"

    const/4 v3, 0x6

    const-string v4, "debug.plus.auth.password"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->AUTH_PASSWORD:Lcom/google/android/apps/plus/util/Property;

    .line 74
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "SOCIAL_ADS_URL"

    const/4 v3, 0x7

    const-string v4, "debug.plus.safe.url"

    const-string v5, "https://googleads.g.doubleclick.net/pagead/drt/m"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->SOCIAL_ADS_URL:Lcom/google/android/apps/plus/util/Property;

    .line 77
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "NATIVE_HANGOUT_LOG"

    const/16 v3, 0x8

    const-string v4, "debug.plus.hangout.native"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->NATIVE_HANGOUT_LOG:Lcom/google/android/apps/plus/util/Property;

    .line 80
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "NATIVE_WRAPPER_HANGOUT_LOG_LEVEL"

    const/16 v3, 0x9

    const-string v4, "debug.plus.hangout.tag.wrapper"

    const-string v5, "WARNING"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->NATIVE_WRAPPER_HANGOUT_LOG_LEVEL:Lcom/google/android/apps/plus/util/Property;

    .line 83
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "HANGOUT_CAMERA_ORIENTATION"

    const/16 v3, 0xa

    const-string v4, "debug.plus.camera.orientation"

    const-string v5, ""

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->HANGOUT_CAMERA_ORIENTATION:Lcom/google/android/apps/plus/util/Property;

    .line 86
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "HANGOUT_CAMERA_MIRRORED"

    const/16 v3, 0xb

    const-string v4, "debug.plus.camera.mirrored"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->HANGOUT_CAMERA_MIRRORED:Lcom/google/android/apps/plus/util/Property;

    .line 88
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "HANGOUT_STRESS_MODE"

    const/16 v3, 0xc

    const-string v4, "debug.plus.hangout.stress"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->HANGOUT_STRESS_MODE:Lcom/google/android/apps/plus/util/Property;

    .line 91
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_HANGOUT_SWITCH"

    const/16 v3, 0xd

    const-string v4, "debug.plus.hangout.switch"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_HANGOUT_SWITCH:Lcom/google/android/apps/plus/util/Property;

    .line 94
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_ADVANCED_HANGOUTS"

    const/16 v3, 0xe

    const-string v4, "debug.plus.hangout.enable_adv"

    const-string v5, "TRUE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_ADVANCED_HANGOUTS:Lcom/google/android/apps/plus/util/Property;

    .line 97
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_HANGOUT_STAGE_STATUS"

    const/16 v3, 0xf

    const-string v4, "debug.plus.hangout.stage_icon"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_HANGOUT_STAGE_STATUS:Lcom/google/android/apps/plus/util/Property;

    .line 100
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_HANGOUT_FILMSTRIP_STATUS"

    const/16 v3, 0x10

    const-string v4, "debug.plus.hangout.strip_icon"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_HANGOUT_FILMSTRIP_STATUS:Lcom/google/android/apps/plus/util/Property;

    .line 104
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ACTIVE_HANGOUT_MODE"

    const/16 v3, 0x11

    const-string v4, "debug.plus.hangout.active_mode"

    const-string v5, "DISABLE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ACTIVE_HANGOUT_MODE:Lcom/google/android/apps/plus/util/Property;

    .line 107
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "PLUS_TRACE"

    const/16 v3, 0x12

    const-string v4, "debug.plus.trace"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->PLUS_TRACE:Lcom/google/android/apps/plus/util/Property;

    .line 111
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "PLUS_CLIENTID"

    const/16 v3, 0x13

    const-string v4, "debug.plus.clientid"

    const-string v5, "862067606707.apps.googleusercontent.com"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

    .line 114
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "PLUS_FRONTEND_PATH"

    const/16 v3, 0x14

    const-string v4, "debug.plus.frontend.path"

    const-string v5, "/plusi/v2/ozInternal/"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->PLUS_FRONTEND_PATH:Lcom/google/android/apps/plus/util/Property;

    .line 121
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "PLUS_FRONTEND_URL"

    const/16 v3, 0x15

    const-string v4, "debug.plus.frontend.url"

    const-string v5, "www.googleapis.com"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->PLUS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

    .line 124
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "PLUS_BACKEND_URL"

    const/16 v3, 0x16

    const-string v4, "debug.plus.backend.url"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->PLUS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    .line 128
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "POS_FRONTEND_URL"

    const/16 v3, 0x17

    const-string v4, "debug.pos.frontend.url"

    const-string v5, "www.googleapis.com"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->POS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

    .line 129
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "POS_FRONTEND_PATH"

    const/16 v3, 0x18

    const-string v4, "debug.pos.frontend.path"

    const-string v5, "/pos/v1/"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->POS_FRONTEND_PATH:Lcom/google/android/apps/plus/util/Property;

    .line 130
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "POS_BACKEND_URL"

    const/16 v3, 0x19

    const-string v4, "debug.pos.backend.url"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->POS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    .line 133
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "WARM_WELCOME_ON_LOGIN"

    const/16 v3, 0x1a

    const-string v4, "debug.plus.warm.welcome"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->WARM_WELCOME_ON_LOGIN:Lcom/google/android/apps/plus/util/Property;

    .line 136
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "LOCATION_DEBUGGING"

    const/16 v3, 0x1b

    const-string v4, "debug.plus.location.toast"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->LOCATION_DEBUGGING:Lcom/google/android/apps/plus/util/Property;

    .line 140
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ADD_PHONE_ON_PROFILE"

    const/16 v3, 0x1c

    const-string v4, "debug.plus.add.phone.number"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ADD_PHONE_ON_PROFILE:Lcom/google/android/apps/plus/util/Property;

    .line 143
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_PLUS_PAGES"

    const/16 v3, 0x1d

    const-string v4, "debug.plus.enable_plus_pages"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_PLUS_PAGES:Lcom/google/android/apps/plus/util/Property;

    .line 147
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "TRACING_TOKEN"

    const/16 v3, 0x1e

    const-string v4, "debug.plus.tracing_token"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->TRACING_TOKEN:Lcom/google/android/apps/plus/util/Property;

    .line 150
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "TRACING_PATH"

    const/16 v3, 0x1f

    const-string v4, "debug.plus.tracing_path"

    const-string v5, ".*"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->TRACING_PATH:Lcom/google/android/apps/plus/util/Property;

    .line 153
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_SHAKE_GLOBAL_ACTION"

    const/16 v3, 0x20

    const-string v4, "debug.plus.enable_shake_action"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_SHAKE_GLOBAL_ACTION:Lcom/google/android/apps/plus/util/Property;

    .line 156
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_LOCAL_SWITCHER"

    const/16 v3, 0x21

    const-string v4, "debug.plus.enable_local"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_LOCAL_SWITCHER:Lcom/google/android/apps/plus/util/Property;

    .line 159
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_LOCAL_PAGE"

    const/16 v3, 0x22

    const-string v4, "debug.plus.enable_local_page"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_LOCAL_PAGE:Lcom/google/android/apps/plus/util/Property;

    .line 162
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_HOST_ACTIVITY"

    const/16 v3, 0x23

    const-string v4, "debug.plus.enable_host_activity"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_HOST_ACTIVITY:Lcom/google/android/apps/plus/util/Property;

    .line 165
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_INSTANT_SHARE"

    const/16 v3, 0x24

    const-string v4, "debug.plus.enable_instant_share"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_INSTANT_SHARE:Lcom/google/android/apps/plus/util/Property;

    .line 168
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_INSTANT_SHARE_VIDEO"

    const/16 v3, 0x25

    const-string v4, "debug.plus.enable_instant_share_video"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_INSTANT_SHARE_VIDEO:Lcom/google/android/apps/plus/util/Property;

    .line 171
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ENABLE_FULL_BLEED_ONEUP"

    const/16 v3, 0x26

    const-string v4, "debug.plus.enable_full_bleed"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_FULL_BLEED_ONEUP:Lcom/google/android/apps/plus/util/Property;

    .line 20
    const/16 v0, 0x27

    new-array v0, v0, [Lcom/google/android/apps/plus/util/Property;

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->ENABLE_DOGFOOD_FEATURES:Lcom/google/android/apps/plus/util/Property;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->ES_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->CONTACTS_DATA_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->CONTACTS_ACTION_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->AUTH_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->AUTH_EMAIL:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->AUTH_PASSWORD:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->SOCIAL_ADS_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->NATIVE_HANGOUT_LOG:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->NATIVE_WRAPPER_HANGOUT_LOG_LEVEL:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->HANGOUT_CAMERA_ORIENTATION:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->HANGOUT_CAMERA_MIRRORED:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->HANGOUT_STRESS_MODE:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_HANGOUT_SWITCH:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_ADVANCED_HANGOUTS:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_HANGOUT_STAGE_STATUS:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_HANGOUT_FILMSTRIP_STATUS:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ACTIVE_HANGOUT_MODE:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->PLUS_TRACE:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->PLUS_FRONTEND_PATH:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->PLUS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->PLUS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->POS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->POS_FRONTEND_PATH:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->POS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->WARM_WELCOME_ON_LOGIN:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->LOCATION_DEBUGGING:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ADD_PHONE_ON_PROFILE:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_PLUS_PAGES:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->TRACING_TOKEN:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->TRACING_PATH:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_SHAKE_GLOBAL_ACTION:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_LOCAL_SWITCHER:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_LOCAL_PAGE:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_HOST_ACTIVITY:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_INSTANT_SHARE:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_INSTANT_SHARE_VIDEO:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_FULL_BLEED_ONEUP:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->$VALUES:[Lcom/google/android/apps/plus/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 210
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter "key"
    .parameter "defaultValue"
    .parameter "canOverride"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 213
    iput-object p3, p0, Lcom/google/android/apps/plus/util/Property;->mKey:Ljava/lang/String;

    .line 214
    invoke-static {p3, p4}, Lcom/google/android/apps/plus/util/Property;->getDefaultProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/util/Property;->mDefaultValue:Ljava/lang/String;

    .line 215
    iput-boolean p5, p0, Lcom/google/android/apps/plus/util/Property;->mCanOverride:Z

    .line 216
    return-void
.end method

.method private static getDefaultProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 180
    sget-object v2, Lcom/google/android/apps/plus/util/Property;->sProperties:Ljava/util/Properties;

    if-nez v2, :cond_1e

    .line 181
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/util/Property;->sProperties:Ljava/util/Properties;

    .line 182
    const-class v2, Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com/google/android/apps/plusone/debug.prop"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 184
    .local v1, stream:Ljava/io/InputStream;
    if-eqz v1, :cond_1e

    .line 186
    :try_start_19
    sget-object v2, Lcom/google/android/apps/plus/util/Property;->sProperties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_2d

    .line 193
    .end local v1           #stream:Ljava/io/InputStream;
    :cond_1e
    :goto_1e
    sget-object v2, Lcom/google/android/apps/plus/util/Property;->sProperties:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 194
    sget-object v2, Lcom/google/android/apps/plus/util/Property;->sProperties:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    .end local p1
    :cond_2c
    return-object p1

    .line 187
    .restart local v1       #stream:Ljava/io/InputStream;
    .restart local p1
    :catch_2d
    move-exception v0

    .line 188
    .local v0, e:Ljava/io/IOException;
    const-string v2, "EsProperty"

    const-string v3, "Cannot load debug.properties"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/util/Property;
    .registers 2
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/google/android/apps/plus/util/Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/util/Property;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/util/Property;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->$VALUES:[Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/util/Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/util/Property;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .registers 3

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/Property;->mCanOverride:Z

    if-eqz v0, :cond_d

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/plus/util/Property;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/util/Property;->mDefaultValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/plus/util/Property;->mDefaultValue:Ljava/lang/String;

    goto :goto_c
.end method

.method public getBoolean()Z
    .registers 3

    .prologue
    .line 227
    const-string v0, "TRUE"

    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
