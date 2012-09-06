.class public Lcom/android/email/service/AccountService;
.super Landroid/app/Service;
.source "AccountService.java"


# instance fields
.field private final mBinder:Lcom/android/emailcommon/service/IAccountService$Stub;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Lcom/android/email/service/AccountService$1;

    invoke-direct {v0, p0}, Lcom/android/email/service/AccountService$1;-><init>(Lcom/android/email/service/AccountService;)V

    iput-object v0, p0, Lcom/android/email/service/AccountService;->mBinder:Lcom/android/emailcommon/service/IAccountService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 121
    iput-object p0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    .line 125
    :cond_6
    :try_start_6
    invoke-static {p0}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_c

    .line 128
    :goto_9
    iget-object v0, p0, Lcom/android/email/service/AccountService;->mBinder:Lcom/android/emailcommon/service/IAccountService$Stub;

    return-object v0

    .line 126
    :catch_c
    move-exception v0

    goto :goto_9
.end method
