.class public Lcom/android/email/activity/setup/SetupData;
.super Ljava/lang/Object;
.source "SetupData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/activity/setup/SetupData;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLOW_MODES:[Ljava/lang/String;

.field private static INSTANCE:Lcom/android/email/activity/setup/SetupData;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

.field private mAllowAutodiscover:Z

.field private mAutoSetup:Z

.field private mCheckSettingsMode:I

.field private mDefault:Z

.field private mFlowMode:I

.field private mPassword:Ljava/lang/String;

.field private mPolicy:Lcom/android/emailcommon/provider/Policy;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eas"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pop/imap"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "edit"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "force"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rtc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rtl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->FLOW_MODES:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    .line 198
    new-instance v0, Lcom/android/email/activity/setup/SetupData$1;

    invoke-direct {v0}, Lcom/android/email/activity/setup/SetupData$1;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 58
    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v3, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 58
    iput v3, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 59
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 61
    iput-boolean v3, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    .line 62
    iput-boolean v3, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 224
    .local v0, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 225
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/Account;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_65

    move v1, v2

    :goto_41
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 230
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/Policy;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_67

    move v1, v2

    :goto_52
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_69

    :goto_5a
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    .line 233
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 234
    return-void

    :cond_65
    move v1, v3

    .line 229
    goto :goto_41

    :cond_67
    move v1, v3

    .line 231
    goto :goto_52

    :cond_69
    move v2, v3

    .line 232
    goto :goto_5a
.end method

.method public static getAccount()Lcom/android/emailcommon/provider/Account;
    .registers 1

    .prologue
    .line 89
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method public static getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;
    .registers 1

    .prologue
    .line 161
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    return-object v0
.end method

.method public static getFlowMode()I
    .registers 1

    .prologue
    .line 81
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget v0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/email/activity/setup/SetupData;
    .registers 2

    .prologue
    .line 70
    const-class v1, Lcom/android/email/activity/setup/SetupData;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    if-nez v0, :cond_e

    .line 71
    new-instance v0, Lcom/android/email/activity/setup/SetupData;

    invoke-direct {v0}, Lcom/android/email/activity/setup/SetupData;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    .line 73
    :cond_e
    sget-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPassword()Ljava/lang/String;
    .registers 1

    .prologue
    .line 105
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public static getPolicy()Lcom/android/emailcommon/provider/Policy;
    .registers 1

    .prologue
    .line 135
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public static getUsername()Ljava/lang/String;
    .registers 1

    .prologue
    .line 97
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public static init(I)V
    .registers 2
    .parameter "flowMode"

    .prologue
    .line 169
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    .line 170
    .local v0, data:Lcom/android/email/activity/setup/SetupData;
    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupData;->commonInit()V

    .line 171
    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 172
    return-void
.end method

.method public static init(ILcom/android/emailcommon/provider/Account;)V
    .registers 3
    .parameter "flowMode"
    .parameter "account"

    .prologue
    .line 175
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    .line 176
    .local v0, data:Lcom/android/email/activity/setup/SetupData;
    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupData;->commonInit()V

    .line 177
    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 178
    iput-object p1, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 179
    return-void
.end method

.method public static isAllowAutodiscover()Z
    .registers 1

    .prologue
    .line 127
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    return v0
.end method

.method public static isAutoSetup()Z
    .registers 1

    .prologue
    .line 145
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    return v0
.end method

.method public static isDefault()Z
    .registers 1

    .prologue
    .line 153
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    return v0
.end method

.method public static declared-synchronized restore(Landroid/os/Bundle;)Lcom/android/email/activity/setup/SetupData;
    .registers 3
    .parameter "bundle"

    .prologue
    .line 242
    const-class v1, Lcom/android/email/activity/setup/SetupData;

    monitor-enter v1

    if-eqz p0, :cond_1b

    :try_start_5
    const-string v0, "com.android.email.setupdata"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 243
    const-string v0, "com.android.email.setupdata"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SetupData;

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    .line 244
    sget-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_20

    .line 246
    :goto_19
    monitor-exit v1

    return-object v0

    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_20

    move-result-object v0

    goto :goto_19

    .line 242
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static save(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"

    .prologue
    .line 238
    const-string v0, "com.android.email.setupdata"

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    return-void
.end method

.method public static setAccount(Lcom/android/emailcommon/provider/Account;)V
    .registers 2
    .parameter "mAccount"

    .prologue
    .line 93
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 94
    return-void
.end method

.method public static setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 165
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 166
    return-void
.end method

.method public static setAllowAutodiscover(Z)V
    .registers 2
    .parameter "mAllowAutodiscover"

    .prologue
    .line 131
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-boolean p0, v0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 132
    return-void
.end method

.method public static setCheckSettingsMode(I)V
    .registers 2
    .parameter "mCheckSettingsMode"

    .prologue
    .line 113
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 114
    return-void
.end method

.method public static setDefault(Z)V
    .registers 2
    .parameter "_default"

    .prologue
    .line 157
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-boolean p0, v0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    .line 158
    return-void
.end method

.method public static setFlowMode(I)V
    .registers 2
    .parameter "mFlowMode"

    .prologue
    .line 85
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 86
    return-void
.end method

.method public static setPassword(Ljava/lang/String;)V
    .registers 2
    .parameter "mPassword"

    .prologue
    .line 109
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static setPolicy(Lcom/android/emailcommon/provider/Policy;)V
    .registers 3
    .parameter "policy"

    .prologue
    .line 139
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    .line 140
    .local v0, data:Lcom/android/email/activity/setup/SetupData;
    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 141
    iget-object v1, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object p0, v1, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 142
    return-void
.end method

.method public static setUsername(Ljava/lang/String;)V
    .registers 2
    .parameter "mUsername"

    .prologue
    .line 101
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method commonInit()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 183
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 185
    iput v2, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 186
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 187
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    .line 188
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 191
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    iget v0, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 212
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget v0, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 217
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    if-eqz v0, :cond_41

    :goto_34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 220
    return-void

    :cond_3d
    move v0, v2

    .line 215
    goto :goto_20

    :cond_3f
    move v0, v2

    .line 217
    goto :goto_2d

    :cond_41
    move v1, v2

    .line 218
    goto :goto_34
.end method
