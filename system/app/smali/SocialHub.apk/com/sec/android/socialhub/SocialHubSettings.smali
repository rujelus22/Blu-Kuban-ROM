.class public Lcom/sec/android/socialhub/SocialHubSettings;
.super Ljava/lang/Object;
.source "SocialHubSettings.java"


# static fields
.field private static volatile instance:Lcom/sec/android/socialhub/SocialHubSettings;


# instance fields
.field private nIsPremium:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/SocialHubSettings;->instance:Lcom/sec/android/socialhub/SocialHubSettings;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/SocialHubSettings;->nIsPremium:I

    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/SocialHubSettings;->checkPremium(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/SocialHubSettings;->nIsPremium:I

    .line 35
    return-void
.end method

.method private checkPremium(Landroid/content/Context;)I
    .registers 6
    .parameter "context"

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.seven.Z7"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    .line 42
    const/4 v1, 0x1

    .line 47
    :goto_b
    return v1

    .line 44
    :catch_c
    move-exception v0

    .line 46
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 47
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static get(Landroid/content/Context;)Lcom/sec/android/socialhub/SocialHubSettings;
    .registers 3
    .parameter

    .prologue
    .line 21
    const-class v1, Lcom/sec/android/socialhub/SocialHubSettings;

    monitor-enter v1

    .line 23
    :try_start_3
    sget-object v0, Lcom/sec/android/socialhub/SocialHubSettings;->instance:Lcom/sec/android/socialhub/SocialHubSettings;

    if-nez v0, :cond_e

    .line 25
    new-instance v0, Lcom/sec/android/socialhub/SocialHubSettings;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/SocialHubSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/socialhub/SocialHubSettings;->instance:Lcom/sec/android/socialhub/SocialHubSettings;

    .line 27
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 29
    sget-object v0, Lcom/sec/android/socialhub/SocialHubSettings;->instance:Lcom/sec/android/socialhub/SocialHubSettings;

    return-object v0

    .line 27
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public getSetting(I)I
    .registers 3
    .parameter "flag"

    .prologue
    .line 53
    packed-switch p1, :pswitch_data_8

    .line 60
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 56
    :pswitch_5
    iget v0, p0, Lcom/sec/android/socialhub/SocialHubSettings;->nIsPremium:I

    goto :goto_4

    .line 53
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
