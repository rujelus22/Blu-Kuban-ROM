.class public Lcom/sec/android/app/sns/type/SnsIntentAction;
.super Ljava/lang/Object;
.source "SnsIntentAction.java"


# static fields
.field public static final RETRY_LOGIN_ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_FACEBOOK_BY_APPS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_MYSPACE_BY_APPS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_TWITTER_BY_APPS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_BEBO_BY_APPS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_FRIENDSTER_BY_APPS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_SKYROCK_BY_APPS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_KAIXIN_BY_APPS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_RENREN_BY_APPS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_LINKEDIN_BY_APPS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_VZ_BY_APPS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_PLURK_BY_APPS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_LASTFM_BY_APPS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_ORKUT_BY_APPS"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_MIXI_BY_APPS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_ME2DAY_BY_APPS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.sec.android.app.sns.action.RETRY_LOGIN_QZONE_BY_APPS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sns/type/SnsIntentAction;->RETRY_LOGIN_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method