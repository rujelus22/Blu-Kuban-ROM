.class public Lcom/locationlabs/v3client/V3ApiService;
.super Landroid/app/IntentService;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/locationlabs/v3client/V3ApiService$i;,
        Lcom/locationlabs/v3client/V3ApiService$f;,
        Lcom/locationlabs/v3client/V3ApiService$h;,
        Lcom/locationlabs/v3client/V3ApiService$m;,
        Lcom/locationlabs/v3client/V3ApiService$l;,
        Lcom/locationlabs/v3client/V3ApiService$d;,
        Lcom/locationlabs/v3client/V3ApiService$b;,
        Lcom/locationlabs/v3client/V3ApiService$g;,
        Lcom/locationlabs/v3client/V3ApiService$a;,
        Lcom/locationlabs/v3client/V3ApiService$e;,
        Lcom/locationlabs/v3client/V3ApiService$j;,
        Lcom/locationlabs/v3client/V3ApiService$c;,
        Lcom/locationlabs/v3client/V3ApiService$k;,
        Lcom/locationlabs/v3client/V3ApiService$n;
    }
.end annotation


# instance fields
.field a:Lw;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 513
    const-string v0, "V3ApiService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 647
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/locationlabs/v3client/V3ApiService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.locationlabs.v3client.extra.DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 726
    const-string v0, "com.locationlabs.v3client.action.GET_CONFIG"

    .line 730
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 731
    return-void
.end method

