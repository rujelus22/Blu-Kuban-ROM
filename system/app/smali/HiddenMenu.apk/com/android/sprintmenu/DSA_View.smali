.class public Lcom/android/sprintmenu/DSA_View;
.super Landroid/preference/PreferenceActivity;
.source "DSA_View.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private DSA_Server_Addr:Ljava/lang/String;

.field private DSA_Server_IP:Ljava/lang/String;

.field private DSA_Server_Port:Ljava/lang/String;

.field private DSA_Server_URL:Landroid/preference/Preference;

.field private DSS_Proxy_Port:Landroid/preference/Preference;

.field private DSS_Proxy_Server_IP:Landroid/preference/Preference;

.field private mSprintExtension:Lcom/sprint/internal/SystemProperties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/android/sprintmenu/DSA_View;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/DSA_View;->LOG_TAG:Ljava/lang/String;

    .line 23
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/DSA_View;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/DSA_View;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 31
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 32
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/DSA_View;->sNotSet:Ljava/lang/String;

    .line 34
    .end local p1
    :cond_a
    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget-object v3, Lcom/android/sprintmenu/DSA_View;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v3, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v3, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_View;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 46
    :try_start_11
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v4, 0x192

    invoke-virtual {v3, v4}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_Addr:Ljava/lang/String;

    .line 47
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v4, 0x195

    invoke-virtual {v3, v4}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_IP:Ljava/lang/String;

    .line 48
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v4, 0x196

    invoke-virtual {v3, v4}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_Port:Ljava/lang/String;
    :try_end_2f
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_11 .. :try_end_2f} :catch_b1

    .line 56
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_Addr:Ljava/lang/String;

    if-nez v3, :cond_bc

    .line 57
    sget-object v3, Lcom/android/sprintmenu/DSA_View;->LOG_TAG:Ljava/lang/String;

    const-string v4, "DSA_URL is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_3a
    invoke-virtual {p0}, Lcom/android/sprintmenu/DSA_View;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 63
    .local v2, root:Landroid/preference/PreferenceScreen;
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v3, 0x7f05004f

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 65
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 67
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_URL:Landroid/preference/Preference;

    .line 68
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_URL:Landroid/preference/Preference;

    const v4, 0x7f050050

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 69
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_URL:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_Addr:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/DSA_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_URL:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 72
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSS_Proxy_Server_IP:Landroid/preference/Preference;

    .line 73
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSS_Proxy_Server_IP:Landroid/preference/Preference;

    const v4, 0x7f050051

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 74
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSS_Proxy_Server_IP:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_IP:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/DSA_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSS_Proxy_Server_IP:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 77
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSS_Proxy_Port:Landroid/preference/Preference;

    .line 78
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSS_Proxy_Port:Landroid/preference/Preference;

    const v4, 0x7f050052

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 79
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSS_Proxy_Port:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_Port:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/sprintmenu/DSA_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, p0, Lcom/android/sprintmenu/DSA_View;->DSS_Proxy_Port:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 82
    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/DSA_View;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 83
    .end local v1           #inlinePrefCat:Landroid/preference/PreferenceCategory;
    .end local v2           #root:Landroid/preference/PreferenceScreen;
    :goto_b0
    return-void

    .line 50
    :catch_b1
    move-exception v0

    .line 52
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v3, Lcom/android/sprintmenu/DSA_View;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 59
    .end local v0           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_bc
    sget-object v3, Lcom/android/sprintmenu/DSA_View;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/sprintmenu/DSA_View;->DSA_Server_Addr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a
.end method
