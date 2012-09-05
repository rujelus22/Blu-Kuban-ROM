.class public Lcom/sec/android/app/sns/session/SnsSessionMgr;
.super Ljava/lang/Object;
.source "SnsSessionMgr.java"


# static fields
.field private static mHttpServerAddress:Ljava/lang/String;

.field private static mSSLServerAddress:Ljava/lang/String;


# instance fields
.field private final CRYPT_SESSION_CREDENTIAL:Ljava/lang/String;

.field private final MASTER_KEY:Ljava/lang/String;

.field private final NORMAL_HTTP_SERVER_ADDRESS:Ljava/lang/String;

.field private final SESSION_KEY:Ljava/lang/String;

.field private final SESSION_STATUS:Ljava/lang/String;

.field private final SSL_HTTPS_SERVER_ADDRESS:Ljava/lang/String;

.field private mAppContext:Landroid/content/Context;

.field private mCryptSessionCredential:Ljava/lang/String;

.field private mSessionKey:Ljava/lang/String;

.field private mSessionStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "002c45129f2b78a6a509a7b1514d103d6fe3006b"

    iput-object v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->MASTER_KEY:Ljava/lang/String;

    .line 59
    const-string v0, "SessionKey"

    iput-object v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->SESSION_KEY:Ljava/lang/String;

    .line 61
    const-string v0, "SessionStatus"

    iput-object v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->SESSION_STATUS:Ljava/lang/String;

    .line 63
    const-string v0, "CryptSessionCredential"

    iput-object v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->CRYPT_SESSION_CREDENTIAL:Ljava/lang/String;

    .line 65
    const-string v0, "HttpServerAddress"

    iput-object v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->NORMAL_HTTP_SERVER_ADDRESS:Ljava/lang/String;

    .line 67
    const-string v0, "SSLServerAddress"

    iput-object v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->SSL_HTTPS_SERVER_ADDRESS:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mAppContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSessionKey:Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSessionStatus:I

    .line 73
    iput-object v1, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mCryptSessionCredential:Ljava/lang/String;

    .line 74
    sput-object v1, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mHttpServerAddress:Ljava/lang/String;

    .line 75
    sput-object v1, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSSLServerAddress:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static getHttpServerAddress()Ljava/lang/String;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mHttpServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getSSLServerAddress()Ljava/lang/String;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSSLServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static setHttpServerAddress(Ljava/lang/String;)V
    .registers 1
    .parameter "serverAddr"

    .prologue
    .line 103
    sput-object p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mHttpServerAddress:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public static setSSLServerAddress(Ljava/lang/String;)V
    .registers 1
    .parameter "serverAddr"

    .prologue
    .line 107
    sput-object p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSSLServerAddress:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public clearSessionInfo()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSessionKey:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mCryptSessionCredential:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 158
    return-void
.end method

.method public getCryptSessionCredential()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mCryptSessionCredential:Ljava/lang/String;

    return-object v0
.end method

.method public getSeesionStatus()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSessionStatus:I

    return v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public readSessionInfo()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-object v2, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v1

    .line 139
    .local v1, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    .local v0, sessionInfoPref:Landroid/content/SharedPreferences;
    const-string v2, "SessionKey"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSessionKey:Ljava/lang/String;

    .line 143
    const-string v2, "SessionStatus"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSessionStatus:I

    .line 145
    const-string v2, "CryptSessionCredential"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mCryptSessionCredential:Ljava/lang/String;

    .line 147
    const-string v2, "HttpServerAddress"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mHttpServerAddress:Ljava/lang/String;

    .line 148
    const-string v2, "SSLServerAddress"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSSLServerAddress:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setCryptSessionCredential(Ljava/lang/String;)V
    .registers 2
    .parameter "credential"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mCryptSessionCredential:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .registers 2
    .parameter "sessionKey"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSessionKey:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setSessionStatus(I)V
    .registers 2
    .parameter "sessionStatus"

    .prologue
    .line 87
    iput p1, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSessionStatus:I

    .line 88
    return-void
.end method

.method public writeSessionInfo()V
    .registers 6

    .prologue
    .line 120
    iget-object v3, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v2

    .line 121
    .local v2, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 123
    .local v1, sessionInfoPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SessionKey"

    iget-object v4, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSessionKey:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    const-string v3, "SessionStatus"

    iget v4, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSessionStatus:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 128
    const-string v3, "CryptSessionCredential"

    iget-object v4, p0, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mCryptSessionCredential:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v3, "HttpServerAddress"

    sget-object v4, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mHttpServerAddress:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v3, "SSLServerAddress"

    sget-object v4, Lcom/sec/android/app/sns/session/SnsSessionMgr;->mSSLServerAddress:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method
