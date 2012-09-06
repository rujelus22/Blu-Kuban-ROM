.class public Lcom/twitter/android/platform/C2DMService;
.super Landroid/app/IntentService;


# static fields
.field public static a:I

.field public static b:I

.field static final c:Ljava/util/HashMap;

.field private static final d:I

.field private static final e:Z

.field private static final f:Z

.field private static final g:Ljava/util/HashMap;

.field private static h:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private i:Lcom/twitter/android/network/d;

.field private j:Ljava/lang/String;

.field private k:Lcom/twitter/android/network/o;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x20

    sput v2, Lcom/twitter/android/platform/C2DMService;->a:I

    const/16 v2, 0x40

    sput v2, Lcom/twitter/android/platform/C2DMService;->b:I

    sget v2, Lcom/twitter/android/platform/C2DMService;->a:I

    or-int/lit8 v2, v2, 0x5

    or-int/lit16 v2, v2, 0x80

    or-int/lit8 v2, v2, 0x10

    sput v2, Lcom/twitter/android/platform/C2DMService;->d:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    sput-boolean v0, Lcom/twitter/android/platform/C2DMService;->e:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_27

    move v0, v1

    :cond_27
    sput-boolean v0, Lcom/twitter/android/platform/C2DMService;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/platform/C2DMService;->g:Ljava/util/HashMap;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    const-string v2, "com.google.android.c2dm.intent.RETRY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    const-string v2, "com.twitter.android.action.c2dm.ENABLE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->g:Ljava/util/HashMap;

    const-string v2, "tweet"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->g:Ljava/util/HashMap;

    const-string v1, "mention"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->g:Ljava/util/HashMap;

    const-string v1, "direct_message"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->g:Ljava/util/HashMap;

    const-string v1, "favorited"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->g:Ljava/util/HashMap;

    const-string v1, "retweeted"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->g:Ljava/util/HashMap;

    const-string v1, "followed"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "C2DMService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/twitter/android/network/j;Z)Lcom/twitter/android/network/c;
    .registers 9

    new-instance v0, Lcom/twitter/android/network/i;

    iget-object v1, p0, Lcom/twitter/android/platform/C2DMService;->i:Lcom/twitter/android/network/d;

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/twitter/android/network/a;

    invoke-direct {v3, p2}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)V

    if-eqz p3, :cond_1e

    iget-object v1, p0, Lcom/twitter/android/platform/C2DMService;->k:Lcom/twitter/android/network/o;

    invoke-virtual {v1, v0}, Lcom/twitter/android/network/o;->b(Lcom/twitter/android/network/c;)V

    :goto_19
    invoke-virtual {v0}, Lcom/twitter/android/network/c;->a()Lcom/twitter/android/network/c;

    move-result-object v0

    return-object v0

    :cond_1e
    iget-object v1, p0, Lcom/twitter/android/platform/C2DMService;->k:Lcom/twitter/android/network/o;

    invoke-virtual {v1, v0}, Lcom/twitter/android/network/o;->a(Lcom/twitter/android/network/c;)V

    goto :goto_19
.end method

.method private a()V
    .registers 4

    const-wide/16 v0, 0x4e20

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/platform/C2DMService;->a(JI)V

    return-void
.end method

