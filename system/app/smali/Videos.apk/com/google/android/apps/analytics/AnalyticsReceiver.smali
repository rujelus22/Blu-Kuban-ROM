.class public Lcom/google/android/apps/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static formatReferrer(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    array-length v4, v3

    move v0, v2

    :goto_10
    if-ge v0, v4, :cond_1d

    aget-object v6, v3, v0

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-eq v7, v8, :cond_47

    :cond_1d
    const-string v0, "utm_campaign"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_51

    move v0, v1

    :goto_26
    const-string v3, "utm_medium"

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_53

    move v3, v1

    :goto_2f
    const-string v4, "utm_source"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_55

    move v4, v1

    :goto_38
    if-eqz v0, :cond_3e

    if-eqz v3, :cond_3e

    if-nez v4, :cond_57

    :cond_3e
    const-string v0, "googleanalytics"

    const-string v1, "Badly formatted referrer missing campaign, name or source"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_46
    return-object v0

    :cond_47
    aget-object v7, v6, v2

    aget-object v6, v6, v1

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_51
    move v0, v2

    goto :goto_26

    :cond_53
    move v3, v2

    goto :goto_2f

    :cond_55
    move v4, v2

    goto :goto_38

    :cond_57
    const/4 v0, 0x7

    new-array v4, v0, [[Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "utmcid"

    aput-object v0, v3, v2

    const-string v0, "utm_id"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v2

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "utmcsr"

    aput-object v0, v3, v2

    const-string v0, "utm_source"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v1

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "utmgclid"

    aput-object v0, v3, v2

    const-string v0, "gclid"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    aput-object v3, v4, v8

    const/4 v3, 0x3

    new-array v6, v8, [Ljava/lang/String;

    const-string v0, "utmccn"

    aput-object v0, v6, v2

    const-string v0, "utm_campaign"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v1

    aput-object v6, v4, v3

    const/4 v3, 0x4

    new-array v6, v8, [Ljava/lang/String;

    const-string v0, "utmcmd"

    aput-object v0, v6, v2

    const-string v0, "utm_medium"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v1

    aput-object v6, v4, v3

    const/4 v3, 0x5

    new-array v6, v8, [Ljava/lang/String;

    const-string v0, "utmctr"

    aput-object v0, v6, v2

    const-string v0, "utm_term"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v1

    aput-object v6, v4, v3

    const/4 v3, 0x6

    new-array v6, v8, [Ljava/lang/String;

    const-string v0, "utmcct"

    aput-object v0, v6, v2

    const-string v0, "utm_content"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v1

    aput-object v6, v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    move v3, v1

    :goto_e3
    array-length v6, v4

    if-ge v0, v6, :cond_11d

    aget-object v6, v4, v0

    aget-object v6, v6, v1

    if-eqz v6, :cond_114

    aget-object v6, v4, v0

    aget-object v6, v6, v1

    const-string v7, "+"

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_117

    move v3, v2

    :goto_103
    aget-object v7, v4, v0

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_114
    add-int/lit8 v0, v0, 0x1

    goto :goto_e3

    :cond_117
    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_103

    :cond_11d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_46
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-static {v0}, Lcom/google/android/apps/analytics/AnalyticsReceiver;->formatReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    new-instance v1, Lcom/google/android/apps/analytics/PersistentEventStore;

    new-instance v2, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-direct {v2, p1}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/google/android/apps/analytics/PersistentEventStore;-><init>(Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;)V

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/PersistentEventStore;->setReferrer(Ljava/lang/String;)V

    const-string v1, "googleanalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored referrer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_41
    const-string v0, "googleanalytics"

    const-string v1, "Badly formatted referrer, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method