.method public static a(Landroid/content/Context;Lbh;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 761
    new-instance v0, Leo;

    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Leo;-><init>(Ljava/lang/String;Lbh;)V

    .line 762
    const-string v1, "com.locationlabs.v3client.action.SEND_ERROR_DATA"

    .line 766
    invoke-virtual {v0}, Lct;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 767
    return-void
.end method

.method public static a(Landroid/content/Context;Lcg;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 676
    if-nez p1, :cond_74

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lam;->a(J)Lcg;

    move-result-object v0

    .line 677
    :goto_b
    new-instance v1, Lz;

    const-string v2, "com.locationlabs.v3client.action.NOTIFICATION"

    invoke-direct {v1, v2}, Lz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lz;->b(Landroid/content/Context;)V

    .line 678
    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v1

    .line 679
    new-instance v2, Ldy;

    invoke-direct {v2, v1, v0}, Ldy;-><init>(Ljava/lang/String;Lcg;)V

    .line 680
    invoke-static {p0, v2}, Lae;->a(Landroid/content/Context;Ldy;)V

    .line 681
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 682
    invoke-interface {v0}, Lw;->m()Ljava/lang/Long;

    move-result-object v0

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 686
    const-string v3, "com.locationlabs.v3client.action.NOTIFICATION"

    .line 690
    const-string v4, ""

    invoke-static {p0, v3, v4}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 691
    const-string v4, "DELAYED_NOTIFICATION_TIME_MSEC"

    invoke-static {v4}, Ln;->d(Ljava/lang/String;)J

    move-result-wide v4

    .line 692
    if-nez p2, :cond_50

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-gtz v6, :cond_50

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v4

    cmp-long v6, v6, v1

    if-gez v6, :cond_54

    .line 696
    :cond_50
    invoke-static {p0, v3}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 705
    :goto_53
    return-void

    .line 698
    :cond_54
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    sub-long v1, v4, v1

    .line 700
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 701
    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 702
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 703
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_53

    :cond_74
    move-object v0, p1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 734
    new-instance v0, Lcw;

    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v1, "com.locationlabs.v3client.action.CHANGE_PHONE_NUMBER"

    .line 739
    invoke-virtual {v0}, Lct;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 740
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 770
    new-instance v0, Ldj;

    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Ldj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.locationlabs.v3client.action.GET_FEATURE."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 778
    invoke-virtual {v0}, Lct;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 779
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 6

    .prologue
    .line 524
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    iput-object v0, p0, Lcom/locationlabs/v3client/V3ApiService;->a:Lw;

    .line 526
    iget-object v0, p0, Lcom/locationlabs/v3client/V3ApiService;->a:Lw;

    invoke-interface {v0}, Lw;->P()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending previously persisted exception to server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li;->c(Ljava/lang/String;)V

    new-instance v3, Lbh;

    invoke-direct {v3, v0, v1}, Lbh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lbh;)V

    goto :goto_14

    .line 528
    :cond_4b
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 529
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    .line 545
    if-nez p1, :cond_3

    .line 626
    :cond_2
    :goto_2
    return-void

    .line 552
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_2

    .line 554
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.locationlabs.v3client.extra.DATA"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    if-nez v1, :cond_1e

    .line 557
    new-instance v1, Lz;

    invoke-direct {v1, v0}, Lz;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v1, p0}, Lz;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 561
    :cond_1e
    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v2

    .line 563
    const/4 v3, 0x0

    .line 564
    const-string v4, "com.locationlabs.v3client.action.NOTIFICATION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 565
    invoke-static {p0}, Lae;->a(Landroid/content/Context;)Ldy;

    move-result-object v3

    .line 566
    if-eqz v3, :cond_35

    iget-object v4, v3, Ldy;->a:Lcg;

    if-nez v4, :cond_49

    .line 567
    :cond_35
    const-string v0, "Null data for Notification successful attempt already occured for this retry"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 573
    :cond_3b
    const-string v4, "com.locationlabs.v3client.action.SEND_CONTACT_LIST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 575
    invoke-static {}, Lcom/locationlabs/v3client/feature/contact/ContactManager;->a()Ldy;

    move-result-object v3

    .line 576
    if-eqz v3, :cond_2

    .line 594
    :cond_49
    :goto_49
    const-string v4, "com.locationlabs.v3client.action.GET_ACCOUNT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 595
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$k;

    invoke-direct {v0, p0, v2, v1}, Lcom/locationlabs/v3client/V3ApiService$k;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$k;->d(Landroid/content/Context;)V

    goto :goto_2

    .line 581
    :cond_5a
    const-string v4, "com.locationlabs.v3client.action.SEND_APP_LIST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 582
    invoke-static {}, Lcom/locationlabs/v3client/feature/applist/ApplistService;->a()Ldy;

    move-result-object v3

    goto :goto_49

    .line 585
    :cond_67
    if-nez v1, :cond_49

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null data for action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successful attempt already occured for this retry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 596
    :cond_87
    const-string v4, "com.locationlabs.v3client.action.CHANGE_PUSH_ID"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 597
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$c;

    invoke-direct {v0, p0, v2, v1}, Lcom/locationlabs/v3client/V3ApiService$c;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$c;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 598
    :cond_99
    const-string v4, "com.locationlabs.v3client.action.NOTIFICATION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 599
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$j;

    invoke-direct {v0, p0, v3}, Lcom/locationlabs/v3client/V3ApiService$j;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ldy;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$j;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 600
    :cond_ab
    const-string v4, "com.locationlabs.v3client.action.SEND_CONTACT_LIST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 601
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$e;

    invoke-direct {v0, p0, v3}, Lcom/locationlabs/v3client/V3ApiService$e;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ldy;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$e;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 602
    :cond_bd
    const-string v4, "com.locationlabs.v3client.action.SEND_APP_LIST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 603
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$a;

    invoke-direct {v0, p0, v3}, Lcom/locationlabs/v3client/V3ApiService$a;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ldy;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$a;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 604
    :cond_cf
    const-string v3, "com.locationlabs.v3client.action.GET_CONFIG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 605
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$g;

    invoke-direct {v0, p0, v2, v1}, Lcom/locationlabs/v3client/V3ApiService$g;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$g;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 606
    :cond_e1
    const-string v3, "com.locationlabs.v3client.action.CHANGE_PHONE_NUMBER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 607
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$b;

    invoke-direct {v0, p0, v2, v1}, Lcom/locationlabs/v3client/V3ApiService$b;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$b;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 608
    :cond_f3
    const-string v3, "com.locationlabs.v3client.action.CLAIM_PHONE_NUMBER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 609
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$d;

    invoke-direct {v0, p0, v2, v1}, Lcom/locationlabs/v3client/V3ApiService$d;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$d;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 610
    :cond_105
    const-string v3, "com.locationlabs.v3client.action.SEND_DEBUG_DATA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 611
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$l;

    invoke-direct {v0, p0, v2, v1}, Lcom/locationlabs/v3client/V3ApiService$l;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$l;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 612
    :cond_117
    const-string v3, "com.locationlabs.v3client.action.SEND_ERROR_DATA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 613
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$m;

    invoke-direct {v0, p0, v2, v1}, Lcom/locationlabs/v3client/V3ApiService$m;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$m;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 614
    :cond_129
    if-eqz v0, :cond_13d

    const-string v3, "com.locationlabs.v3client.action.GET_FEATURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13d

    .line 615
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$h;

    invoke-direct {v0, p0, v2, v1}, Lcom/locationlabs/v3client/V3ApiService$h;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$h;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 616
    :cond_13d
    const-string v3, "com.locationlabs.v3client.action.GET_APPLICATION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 617
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$f;

    invoke-direct {v0, p0, v2, v1}, Lcom/locationlabs/v3client/V3ApiService$f;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$f;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 618
    :cond_14f
    if-eqz v0, :cond_163

    const-string v3, "com.locationlabs.v3client.action.GET_RESOURCE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_163

    .line 619
    new-instance v0, Lcom/locationlabs/v3client/V3ApiService$i;

    invoke-direct {v0, p0, v2, v1}, Lcom/locationlabs/v3client/V3ApiService$i;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/locationlabs/v3client/V3ApiService$i;->d(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 621
    :cond_163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected intent action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
