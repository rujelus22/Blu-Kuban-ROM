.class public Lcom/google/android/apps/translate/TranslateService;
.super Landroid/app/Service;
.source "TranslateService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TranslateService"

.field private static final TRANSLATE_ACTIONS:[Ljava/lang/String;


# instance fields
.field private localProfiles:Landroid/content/SharedPreferences;

.field private final mBinder:Lcom/google/android/apps/translate/ITranslate$Stub;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.GET_CONTENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PICK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.VIEW"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/translate/TranslateService;->TRANSLATE_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/apps/translate/TranslateService$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/TranslateService$1;-><init>(Lcom/google/android/apps/translate/TranslateService;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateService;->mBinder:Lcom/google/android/apps/translate/ITranslate$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/TranslateService;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateService;->localProfiles:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public isNetworkAvailable()Z
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter "intent"

    .prologue
    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/google/android/apps/translate/TranslateService;->TRANSLATE_ACTIONS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 96
    sget-object v1, Lcom/google/android/apps/translate/TranslateService;->TRANSLATE_ACTIONS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/translate/TranslateService;->mBinder:Lcom/google/android/apps/translate/ITranslate$Stub;

    .line 100
    :goto_16
    return-object v1

    .line 95
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_1a
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/translate/TranslateService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/TranslateApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/TranslateApplication;->resetAppCsiTimer()V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/translate/TranslateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "localModelProfiles"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/TranslateService;->localProfiles:Landroid/content/SharedPreferences;

    .line 91
    return-void
.end method