.method private a(JI)V
    .registers 6

    const-string v0, "c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/platform/C2DMService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "backoff"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "backoff_ceil"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Landroid/accounts/Account;Lcom/twitter/android/network/j;Ljava/lang/String;IZ)V
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c7

    iget-object v2, p0, Lcom/twitter/android/platform/C2DMService;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/platform/C2DMService;->k:Lcom/twitter/android/network/o;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "account"

    aput-object v5, v4, v0

    const-string v5, "push_destinations"

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "udid"

    invoke-static {v3, v4, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "enabled_for"

    invoke-static {v3, v2, p4}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/twitter/android/platform/C2DMService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3c

    const-string v4, "lang"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    if-eqz p3, :cond_43

    const-string v2, "token"

    invoke-static {v3, v2, p3}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, p5}, Lcom/twitter/android/platform/C2DMService;->a(Ljava/lang/String;Lcom/twitter/android/network/j;Z)Lcom/twitter/android/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/network/c;->b()Z

    move-result v3

    if-nez v3, :cond_57

    iget v2, v2, Lcom/twitter/android/network/c;->b:I

    const/16 v3, 0x130

    if-ne v2, v3, :cond_58

    :cond_57
    move v0, v1

    :cond_58
    if-eqz v0, :cond_ac

    sget-object v2, Lcom/twitter/android/provider/NotificationSetting;->a:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v2, p4}, Lcom/twitter/android/provider/NotificationSetting;->e(I)I

    move-result v2

    or-int/lit8 v2, v2, 0x0

    sget-object v3, Lcom/twitter/android/provider/NotificationSetting;->c:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v3, p4}, Lcom/twitter/android/provider/NotificationSetting;->e(I)I

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/twitter/android/provider/NotificationSetting;->b:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v3, p4}, Lcom/twitter/android/provider/NotificationSetting;->e(I)I

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/twitter/android/provider/NotificationSetting;->d:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v3, p4}, Lcom/twitter/android/provider/NotificationSetting;->e(I)I

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/twitter/android/provider/NotificationSetting;->e:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v3, p4}, Lcom/twitter/android/provider/NotificationSetting;->e(I)I

    move-result v3

    sget-object v4, Lcom/twitter/android/provider/NotificationSetting;->f:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v4, p4}, Lcom/twitter/android/provider/NotificationSetting;->e(I)I

    move-result v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "notif_mention"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "notif_message"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "notif_tweet"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v2

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v1}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;Landroid/content/ContentValues;Z)I

    :cond_ac
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;J)V

    if-nez p5, :cond_c7

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.twitter.android.c2dm.push_result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "error_code"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.twitter.android.permission.RESTRICTED"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/platform/C2DMService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_c7
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 8

    const-wide/16 v4, 0x0

    new-instance v0, Lcom/twitter/android/client/a;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "c2dm"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "last_refresh."

    invoke-virtual {v0, v1, v4, v5}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_22

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2a

    :cond_22
    invoke-static {p0, p1}, Lcom/twitter/android/platform/C2DMService;->c(Landroid/content/Context;Landroid/accounts/Account;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;IZ)V

    :cond_2a
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;IZ)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v3, "com.twitter.android.auth.login"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_1b
    if-ge v0, v4, :cond_a3

    aget-object v5, v3, v0

    const-string v6, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v5, v6}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_58

    const-string v6, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v5, v6}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    move v0, v1

    :goto_30
    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    :goto_3a
    if-eq v0, v1, :cond_7d

    if-eqz v0, :cond_5d

    new-instance v0, Lcom/twitter/android/client/a;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v3, "c2dm"

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v0

    const-string v1, "reg_enabled_for."

    invoke-virtual {v0, v1, p2}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;I)Lcom/twitter/android/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->c()Z

    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->c(Landroid/content/Context;)V

    goto :goto_8

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_5b
    move v1, v2

    goto :goto_3a

    :cond_5d
    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_8

    :cond_7d
    if-eqz v0, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/platform/C2DMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.action.c2dm.ENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enabled_for"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "polling"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_8

    :cond_a3
    move v0, v2

    goto :goto_30
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;J)V
    .registers 8

    new-instance v0, Lcom/twitter/android/client/a;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "c2dm"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v0

    const-string v1, "last_refresh."

    invoke-virtual {v0, v1, p2, p3}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;J)Lcom/twitter/android/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->c()Z

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-class v1, Lcom/twitter/android/platform/C2DMService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/twitter/android/platform/C2DMService;->h:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_18

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "C2DMService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/platform/C2DMService;->h:Landroid/os/PowerManager$WakeLock;

    :cond_18
    sget-object v0, Lcom/twitter/android/platform/C2DMService;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-class v0, Lcom/twitter/android/platform/C2DMService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/platform/C2DMService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_16

    const-string v1, "reg_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_16
    const-string v1, "reg_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_12
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->f:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reg_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    invoke-static {p0, p1}, Lcom/twitter/android/platform/C2DMService;->c(Landroid/content/Context;Landroid/accounts/Account;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;IZ)V

    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/accounts/Account;)I
    .registers 12

    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v6, 0x55

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/provider/d;->a:Landroid/net/Uri;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "notif_mention"

    aput-object v4, v2, v8

    const-string v4, "notif_message"

    aput-object v4, v2, v7

    const-string v4, "notif_tweet"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_88

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_83

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_39
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_81

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_43
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7e

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move v6, v0

    move v0, v2

    :goto_4f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_52
    sget-object v2, Lcom/twitter/android/provider/NotificationSetting;->a:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v2, v6}, Lcom/twitter/android/provider/NotificationSetting;->d(I)I

    move-result v2

    or-int/lit8 v2, v2, 0x0

    sget-object v3, Lcom/twitter/android/provider/NotificationSetting;->c:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v3, v6}, Lcom/twitter/android/provider/NotificationSetting;->d(I)I

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/twitter/android/provider/NotificationSetting;->b:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v3, v6}, Lcom/twitter/android/provider/NotificationSetting;->d(I)I

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/twitter/android/provider/NotificationSetting;->d:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v3, v6}, Lcom/twitter/android/provider/NotificationSetting;->d(I)I

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/twitter/android/provider/NotificationSetting;->e:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v3, v1}, Lcom/twitter/android/provider/NotificationSetting;->d(I)I

    move-result v1

    or-int/2addr v1, v2

    sget-object v2, Lcom/twitter/android/provider/NotificationSetting;->f:Lcom/twitter/android/provider/NotificationSetting;

    invoke-virtual {v2, v0}, Lcom/twitter/android/provider/NotificationSetting;->d(I)I

    move-result v0

    or-int/2addr v0, v1

    return v0

    :cond_7e
    move v6, v0

    move v0, v8

    goto :goto_4f

    :cond_81
    move v1, v7

    goto :goto_43

    :cond_83
    move v0, v6

    goto :goto_39

    :cond_85
    move v0, v8

    move v1, v7

    goto :goto_4f

    :cond_88
    move v0, v8

    move v1, v7

    goto :goto_52
