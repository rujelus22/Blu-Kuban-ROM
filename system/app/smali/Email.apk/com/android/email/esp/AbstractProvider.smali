.class public abstract Lcom/android/email/esp/AbstractProvider;
.super Ljava/lang/Object;
.source "AbstractProvider.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mProviderHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/esp/AbstractProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAccountProviderName:Ljava/lang/String;

.field protected mDefaultAccountName:Ljava/lang/String;

.field protected mDomainList:[Ljava/lang/String;

.field protected mIsSnC:Z

.field protected mNotificationIcon:I

.field protected mProviderCheckImage:I

.field protected mProviderId:I

.field protected mProviderImage:I

.field protected mProviderName:Ljava/lang/String;

.field protected mProviderStringResId:I

.field protected mServiceList:[Ljava/lang/String;

.field protected mTabIcon:I

.field protected mTitleButtonIcon:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-string v0, "AbstractProvider"

    sput-object v0, Lcom/android/email/esp/AbstractProvider;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/esp/AbstractProvider;->mProviderHash:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v2, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    .line 33
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    .line 38
    iput-object v2, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mProviderStringResId:I

    .line 48
    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mNotificationIcon:I

    .line 53
    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mTitleButtonIcon:I

    .line 58
    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    .line 63
    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    .line 68
    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mTabIcon:I

    .line 73
    iput-object v2, p0, Lcom/android/email/esp/AbstractProvider;->mDomainList:[Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/android/email/esp/AbstractProvider;->mServiceList:[Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/esp/AbstractProvider;->mIsSnC:Z

    .line 87
    return-void
.end method

.method public static declared-synchronized getInstance(I)Lcom/android/email/esp/AbstractProvider;
    .registers 7
    .parameter "type"

    .prologue
    .line 143
    const-class v3, Lcom/android/email/esp/AbstractProvider;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/android/email/esp/AbstractProvider;->mProviderHash:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/esp/AbstractProvider;

    .line 145
    .local v0, p:Lcom/android/email/esp/AbstractProvider;
    if-eqz v0, :cond_2c

    .line 146
    sget-object v2, Lcom/android/email/esp/AbstractProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found a vallid provider for the type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_7c

    move-object v1, v0

    .line 191
    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    .local v1, p:Lcom/android/email/esp/AbstractProvider;
    :goto_2a
    monitor-exit v3

    return-object v1

    .line 150
    .end local v1           #p:Lcom/android/email/esp/AbstractProvider;
    .restart local v0       #p:Lcom/android/email/esp/AbstractProvider;
    :cond_2c
    :try_start_2c
    invoke-static {p0}, Lcom/android/email/esp/ServiceProvider;->getProviderFromType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_80

    .line 184
    sget-object v2, Lcom/android/email/esp/AbstractProvider;->TAG:Ljava/lang/String;

    const-string v4, "FATAL: INVALID Provider type"

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/android/email/esp/ProviderDummy;

    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    invoke-direct {v0}, Lcom/android/email/esp/ProviderDummy;-><init>()V

    .line 186
    .restart local v0       #p:Lcom/android/email/esp/AbstractProvider;
    const/16 p0, 0xff

    .line 189
    :goto_41
    sget-object v2, Lcom/android/email/esp/AbstractProvider;->mProviderHash:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 191
    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    .restart local v1       #p:Lcom/android/email/esp/AbstractProvider;
    goto :goto_2a

    .line 152
    .end local v1           #p:Lcom/android/email/esp/AbstractProvider;
    .restart local v0       #p:Lcom/android/email/esp/AbstractProvider;
    :pswitch_4c
    new-instance v0, Lcom/android/email/esp/ProviderAim;

    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    invoke-direct {v0}, Lcom/android/email/esp/ProviderAim;-><init>()V

    .line 153
    .restart local v0       #p:Lcom/android/email/esp/AbstractProvider;
    goto :goto_41

    .line 156
    :pswitch_52
    new-instance v0, Lcom/android/email/esp/ProviderAol;

    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    invoke-direct {v0}, Lcom/android/email/esp/ProviderAol;-><init>()V

    .line 157
    .restart local v0       #p:Lcom/android/email/esp/AbstractProvider;
    goto :goto_41

    .line 160
    :pswitch_58
    new-instance v0, Lcom/android/email/esp/ProviderGmail;

    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    invoke-direct {v0}, Lcom/android/email/esp/ProviderGmail;-><init>()V

    .line 161
    .restart local v0       #p:Lcom/android/email/esp/AbstractProvider;
    goto :goto_41

    .line 164
    :pswitch_5e
    new-instance v0, Lcom/android/email/esp/ProviderYahoo;

    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    invoke-direct {v0}, Lcom/android/email/esp/ProviderYahoo;-><init>()V

    .line 165
    .restart local v0       #p:Lcom/android/email/esp/AbstractProvider;
    goto :goto_41

    .line 168
    :pswitch_64
    new-instance v0, Lcom/android/email/esp/ProviderHotmail;

    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    invoke-direct {v0}, Lcom/android/email/esp/ProviderHotmail;-><init>()V

    .line 169
    .restart local v0       #p:Lcom/android/email/esp/AbstractProvider;
    goto :goto_41

    .line 172
    :pswitch_6a
    new-instance v0, Lcom/android/email/esp/ProviderVerizon;

    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    invoke-direct {v0}, Lcom/android/email/esp/ProviderVerizon;-><init>()V

    .line 173
    .restart local v0       #p:Lcom/android/email/esp/AbstractProvider;
    goto :goto_41

    .line 176
    :pswitch_70
    new-instance v0, Lcom/android/email/esp/ProviderExchange;

    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    invoke-direct {v0}, Lcom/android/email/esp/ProviderExchange;-><init>()V

    .line 177
    .restart local v0       #p:Lcom/android/email/esp/AbstractProvider;
    goto :goto_41

    .line 180
    :pswitch_76
    new-instance v0, Lcom/android/email/esp/ProviderOthers;

    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    invoke-direct {v0}, Lcom/android/email/esp/ProviderOthers;-><init>()V
    :try_end_7b
    .catchall {:try_start_2c .. :try_end_7b} :catchall_7c

    .line 181
    .restart local v0       #p:Lcom/android/email/esp/AbstractProvider;
    goto :goto_41

    .line 143
    .end local v0           #p:Lcom/android/email/esp/AbstractProvider;
    :catchall_7c
    move-exception v2

    monitor-exit v3

    throw v2

    .line 150
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_70
        :pswitch_5e
        :pswitch_58
        :pswitch_6a
        :pswitch_52
        :pswitch_64
        :pswitch_76
        :pswitch_4c
    .end packed-switch
.end method


# virtual methods
.method public getAccountProviderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAccountName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderCheckImage()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    return v0
.end method

.method public getProviderId()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    return v0
.end method

.method public getProviderImage()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    return-object v0
.end method
