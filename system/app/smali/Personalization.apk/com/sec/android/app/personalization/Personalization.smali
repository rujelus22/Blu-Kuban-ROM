.class public Lcom/sec/android/app/personalization/Personalization;
.super Landroid/app/Activity;
.source "Personalization.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 112
    const-string v0, "Personalization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimNetworklock] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, PersoType:I
    const/4 v0, 0x0

    .line 50
    .local v0, Active_Lock:I
    invoke-virtual {p0}, Lcom/sec/android/app/personalization/Personalization;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 51
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "keyString"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, keyString:Ljava/lang/String;
    const-string v6, "scheme"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, scheme:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyString is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/personalization/Personalization;->log(Ljava/lang/String;)V

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheme is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/personalization/Personalization;->log(Ljava/lang/String;)V

    .line 57
    if-eqz v4, :cond_4c

    .line 58
    const-string v6, "7465625"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 60
    const/4 v0, 0x2

    .line 100
    :cond_4c
    :goto_4c
    new-instance v1, Lcom/sec/android/app/personalization/PersoLock;

    invoke-direct {v1, p0}, Lcom/sec/android/app/personalization/PersoLock;-><init>(Landroid/content/Context;)V

    .line 103
    .local v1, Panel:Lcom/sec/android/app/personalization/PersoLock;
    iput v2, v1, Lcom/sec/android/app/personalization/PersoLock;->mPersoType:I

    .line 104
    iput v0, v1, Lcom/sec/android/app/personalization/PersoLock;->mIsLock:I

    .line 105
    iput-object p0, v1, Lcom/sec/android/app/personalization/PersoLock;->mParentActivity:Landroid/app/Activity;

    .line 107
    invoke-virtual {v1}, Lcom/sec/android/app/personalization/PersoLock;->show()V

    .line 109
    return-void

    .line 62
    .end local v1           #Panel:Lcom/sec/android/app/personalization/PersoLock;
    :cond_5b
    const-string v6, "7465625*638*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 64
    const/4 v2, 0x5

    .line 66
    const-string v6, "android_perso_lock_code"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 67
    const/4 v0, 0x1

    goto :goto_4c

    .line 69
    :cond_6e
    const/4 v0, 0x0

    goto :goto_4c

    .line 71
    :cond_70
    const-string v6, "7465625*782*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 73
    const/4 v2, 0x6

    .line 75
    const-string v6, "android_perso_lock_code"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 76
    const/4 v0, 0x1

    goto :goto_4c

    .line 78
    :cond_83
    const/4 v0, 0x0

    goto :goto_4c

    .line 81
    :cond_85
    const-string v6, "7465625*77*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 83
    const/4 v2, 0x7

    .line 85
    const-string v6, "android_perso_lock_code"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 86
    const/4 v0, 0x1

    goto :goto_4c

    .line 88
    :cond_98
    const/4 v0, 0x0

    goto :goto_4c

    .line 90
    :cond_9a
    const-string v6, "7465625*27*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 92
    const/16 v2, 0x8

    .line 94
    const-string v6, "android_perso_lock_code"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 95
    const/4 v0, 0x1

    goto :goto_4c

    .line 97
    :cond_ae
    const/4 v0, 0x0

    goto :goto_4c
.end method