.end method

.method private static c(Landroid/content/Context;)V
    .registers 5

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sender"

    const-string v2, "twittermobileclients@gmail.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_7
.end method


# virtual methods
.method public onCreate()V
    .registers 12

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-virtual {p0}, Lcom/twitter/android/platform/C2DMService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/C2DMService;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/C2DMService;->i:Lcom/twitter/android/network/d;

    invoke-static {p0}, Lcom/twitter/android/network/o;->a(Landroid/content/Context;)Lcom/twitter/android/network/o;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/C2DMService;->k:Lcom/twitter/android/network/o;

    const-string v0, "c2dm"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/platform/C2DMService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "ver"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_aa

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9c

    if-nez v0, :cond_9c

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v3, "com.twitter.android.auth.login"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_9c

    array-length v4, v3

    move v0, v1

    :goto_44
    if-ge v0, v4, :cond_9c

    aget-object v5, v3, v0

    new-instance v6, Lcom/twitter/android/client/a;

    iget-object v7, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v8, "c2dm"

    invoke-direct {v6, p0, v7, v8, v1}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "last_refresh."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_76

    const-string v8, "last_refresh."

    const-wide/16 v9, 0x0

    invoke-interface {v2, v7, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v6, v8, v9, v10}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;J)Lcom/twitter/android/client/a;

    :cond_76
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "reg_enabled_for."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_96

    const-string v7, "reg_enabled_for."

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v6, v7, v5}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;I)Lcom/twitter/android/client/a;

    :cond_96
    invoke-virtual {v6}, Lcom/twitter/android/client/a;->c()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_9c
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ver"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_aa
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 18

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_12
    packed-switch v1, :pswitch_data_3b2

    :cond_15
    :goto_15
    return-void

    :cond_16
    const/4 v1, 0x0

    goto :goto_12

    :pswitch_18
    packed-switch v1, :pswitch_data_3be

    :cond_1b
    :goto_1b
    sget-object v1, Lcom/twitter/android/platform/C2DMService;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_15

    :pswitch_21
    :try_start_21
    const-string v1, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unregistered"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "registration_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_a8

    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->e:Z

    if-eqz v1, :cond_53

    const-string v1, "C2DMService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unregistered -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/twitter/android/platform/C2DMService;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->a()V

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {v2, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_68
    if-ge v1, v4, :cond_1b

    aget-object v5, v3, v1

    invoke-static {v2, v5}, Lcom/twitter/android/platform/j;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/j;

    move-result-object v5

    if-eqz v5, :cond_a5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/platform/C2DMService;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/platform/C2DMService;->k:Lcom/twitter/android/network/o;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "account"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "push_destinations"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "destroy"

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/twitter/android/network/o;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "udid"

    invoke-static {v7, v8, v6}, Lcom/twitter/android/network/o;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v7}, Lcom/twitter/android/platform/C2DMService;->a(Ljava/lang/String;Lcom/twitter/android/network/j;Z)Lcom/twitter/android/network/c;

    :cond_a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_a8
    if-eqz v1, :cond_120

    sget-boolean v2, Lcom/twitter/android/platform/C2DMService;->e:Z

    if-eqz v2, :cond_c2

    const-string v2, "C2DMService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Registration error -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/twitter/android/platform/C2DMService;->a(Ljava/lang/String;)V

    const-string v2, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "c2dm"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/platform/C2DMService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "backoff"

    const-wide/16 v3, 0x4e20

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "backoff_ceil"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.RETRY"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/twitter/android/platform/C2DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    int-to-long v5, v4

    const-wide/16 v7, 0x5

    cmp-long v1, v5, v7

    if-gez v1, :cond_1b

    const-wide/16 v5, 0x2

    mul-long v1, v2, v5

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/platform/C2DMService;->a(JI)V
    :try_end_117
    .catchall {:try_start_21 .. :try_end_117} :catchall_119

    goto/16 :goto_1b

    :catchall_119
    move-exception v1

    sget-object v2, Lcom/twitter/android/platform/C2DMService;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1

    :cond_120
    if-eqz v4, :cond_1b

    :try_start_122
    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->e:Z

    if-eqz v1, :cond_13a

    const-string v1, "C2DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registered -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13a
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/twitter/android/platform/C2DMService;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->a()V

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {v9, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    array-length v11, v10

    const/4 v1, 0x0

    move v7, v1

    :goto_153
    if-ge v7, v11, :cond_1b

    aget-object v2, v10, v7

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v6}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;J)V

    invoke-static {v9, v2}, Lcom/twitter/android/platform/j;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/j;

    move-result-object v3

    new-instance v1, Lcom/twitter/android/client/a;

    iget-object v5, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v6, "c2dm"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v5, v6, v12}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v5, "reg_enabled_for."

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;I)I

    move-result v5

    const/4 v1, -0x1

    if-ne v5, v1, :cond_180

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18a

    sget v5, Lcom/twitter/android/platform/C2DMService;->d:I

    :cond_180
    :goto_180
    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/accounts/Account;Lcom/twitter/android/network/j;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_153

    :cond_18a
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/android/platform/C2DMService;->c(Landroid/content/Context;Landroid/accounts/Account;)I

    move-result v5

    goto :goto_180

    :pswitch_191
    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->e:Z

    if-eqz v1, :cond_19c

    const-string v1, "C2DMService"

    const-string v2, "Push received."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "recipient_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_1b

    const-string v3, "collapse_key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "status_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sender_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/twitter/android/platform/C2DMService;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_23e

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.twitter.android.poll.data"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/twitter/android/platform/d;

    const/4 v14, 0x1

    invoke-direct {v13, v2, v8, v9, v14}, Lcom/twitter/android/platform/d;-><init>(Ljava/lang/String;JZ)V

    new-instance v8, Lcom/twitter/android/platform/f;

    invoke-direct {v8}, Lcom/twitter/android/platform/f;-><init>()V

    const/4 v9, 0x1

    iput v9, v8, Lcom/twitter/android/platform/f;->b:I

    iput-object v7, v8, Lcom/twitter/android/platform/f;->c:Ljava/lang/String;

    iput-object v6, v8, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_204
    .catchall {:try_start_122 .. :try_end_204} :catchall_119

    move-result v1

    packed-switch v1, :pswitch_data_3c8

    sget-object v1, Lcom/twitter/android/platform/C2DMService;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_15

    :pswitch_20f
    :try_start_20f
    const-string v1, "tweet"

    const/4 v9, 0x1

    invoke-virtual {v10, v2, v1, v9}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v1, 0x1

    iput v1, v8, Lcom/twitter/android/platform/f;->a:I

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/twitter/android/platform/f;->d:J

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-virtual {v11, v2, v1, v6, v9}, Lcom/twitter/android/provider/ae;->a(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v1

    iput v1, v8, Lcom/twitter/android/platform/f;->g:I

    iput-object v8, v13, Lcom/twitter/android/platform/d;->f:Lcom/twitter/android/platform/f;

    :goto_22c
    invoke-virtual {v10, v2}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Lcom/twitter/android/platform/d;->d:I

    const-string v1, "data"

    invoke-virtual {v12, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.twitter.android.permission.RESTRICTED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v1}, Lcom/twitter/android/platform/C2DMService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_23e
    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->e:Z

    if-eqz v1, :cond_1b

    const-string v1, "C2DMService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "collapse_key: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "C2DMService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "sender_name: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "C2DMService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "recipient_name: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "C2DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "user_id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "C2DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status_id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "C2DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "text: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :pswitch_2bc
    const/4 v1, 0x1

    invoke-virtual {v10, v2, v1}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;I)I

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/twitter/android/provider/ae;->e(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lcom/twitter/android/platform/f;->a:I

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/twitter/android/platform/f;->d:J

    const/4 v1, 0x2

    const/4 v9, 0x1

    invoke-virtual {v11, v2, v1, v6, v9}, Lcom/twitter/android/provider/ae;->a(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v1

    iput v1, v8, Lcom/twitter/android/platform/f;->g:I

    const/4 v1, 0x1

    iput v1, v13, Lcom/twitter/android/platform/d;->e:I

    iput-object v8, v13, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    goto/16 :goto_22c

    :pswitch_2e2
    const-string v1, "message"

    const/4 v9, 0x1

    invoke-virtual {v10, v2, v1, v9}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual {v11}, Lcom/twitter/android/provider/ae;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lcom/twitter/android/platform/f;->a:I

    const/4 v1, 0x7

    const/4 v9, 0x1

    invoke-virtual {v11, v2, v1, v6, v9}, Lcom/twitter/android/provider/ae;->a(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v1

    iput v1, v8, Lcom/twitter/android/platform/f;->g:I

    iput-object v8, v13, Lcom/twitter/android/platform/d;->g:Lcom/twitter/android/platform/f;

    goto/16 :goto_22c

    :pswitch_2fc
    const/4 v1, 0x2

    invoke-virtual {v10, v2, v1}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;I)I

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/twitter/android/provider/ae;->e(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lcom/twitter/android/platform/f;->a:I

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/twitter/android/platform/f;->d:J

    const/4 v1, 0x4

    const/4 v9, 0x1

    invoke-virtual {v11, v2, v1, v6, v9}, Lcom/twitter/android/provider/ae;->a(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v1

    iput v1, v8, Lcom/twitter/android/platform/f;->g:I

    const/4 v1, 0x2

    iput v1, v13, Lcom/twitter/android/platform/d;->e:I

    iput-object v8, v13, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    goto/16 :goto_22c

    :pswitch_322
    const/16 v1, 0x8

    invoke-virtual {v10, v2, v1}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;I)I

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/twitter/android/provider/ae;->e(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lcom/twitter/android/platform/f;->a:I

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/twitter/android/platform/f;->d:J

    const/4 v1, 0x3

    const/4 v9, 0x1

    invoke-virtual {v11, v2, v1, v6, v9}, Lcom/twitter/android/provider/ae;->a(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v1

    iput v1, v8, Lcom/twitter/android/platform/f;->g:I

    const/16 v1, 0x8

    iput v1, v13, Lcom/twitter/android/platform/d;->e:I

    iput-object v8, v13, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    goto/16 :goto_22c

    :pswitch_34a
    const/4 v1, 0x4

    invoke-virtual {v10, v2, v1}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;I)I

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/twitter/android/provider/ae;->e(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lcom/twitter/android/platform/f;->a:I

    const/4 v1, 0x5

    const/4 v9, 0x1

    invoke-virtual {v11, v2, v1, v6, v9}, Lcom/twitter/android/provider/ae;->a(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v1

    iput v1, v8, Lcom/twitter/android/platform/f;->g:I

    const/4 v1, 0x4

    iput v1, v13, Lcom/twitter/android/platform/d;->e:I

    iput-object v8, v13, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    goto/16 :goto_22c

    :pswitch_366
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->c(Landroid/content/Context;)V
    :try_end_373
    .catchall {:try_start_20f .. :try_end_373} :catchall_119

    goto/16 :goto_1b

    :pswitch_375
    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->e:Z

    if-eqz v1, :cond_380

    const-string v1, "C2DMService"

    const-string v2, "Refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_380
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    const-string v1, "account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/twitter/android/platform/j;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/j;

    move-result-object v3

    const-string v1, "enabled_for"

    sget v5, Lcom/twitter/android/platform/C2DMService;->d:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "polling"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/accounts/Account;Lcom/twitter/android/network/j;Ljava/lang/String;IZ)V

    goto/16 :goto_15

    :pswitch_data_3b2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_375
    .end packed-switch

    :pswitch_data_3be
    .packed-switch 0x1
        :pswitch_21
        :pswitch_191
        :pswitch_366
    .end packed-switch

    :pswitch_data_3c8
    .packed-switch 0x1
        :pswitch_20f
        :pswitch_2bc
        :pswitch_2e2
        :pswitch_2fc
        :pswitch_322
        :pswitch_34a
    .end packed-switch
.end method
