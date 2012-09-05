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

.field public static final enum AUTH_EMAIL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum AUTH_PASSWORD:Lcom/google/android/apps/plus/util/Property;

.field public static final enum AUTH_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum CONTACTS_ACTION_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum CONTACTS_DATA_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum ES_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum HANGOUT_CAMERA_MIRRORED:Lcom/google/android/apps/plus/util/Property;

.field public static final enum HANGOUT_CAMERA_ORIENTATION:Lcom/google/android/apps/plus/util/Property;

.field public static final enum NATIVE_HANGOUT_LOG:Lcom/google/android/apps/plus/util/Property;

.field public static final enum PLUS_API_KEY:Lcom/google/android/apps/plus/util/Property;

.field public static final enum PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

.field public static final enum POS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum POS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

.field public static final enum SOCIAL_ADS_URL:Lcom/google/android/apps/plus/util/Property;


# instance fields
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

    .line 25
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "ES_URL"

    const-string v3, "debug.plus.es.url"

    const-string v4, "https://m.google.com/app/plus/data?in=4"

    const-string v5, "https://m.google.com/app/plus/data?in=4&sky=test"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->ES_URL:Lcom/google/android/apps/plus/util/Property;

    .line 35
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "CONTACTS_DATA_URL"

    const-string v3, "debug.plus.contacts.data_url"

    const-string v4, "https://m.google.com/app/contacts/data"

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->CONTACTS_DATA_URL:Lcom/google/android/apps/plus/util/Property;

    .line 36
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "CONTACTS_ACTION_URL"

    const-string v3, "debug.plus.contacts.action_url"

    const-string v4, "https://m.google.com/app/contacts/action"

    invoke-direct {v0, v1, v7, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->CONTACTS_ACTION_URL:Lcom/google/android/apps/plus/util/Property;

    .line 44
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "AUTH_URL"

    const-string v3, "debug.plus.auth.url"

    invoke-direct {v0, v1, v8, v3}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->AUTH_URL:Lcom/google/android/apps/plus/util/Property;

    .line 45
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "AUTH_EMAIL"

    const-string v3, "debug.plus.auth.email"

    invoke-direct {v0, v1, v9, v3}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->AUTH_EMAIL:Lcom/google/android/apps/plus/util/Property;

    .line 46
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "AUTH_PASSWORD"

    const/4 v3, 0x5

    const-string v4, "debug.plus.auth.password"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->AUTH_PASSWORD:Lcom/google/android/apps/plus/util/Property;

    .line 50
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "SOCIAL_ADS_URL"

    const/4 v3, 0x6

    const-string v4, "debug.plus.safe.url"

    const-string v5, "https://googleads.g.doubleclick.net/pagead/drt/m"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->SOCIAL_ADS_URL:Lcom/google/android/apps/plus/util/Property;

    .line 52
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "NATIVE_HANGOUT_LOG"

    const/4 v3, 0x7

    const-string v4, "debug.plus.hangout.native"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->NATIVE_HANGOUT_LOG:Lcom/google/android/apps/plus/util/Property;

    .line 54
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "HANGOUT_CAMERA_ORIENTATION"

    const/16 v3, 0x8

    const-string v4, "debug.plus.camera.orientation"

    const-string v5, ""

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->HANGOUT_CAMERA_ORIENTATION:Lcom/google/android/apps/plus/util/Property;

    .line 57
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "HANGOUT_CAMERA_MIRRORED"

    const/16 v3, 0x9

    const-string v4, "debug.plus.camera.mirrored"

    const-string v5, "FALSE"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->HANGOUT_CAMERA_MIRRORED:Lcom/google/android/apps/plus/util/Property;

    .line 61
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "PLUS_API_KEY"

    const/16 v3, 0xa

    const-string v4, "debug.plus.api.key"

    const-string v5, "AIzaSyAYfoSs86LzFMXNWJhyeGtZp0ijdZb_uGU"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->PLUS_API_KEY:Lcom/google/android/apps/plus/util/Property;

    .line 62
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "PLUS_CLIENTID"

    const/16 v3, 0xb

    const-string v4, "debug.plus.clientid"

    const-string v5, "862067606707.apps.googleusercontent.com"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

    .line 66
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "POS_FRONTEND_URL"

    const/16 v3, 0xc

    const-string v4, "debug.pos.frontend.url"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->POS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

    .line 67
    new-instance v0, Lcom/google/android/apps/plus/util/Property;

    const-string v1, "POS_BACKEND_URL"

    const/16 v3, 0xd

    const-string v4, "debug.pos.backend.url"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->POS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    .line 14
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/android/apps/plus/util/Property;

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->ES_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->CONTACTS_DATA_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->CONTACTS_ACTION_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->AUTH_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->AUTH_EMAIL:Lcom/google/android/apps/plus/util/Property;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->AUTH_PASSWORD:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->SOCIAL_ADS_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->NATIVE_HANGOUT_LOG:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->HANGOUT_CAMERA_ORIENTATION:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->HANGOUT_CAMERA_MIRRORED:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->PLUS_API_KEY:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->POS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->POS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/util/Property;->$VALUES:[Lcom/google/android/apps/plus/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
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
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/util/Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/google/android/apps/plus/util/Property;->mKey:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/google/android/apps/plus/util/Property;->mDefaultValue:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter "key"
    .parameter "defaultReleaseValue"
    .parameter "defaultDogfoodValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/google/android/apps/plus/util/Property;->mKey:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/google/android/apps/plus/util/Property;->mDefaultValue:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/util/Property;
    .registers 2
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/google/android/apps/plus/util/Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/util/Property;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/util/Property;
    .registers 1

    .prologue
    .line 14
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
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/util/Property;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/util/Property;->mDefaultValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
