.class public Lcom/sprint/dsa/diagnostics/CustomerCare;
.super Ljava/lang/Object;
.source "CustomerCare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

.field private mPageContent:Lcom/sprint/dsa/data/PageContent;

.field private mTSPhoneStateListener:Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "SprintZone_Diagnostics"

    sput-object v0, Lcom/sprint/dsa/diagnostics/CustomerCare;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/widget/ContentListAdapter;Lcom/sprint/dsa/data/PageContent;)V
    .registers 4
    .parameter "context"
    .parameter "listAdapter"
    .parameter "pageContent"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    .line 35
    iput-object p3, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/diagnostics/CustomerCare;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sprint/dsa/diagnostics/CustomerCare;->updateStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/dsa/diagnostics/CustomerCare;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/sprint/dsa/diagnostics/CustomerCare;->checkConnectionState(Ljava/lang/String;)V

    return-void
.end method

.method private checkConnectionState(Ljava/lang/String;)V
    .registers 10
    .parameter "details"

    .prologue
    .line 113
    :try_start_0
    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 114
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 115
    .local v3, info:Landroid/net/NetworkInfo;
    const-string v1, ""

    .line 116
    .local v1, display:Ljava/lang/String;
    const/4 v4, 0x0

    .line 117
    .local v4, is3G:Z
    if-eqz v3, :cond_57

    .line 118
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_1a

    .line 119
    const/4 v4, 0x1

    .line 121
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v7, 0x7f08008c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    :goto_3e
    const-string v5, "network_info"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_61

    .end local p1
    :goto_4b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/sprint/dsa/diagnostics/CustomerCare;->updateStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #display:Ljava/lang/String;
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v4           #is3G:Z
    :goto_56
    return-void

    .line 123
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #display:Ljava/lang/String;
    .restart local v3       #info:Landroid/net/NetworkInfo;
    .restart local v4       #is3G:Z
    .restart local p1
    :cond_57
    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v6, 0x7f08008d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    .line 126
    :cond_61
    const-string p1, ""
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_64

    goto :goto_4b

    .line 128
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #display:Ljava/lang/String;
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v4           #is3G:Z
    .end local p1
    :catch_64
    move-exception v2

    .line 129
    .local v2, e:Ljava/lang/Exception;
    sget-object v5, Lcom/sprint/dsa/diagnostics/CustomerCare;->TAG:Ljava/lang/String;

    const-string v6, "Exception: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56
.end method

.method private updateAboutPhone()V
    .registers 8

    .prologue
    .line 50
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sprint/dsa/dss/DsaDiag;->getMdn(Landroid/content/Context;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_155

    move-result-object v1

    .line 53
    .local v1, mdn:Ljava/lang/String;
    :try_start_b
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_16c

    move-result-object v1

    .line 56
    :goto_f
    :try_start_f
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v5, 0x7f080081

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v6, 0x7f080085

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sprint/dsa/dss/DsaDiag;->getMsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v6, 0x7f080082

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v4, "\n    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v6, 0x7f080083

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/sprint/dsa/dss/DsaDiag;->getMeid(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v4, "\n    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v6, 0x7f080084

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/sprint/dsa/dss/DsaDiag;->getMeid(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v4, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sprint/dsa/dss/DsaDiag;->getNai(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, str:Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v6, 0x7f080086

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_151

    .end local v3           #str:Ljava/lang/String;
    :goto_c0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v6, 0x7f080087

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sprint/dsa/dss/DsaDiag;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Lcom/sprint/dsa/dss/DsaDiag;->getAvailableSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    .line 68
    .restart local v3       #str:Ljava/lang/String;
    if-eqz v3, :cond_105

    .line 69
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v6, 0x7f080088

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_105
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v6, 0x7f080089

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sprint/dsa/dss/DsaDiag;->getPrlVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Lcom/sprint/dsa/dss/DsaDiag;->getAvailablePrlVersion()Ljava/lang/String;

    move-result-object v3

    .line 72
    if-eqz v3, :cond_147

    .line 73
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v6, 0x7f08008a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_147
    const-string v4, "about_phone"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/sprint/dsa/diagnostics/CustomerCare;->updateStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v1           #mdn:Ljava/lang/String;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v3           #str:Ljava/lang/String;
    :goto_150
    return-void

    .line 65
    .restart local v1       #mdn:Ljava/lang/String;
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    .restart local v3       #str:Ljava/lang/String;
    :cond_151
    const-string v3, ""
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_153} :catch_155

    goto/16 :goto_c0

    .line 75
    .end local v1           #mdn:Ljava/lang/String;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v3           #str:Ljava/lang/String;
    :catch_155
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/sprint/dsa/diagnostics/CustomerCare;->TAG:Ljava/lang/String;

    const-string v5, "Unabled to get info about phone"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const-string v4, "about_phone"

    iget-object v5, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const v6, 0x7f08008b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/sprint/dsa/diagnostics/CustomerCare;->updateStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_150

    .line 54
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #mdn:Ljava/lang/String;
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :catch_16c
    move-exception v4

    goto/16 :goto_f
.end method

.method private updateStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "desc"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    const-string v2, "customer_care"

    invoke-virtual {v1, v2, p1}, Lcom/sprint/dsa/data/PageContent;->getFeatureItem(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v0

    .line 40
    .local v0, fItem:Lcom/sprint/dsa/data/FeatureItem;
    if-eqz v0, :cond_19

    .line 41
    invoke-virtual {v0, p2}, Lcom/sprint/dsa/data/FeatureItem;->setDescription(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/widget/ContentListAdapter;->setContent(Lcom/sprint/dsa/data/PageContent;)V

    .line 43
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    invoke-virtual {v1}, Lcom/sprint/dsa/widget/ContentListAdapter;->notifyDataSetChanged()V

    .line 45
    :cond_19
    return-void
.end method


# virtual methods
.method public deregisterListener()V
    .registers 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mTSPhoneStateListener:Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;

    if-eqz v1, :cond_17

    .line 104
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 105
    .local v0, telManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mTSPhoneStateListener:Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mTSPhoneStateListener:Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;

    .line 109
    .end local v0           #telManager:Landroid/telephony/TelephonyManager;
    :cond_17
    return-void
.end method

.method public registerListener()V
    .registers 5

    .prologue
    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 86
    .local v1, telManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mTSPhoneStateListener:Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;

    if-nez v2, :cond_15

    .line 87
    new-instance v2, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;-><init>(Lcom/sprint/dsa/diagnostics/CustomerCare;)V

    iput-object v2, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mTSPhoneStateListener:Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;

    .line 90
    :cond_15
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/CustomerCare;->mTSPhoneStateListener:Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;

    const/16 v3, 0x150

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 94
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/sprint/dsa/diagnostics/CustomerCare;->checkConnectionState(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/sprint/dsa/diagnostics/CustomerCare;->updateAboutPhone()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 99
    .end local v1           #telManager:Landroid/telephony/TelephonyManager;
    :goto_24
    return-void

    .line 96
    :catch_25
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/sprint/dsa/diagnostics/CustomerCare;->TAG:Ljava/lang/String;

    const-string v3, "Exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method
