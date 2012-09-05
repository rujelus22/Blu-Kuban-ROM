.class public Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
.super Ljava/lang/Object;
.source "SnsSharedPreferences.java"


# static fields
.field private static mInstance:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;


# instance fields
.field private final NAME:[Ljava/lang/String;

.field private mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->mInstance:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AccountInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SessionInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "PersistKeyCode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ICCID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "activity_history"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DebugKey"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IsPhotoUpload"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->NAME:[Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->mAppContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    .registers 2
    .parameter "context"

    .prologue
    .line 70
    sget-object v0, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->mInstance:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    if-nez v0, :cond_b

    .line 71
    new-instance v0, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->mInstance:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    .line 73
    :cond_b
    sget-object v0, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->mInstance:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getSharedPreference(I)Landroid/content/SharedPreferences;
    .registers 6
    .parameter "type"

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, prefName:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->NAME:[Ljava/lang/String;

    aget-object v1, v2, p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_d

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->mAppContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    :goto_c
    return-object v2

    .line 85
    :catch_d
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const/4 v2, 0x0

    goto :goto_c
.end method
