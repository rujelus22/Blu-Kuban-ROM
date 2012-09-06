.class public final Lcom/twitter/android/client/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/twitter/android/util/m;
.implements Lcom/twitter/android/widget/am;


# static fields
.field private static i:Lcom/twitter/android/client/b;


# instance fields
.field public final a:Lcom/twitter/android/util/l;

.field final b:Landroid/content/Context;

.field final c:Landroid/app/NotificationManager;

.field final d:Landroid/location/LocationManager;

.field e:Z

.field public f:F

.field public final g:F

.field h:Z

.field private final j:Landroid/util/SparseArray;

.field private final k:Landroid/util/SparseArray;

.field private final l:Ljava/util/ArrayList;

.field private final m:Ljava/util/HashMap;

.field private final n:Ljava/util/HashMap;

.field private final o:Landroid/os/Handler;

.field private final p:Lcom/twitter/android/service/k;

.field private final q:Ljava/util/HashMap;

.field private final r:Ljava/util/HashMap;

.field private final s:Ljava/util/HashSet;

.field private t:Lcom/twitter/android/api/c;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Lcom/twitter/android/client/f;

.field private final y:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/b;->r:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    new-instance v0, Lcom/twitter/android/client/c;

    invoke-direct {v0, p0}, Lcom/twitter/android/client/c;-><init>(Lcom/twitter/android/client/b;)V

    iput-object v0, p0, Lcom/twitter/android/client/b;->y:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-object p1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/twitter/android/client/b;->c:Landroid/app/NotificationManager;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/twitter/android/client/b;->d:Landroid/location/LocationManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/client/b;->o:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/b;->m:Ljava/util/HashMap;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/twitter/android/client/b;->j:Landroid/util/SparseArray;

    new-instance v2, Lcom/twitter/android/util/v;

    invoke-direct {v2, p1, v4, v0}, Lcom/twitter/android/util/v;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/twitter/android/util/v;

    invoke-direct {v2, p1, v3, v0}, Lcom/twitter/android/util/v;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/twitter/android/util/l;

    invoke-direct {v1, p1, p0, v0}, Lcom/twitter/android/util/l;-><init>(Landroid/content/Context;Lcom/twitter/android/util/m;I)V

    iput-object v1, p0, Lcom/twitter/android/client/b;->a:Lcom/twitter/android/util/l;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/client/b;->k:Landroid/util/SparseArray;

    new-instance v1, Lcom/twitter/android/util/n;

    invoke-direct {v1, v4}, Lcom/twitter/android/util/n;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/twitter/android/util/n;

    invoke-direct {v1, v3}, Lcom/twitter/android/util/n;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    new-instance v0, Lcom/twitter/android/client/d;

    invoke-direct {v0, p0}, Lcom/twitter/android/client/d;-><init>(Lcom/twitter/android/client/b;)V

    new-instance v1, Lcom/twitter/android/service/k;

    invoke-direct {v1, v0}, Lcom/twitter/android/service/k;-><init>(Lcom/twitter/android/service/e;)V

    iput-object v1, p0, Lcom/twitter/android/client/b;->p:Lcom/twitter/android/service/k;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/twitter/android/client/b;->g:F

    const-string v0, "14"

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/client/b;->f:F

    return-void
.end method

.method private A()Lcom/twitter/android/client/Session;
    .registers 8

    iget-object v1, p0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->b()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    if-ne v3, v4, :cond_d

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    monitor-exit v1

    :goto_2c
    return-object v0

    :cond_2d
    new-instance v0, Lcom/twitter/android/client/Session;

    invoke-direct {v0}, Lcom/twitter/android/client/Session;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3d

    goto :goto_2c

    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private B()I
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photo_service"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private C()V
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/client/b;->w:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twitter/android/client/b;->d:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/client/b;->w:Z

    iget-object v0, p0, Lcom/twitter/android/client/b;->x:Lcom/twitter/android/client/f;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twitter/android/client/b;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/client/b;->x:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_17
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .registers 7

    const v3, 0x7f0b0049

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_2f

    const v1, 0x7f0b00f0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_17
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00ee

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_2f
    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_17
.end method

.method private a(ILandroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 9

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0200ff

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const v3, 0x7f0b0019

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1, p2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v2
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/android/platform/f;Landroid/content/Intent;ILjava/lang/String;ZZLjava/lang/String;)Landroid/app/Notification;
    .registers 15

    const/4 v6, 0x0

    iget v1, p1, Lcom/twitter/android/platform/f;->g:I

    iget-object v0, p1, Lcom/twitter/android/platform/f;->h:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, p3, v0, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput v6, v3, Landroid/app/Notification;->number:I

    if-eqz p5, :cond_1c

    iget v4, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->defaults:I

    :cond_1c
    if-eqz p6, :cond_35

    const v4, 0x7f0a0012

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v3, Landroid/app/Notification;->ledARGB:I

    const/16 v2, 0x1f4

    iput v2, v3, Landroid/app/Notification;->ledOnMS:I

    const/16 v2, 0x7d0

    iput v2, v3, Landroid/app/Notification;->ledOffMS:I

    iget v2, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v3, Landroid/app/Notification;->flags:I

    :cond_35
    iget v2, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v3, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x1000

    invoke-static {p0, v6, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, p0, p4, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_63

    if-eqz p7, :cond_63

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_63

    const/4 v0, 0x5

    iput v0, v3, Landroid/app/Notification;->audioStreamType:I

    invoke-static {p7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_63
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-object v3
.end method

.method private static a(Landroid/content/Context;JJLjava/lang/String;)Landroid/content/Intent;
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2, p3, p4}, Lcom/twitter/android/provider/o;->a(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ref_event"

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->az:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/client/b;->p:Lcom/twitter/android/service/k;

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/k;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/k;)Landroid/content/Intent;
    .registers 8

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "soid"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ibinder"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auth"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->h()Lcom/twitter/android/network/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/accounts/Account;)Lcom/twitter/android/client/Session;
    .registers 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v1, "account_user_info"

    invoke-virtual {v4, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/twitter/android/client/b;->A()Lcom/twitter/android/client/Session;

    move-result-object v1

    if-eqz v5, :cond_27

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :try_start_15
    invoke-virtual {v4, p1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    :goto_1b
    if-eqz v0, :cond_2a

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/Session;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/Session;->a(Z)V

    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_27
    :goto_27
    return-object v1

    :cond_28
    const/4 v0, 0x0

    goto :goto_1b

    :cond_2a
    invoke-static {v4, p1}, Lcom/twitter/android/platform/j;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/j;

    move-result-object v3

    const-string v0, "account_settings"

    invoke-virtual {v4, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_27

    invoke-static {v5}, Lcom/twitter/android/api/r;->c(Ljava/lang/String;)Lcom/twitter/android/api/ac;

    move-result-object v4

    invoke-static {v0}, Lcom/twitter/android/api/af;->a(Ljava/lang/String;)Lcom/twitter/android/api/af;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/network/j;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/af;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_42} :catch_43
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_42} :catch_45

    goto :goto_27

    :catch_43
    move-exception v0

    goto :goto_27

    :catch_45
    move-exception v0

    goto :goto_27
.end method

.method private a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    move v2, v0

    :goto_9
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_10

    move v1, v0

    :cond_10
    if-nez v2, :cond_14

    if-eqz v1, :cond_50

    :cond_14
    iget-object v3, p0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_17
    iget-object v0, p0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/Session;

    if-eqz v2, :cond_39

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    :cond_39
    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v5

    cmp-long v5, p3, v5

    if-nez v5, :cond_21

    :cond_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_17 .. :try_end_44} :catchall_57

    :goto_44
    return-object v0

    :cond_45
    move v2, v1

    goto :goto_9

    :cond_47
    monitor-exit v3

    if-nez p2, :cond_50

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p2

    :cond_50
    if-nez p2, :cond_5a

    invoke-direct {p0}, Lcom/twitter/android/client/b;->A()Lcom/twitter/android/client/Session;

    move-result-object v0

    goto :goto_44

    :catchall_57
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5a
    invoke-direct {p0, p2}, Lcom/twitter/android/client/b;->a(Landroid/accounts/Account;)Lcom/twitter/android/client/Session;

    move-result-object v0

    goto :goto_44
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/client/b;
    .registers 4

    const-class v1, Lcom/twitter/android/client/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/twitter/android/client/b;->i:Lcom/twitter/android/client/b;

    if-nez v0, :cond_12

    new-instance v0, Lcom/twitter/android/client/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/android/client/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/client/b;->i:Lcom/twitter/android/client/b;

    :cond_12
    sget-object v0, Lcom/twitter/android/client/b;->i:Lcom/twitter/android/client/b;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/twitter/android/client/Session;Landroid/content/Intent;I)Ljava/lang/String;
    .registers 11

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_4d

    const-string v0, "auth"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/network/j;

    const-string v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/api/ac;

    iget-object v2, v4, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/network/j;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/af;)V

    invoke-direct {p0, p1}, Lcom/twitter/android/client/b;->d(Lcom/twitter/android/client/Session;)Ljava/lang/String;

    invoke-static {v4}, Lcom/twitter/android/api/r;->a(Lcom/twitter/android/api/ac;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->h()Lcom/twitter/android/network/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->i()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1, v5}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/network/j;Ljava/lang/String;)Landroid/accounts/Account;

    invoke-virtual {p1, v6}, Lcom/twitter/android/client/Session;->a(Z)V

    :goto_3a
    return-object v5

    :cond_3b
    iget-object v2, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1, v5}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/network/j;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1, v6}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-string v1, "com.twitter.android.provider.TwitterProvider"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/platform/j;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_3a

    :cond_4d
    const-string v0, "screen_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_6b

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v5, v1, v2}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/Session;)Ljava/lang/String;

    goto :goto_3a

    :cond_6b
    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->a:Lcom/twitter/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/client/Session$LoginStatus;)V

    goto :goto_3a
.end method

.method private a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->b:Lcom/twitter/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/client/Session$LoginStatus;)V

    const-string v0, "LOGIN"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pass"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/network/j;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/af;)V
    .registers 15

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->c:Lcom/twitter/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/client/Session$LoginStatus;)V

    invoke-virtual {p1, p4}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/ac;)V

    invoke-virtual {p1, p2}, Lcom/twitter/android/client/Session;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/network/j;)V

    if-eqz p5, :cond_1a

    invoke-virtual {p1, p5}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/af;)V

    :cond_1a
    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_54

    iget-object v7, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_27
    iget-object v0, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/WidgetControl;

    if-nez v0, :cond_50

    new-instance v0, Lcom/twitter/android/client/WidgetControl;

    iget-object v2, p0, Lcom/twitter/android/client/b;->j:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/util/v;

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;-><init>(Landroid/content/Context;Lcom/twitter/android/util/v;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    monitor-exit v7
    :try_end_51
    .catchall {:try_start_27 .. :try_end_51} :catchall_79

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl;->b()V

    :cond_54
    const-string v0, "sound_effects"

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/client/b;->e:Z

    const-string v0, "font_size"

    const-string v1, "14"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/client/b;->f:F

    const-string v0, "location"

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/client/b;->h:Z

    iget-object v0, p0, Lcom/twitter/android/client/b;->y:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    :catchall_79
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method static synthetic a(Lcom/twitter/android/client/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/client/b;->C()V

    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0142

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .registers 7

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MARK_TWEETS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "sid"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "soid"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account_name"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "i_type"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1, p1}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;I)V

    goto :goto_42

    :cond_52
    return-void
.end method

.method private d(Lcom/twitter/android/client/Session;)Ljava/lang/String;
    .registers 3

    const-string v0, "GET_SETTINGS"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/twitter/android/util/x;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/b;->m:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-object v0
.end method

.method private g(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 7

    iget-boolean v0, p0, Lcom/twitter/android/client/b;->h:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/client/b;->d:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/twitter/android/platform/h;->b(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "long"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    :cond_1f
    return-object p1
.end method

.method private j(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/b;->p:Lcom/twitter/android/service/k;

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/k;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private k(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/client/b;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/4 v0, 0x7

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b
.end method


# virtual methods
.method public final a(Z)I
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/client/b;->t:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twitter/android/client/b;->t:Lcom/twitter/android/api/c;

    iget v0, v0, Lcom/twitter/android/api/c;->a:I

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/twitter/android/client/b;->t:Lcom/twitter/android/api/c;

    iget v0, v0, Lcom/twitter/android/api/c;->a:I

    :goto_e
    if-eqz p1, :cond_12

    add-int/lit8 v0, v0, 0x1

    :cond_12
    return v0

    :cond_13
    const/16 v0, 0x14

    goto :goto_e
.end method

.method public final a()J
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(IJ)Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/client/b;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/v;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/util/v;->a(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJLjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11

    if-eqz p4, :cond_29

    iget v0, p0, Lcom/twitter/android/client/b;->g:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    const-string v0, "_normal."

    const-string v1, "_bigger."

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    move-object v5, p4

    :goto_13
    iget-object v0, p0, Lcom/twitter/android/client/b;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/v;

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/util/v;->a(JJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_29
    move-object v5, p4

    goto :goto_13
.end method

.method public final a(Lcom/twitter/android/provider/m;)Landroid/graphics/Bitmap;
    .registers 6

    iget v0, p1, Lcom/twitter/android/provider/m;->t:I

    iget-wide v1, p1, Lcom/twitter/android/provider/m;->n:J

    iget-object v3, p1, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJ[B)Lcom/twitter/android/api/TweetEntities;
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/client/b;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/n;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/util/n;->a(Ljava/lang/Long;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-static {p4}, Lcom/twitter/android/api/TweetEntities;->a([B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/util/n;->a(Ljava/lang/Long;Lcom/twitter/android/api/TweetEntities;)V

    :cond_19
    move-object v0, v1

    return-object v0
.end method

.method public final a(J)Lcom/twitter/android/client/Session;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;

    move-result-object v0

    return-object v0
.end method

.method public final a(DDLjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "REVERSE_GEO"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "long"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "accuracy"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .registers 6

    const-string v0, "GET_BLOCKING"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJJ)Ljava/lang/String;
    .registers 10

    const-string v0, "ADD_LIST_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJJI)Ljava/lang/String;
    .registers 9

    const-string v0, "GET_LIST_USERS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJJJI)Ljava/lang/String;
    .registers 11

    const-string v0, "USER_TIMELINE"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "since_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JI)Ljava/lang/String;
    .registers 6

    const-string v0, "GET_FAVS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JII)Ljava/lang/String;
    .registers 7

    const-string v0, "GET_USERS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJI)Ljava/lang/String;
    .registers 10

    const-string v0, "HOME"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->g(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "max_id"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "since_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->f()Lcom/twitter/android/api/ac;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJJJI)Ljava/lang/String;
    .registers 12

    const-string v0, "GET_LIST_TWEETS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "since_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_id"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "NEW_DM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "EDIT_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_mode"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JZLjava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "FOLLOW"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device_follow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;II)Ljava/lang/String;
    .registers 7

    const-string v0, "TYPEAHEAD"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;III)Ljava/lang/String;
    .registers 9

    const-string v0, "GET_USERS"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;J)Ljava/lang/String;
    .registers 8

    const-string v0, "USER_TIMELINE"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;JJ)Ljava/lang/String;
    .registers 10

    const-string v0, "RELATED_RESULTS"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;JJILjava/lang/String;)Ljava/lang/String;
    .registers 13

    const-wide/16 v3, 0x0

    const-string v0, "FETCH_STORIES"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->g(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "since_id"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "max_id"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "count"

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lang"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "RETWEET"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;JZ)Ljava/lang/String;
    .registers 9

    const-string v0, "UPDATE_FRIENDSHIP"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "device_follow"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;Lcom/twitter/android/api/af;)Ljava/lang/String;
    .registers 5

    const-string v0, "UPDATE_SETTINGS"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;JDDLjava/lang/String;Lcom/twitter/android/api/TweetEntities;)Ljava/lang/String;
    .registers 15

    const/4 v3, 0x0

    const v0, 0x7f0b0157

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/b;->a(ILandroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x22

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lcom/twitter/android/client/b;->c:Landroid/app/NotificationManager;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v0, "TWEET"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "long"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i_type"

    invoke-direct {p0}, Lcom/twitter/android/client/b;->B()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "UPDATE_PROFILE"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "place"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    const-string v0, "SEARCH_USERS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "count"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "CREATE_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "desc"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Ljava/lang/String;
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_a

    if-nez p1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "GET_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v0, p1, p2}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0}, Lcom/twitter/android/client/b;->A()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_38
    invoke-direct {p0, v0, p1, p2}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 21

    const-string v1, "SEARCH_TWEETS"

    invoke-direct {p0, v1}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "q_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "q"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "since_id"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "count"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "max_id"

    invoke-virtual {v1, v2, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "show_user"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "geo"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "place"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "page"

    move/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "lang"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "locale"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "q_type"

    move/from16 v0, p14

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fetch_stories"

    move/from16 v0, p15

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "USERNAME_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_2f

    const-string v2, "lang"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2f
    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "SIGNUP"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "screen_name"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "email"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pass"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "q_name"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "q"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "lang"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_45
    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZI)Ljava/lang/String;
    .registers 6

    const-string v0, "GET_USER_RECOMMENDATIONS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "connections"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZIIJ)Ljava/lang/String;
    .registers 9

    const/4 v2, 0x0

    const-string v0, "GET_USER_RECOMMENDATIONS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "connections"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "limit"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([J)Ljava/lang/String;
    .registers 4

    const-string v0, "DELETE_DMS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([Ljava/lang/String;[Ljava/lang/String;[JIJ)Ljava/lang/String;
    .registers 11

    const-string v0, "LOOKUP"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILcom/twitter/android/util/w;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/client/b;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/v;

    invoke-virtual {v0, p2}, Lcom/twitter/android/util/v;->a(Lcom/twitter/android/util/w;)V

    return-void
.end method

.method public final a(ILjava/lang/String;J)V
    .registers 9

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v1

    const-string v2, "LOG"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/k;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "log_ev"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "impression_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "trend_id"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(JLcom/twitter/android/service/ScribeEvent;)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V

    return-void
.end method

.method public final a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    new-instance v1, Lcom/twitter/android/service/ScribeLog;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V

    return-void
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    if-eqz p4, :cond_1a

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, p4, v2, v3}, Lcom/twitter/android/client/b;->a(ILjava/lang/String;J)V

    const-string v1, "imp"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1a
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method final a(Landroid/content/Intent;)V
    .registers 33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Lcom/twitter/android/client/g;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v4, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Lcom/twitter/android/platform/d;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v19

    if-eqz v18, :cond_15a

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/twitter/android/platform/d;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/twitter/android/platform/d;->f:Lcom/twitter/android/platform/f;

    if-eqz v4, :cond_74

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/twitter/android/platform/d;->b:J

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;JZ)V

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/twitter/android/platform/d;->b:J

    cmp-long v4, v4, v19

    if-nez v4, :cond_74

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    const/4 v4, 0x0

    move v15, v4

    :goto_52
    move/from16 v0, v21

    if-ge v15, v0, :cond_74

    aget-object v4, v16, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/twitter/android/platform/d;->f:Lcom/twitter/android/platform/f;

    iget v13, v13, Lcom/twitter/android/platform/f;->b:I

    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/twitter/android/platform/d;->f:Lcom/twitter/android/platform/f;

    iget v14, v14, Lcom/twitter/android/platform/f;->b:I

    invoke-virtual/range {v4 .. v14}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V

    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto :goto_52

    :cond_74
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    if-eqz v4, :cond_b0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;JZ)V

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/twitter/android/platform/d;->b:J

    cmp-long v4, v4, v19

    if-nez v4, :cond_b0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    const/4 v4, 0x0

    move v15, v4

    :goto_93
    move/from16 v0, v21

    if-ge v15, v0, :cond_b0

    aget-object v4, v16, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    iget v14, v14, Lcom/twitter/android/platform/f;->b:I

    invoke-virtual/range {v4 .. v14}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJI)V

    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto :goto_93

    :cond_b0
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/twitter/android/platform/d;->g:Lcom/twitter/android/platform/f;

    if-eqz v4, :cond_df

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/twitter/android/platform/d;->b:J

    cmp-long v4, v4, v19

    if-nez v4, :cond_df

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v4, 0x0

    move v11, v4

    :goto_c3
    if-ge v11, v12, :cond_df

    aget-object v4, v16, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/twitter/android/platform/d;->g:Lcom/twitter/android/platform/f;

    iget v9, v9, Lcom/twitter/android/platform/f;->b:I

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/twitter/android/platform/d;->g:Lcom/twitter/android/platform/f;

    iget v10, v10, Lcom/twitter/android/platform/f;->a:I

    invoke-virtual/range {v4 .. v10}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;II)V

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_c3

    :cond_df
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/twitter/android/platform/d;->h:Lcom/twitter/android/platform/f;

    if-eqz v4, :cond_10a

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/twitter/android/platform/d;->b:J

    cmp-long v4, v4, v19

    if-nez v4, :cond_10a

    move-object/from16 v0, v16

    array-length v13, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_f2
    if-ge v12, v13, :cond_10a

    aget-object v4, v16, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/twitter/android/platform/d;->h:Lcom/twitter/android/platform/f;

    iget v9, v9, Lcom/twitter/android/platform/f;->a:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v4 .. v11}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;Z)V

    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_f2

    :cond_10a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_15a

    const-string v5, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_15b

    const-string v5, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15b

    const/4 v4, 0x1

    :goto_127
    if-eqz v4, :cond_15a

    const-string v4, "show_notif"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_15a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.twitter.android.auth.login"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_15a

    array-length v5, v4

    if-lez v5, :cond_15a

    array-length v7, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/twitter/android/platform/d;->a:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget v5, v0, Lcom/twitter/android/platform/d;->d:I

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15a

    if-nez v5, :cond_15d

    :cond_15a
    :goto_15a
    return-void

    :cond_15b
    const/4 v4, 0x0

    goto :goto_127

    :cond_15d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/twitter/android/client/b;->k(Ljava/lang/String;)I

    move-result v6

    and-int/lit8 v4, v6, 0x1

    if-eqz v4, :cond_346

    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_346

    const/4 v4, 0x1

    move/from16 v25, v4

    :goto_174
    and-int/lit8 v4, v5, 0x2

    if-eqz v4, :cond_34b

    const/4 v4, 0x1

    move/from16 v24, v4

    :goto_17b
    and-int/lit8 v4, v5, 0x8

    if-eqz v4, :cond_350

    const/4 v4, 0x1

    move/from16 v23, v4

    :goto_182
    and-int/lit8 v4, v5, 0x10

    if-eqz v4, :cond_355

    const/4 v4, 0x1

    move/from16 v22, v4

    :goto_189
    and-int/lit8 v4, v5, 0x20

    if-eqz v4, :cond_35a

    const/4 v4, 0x1

    move/from16 v17, v4

    :goto_190
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_35f

    if-nez v24, :cond_19c

    if-nez v23, :cond_19c

    if-nez v22, :cond_19c

    if-eqz v17, :cond_35f

    :cond_19c
    const/4 v4, 0x1

    move/from16 v16, v4

    :goto_19f
    and-int/lit8 v4, v6, 0x4

    if-eqz v4, :cond_364

    and-int/lit8 v4, v5, 0x4

    if-eqz v4, :cond_364

    const/4 v4, 0x1

    move v13, v4

    :goto_1a9
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/twitter/android/platform/d;->g:Lcom/twitter/android/platform/f;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/twitter/android/platform/d;->f:Lcom/twitter/android/platform/f;

    move-object/from16 v28, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz v25, :cond_559

    if-eqz v28, :cond_559

    move-object/from16 v0, v28

    iget v6, v0, Lcom/twitter/android/platform/f;->a:I

    add-int/lit8 v6, v6, 0x0

    move/from16 v21, v6

    :goto_1ca
    if-eqz v16, :cond_556

    if-eqz v26, :cond_556

    move-object/from16 v0, v26

    iget v5, v0, Lcom/twitter/android/platform/f;->a:I

    add-int/lit8 v5, v5, 0x0

    move v15, v5

    :goto_1d5
    if-eqz v13, :cond_553

    if-eqz v27, :cond_553

    move-object/from16 v0, v27

    iget v4, v0, Lcom/twitter/android/platform/f;->a:I

    add-int/lit8 v4, v4, 0x0

    move v14, v4

    :goto_1e0
    add-int v4, v21, v15

    add-int/2addr v4, v14

    if-eqz v4, :cond_15a

    const/4 v4, 0x1

    if-le v7, v4, :cond_368

    move-object/from16 v19, v20

    :goto_1ea
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/twitter/android/provider/d;->a:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "vibrate"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "ringtone"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "light"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, ""

    if-eqz v7, :cond_24a

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_247

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_22b

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_373

    const/4 v4, 0x1

    :cond_22b
    :goto_22b
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_237

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_237
    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_247

    const/4 v6, 0x2

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_376

    const/4 v6, 0x1

    :cond_247
    :goto_247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_24a
    move-object v11, v5

    move v10, v6

    move v9, v4

    if-eqz v13, :cond_2a5

    if-eqz v27, :cond_2a5

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/twitter/android/platform/d;->b:J

    move-object/from16 v0, v27

    iget-wide v6, v0, Lcom/twitter/android/platform/f;->e:J

    const/4 v8, 0x1

    if-gt v14, v8, :cond_268

    const-wide/16 v13, 0x0

    cmp-long v8, v4, v13

    if-eqz v8, :cond_268

    const-wide/16 v13, 0x0

    cmp-long v8, v6, v13

    if-nez v8, :cond_379

    :cond_268
    const v4, 0x7f0b015a

    invoke-virtual {v12, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/twitter/android/platform/f;->h:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/MessagesActivity;

    invoke-direct {v4, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "owner_id"

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/twitter/android/platform/d;->b:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account_name"

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ref_event"

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->az:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x1400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    :goto_29a
    const v7, 0x7f0200fd

    move-object v4, v12

    move-object/from16 v5, v27

    move-object/from16 v8, v19

    invoke-static/range {v4 .. v11}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;Lcom/twitter/android/platform/f;Landroid/content/Intent;ILjava/lang/String;ZZLjava/lang/String;)Landroid/app/Notification;

    :cond_2a5
    if-eqz v16, :cond_2ea

    if-eqz v26, :cond_2ea

    const/4 v4, 0x1

    if-le v15, v4, :cond_3d7

    const v4, 0x7f0b0159

    invoke-virtual {v12, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/twitter/android/platform/f;->h:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v4, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "account_name"

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ref_event"

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->az:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "tab"

    const-string v6, "connect"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "home_item"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    :goto_2dd
    if-eqz v6, :cond_2ea

    const v7, 0x7f0200ff

    move-object v4, v12

    move-object/from16 v5, v26

    move-object/from16 v8, v19

    invoke-static/range {v4 .. v11}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;Lcom/twitter/android/platform/f;Landroid/content/Intent;ILjava/lang/String;ZZLjava/lang/String;)Landroid/app/Notification;

    :cond_2ea
    if-eqz v25, :cond_15a

    if-eqz v28, :cond_15a

    const/4 v4, 0x1

    move/from16 v0, v21

    if-le v0, v4, :cond_50e

    const v4, 0x7f0b0158

    invoke-virtual {v12, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/twitter/android/platform/f;->h:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v4, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "account_name"

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ref_event"

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->az:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "tab"

    const-string v6, "home"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "home_item"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.twitter.android.home."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    :goto_339
    const v7, 0x7f0200fe

    move-object v4, v12

    move-object/from16 v5, v28

    move-object/from16 v8, v19

    invoke-static/range {v4 .. v11}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;Lcom/twitter/android/platform/f;Landroid/content/Intent;ILjava/lang/String;ZZLjava/lang/String;)Landroid/app/Notification;

    goto/16 :goto_15a

    :cond_346
    const/4 v4, 0x0

    move/from16 v25, v4

    goto/16 :goto_174

    :cond_34b
    const/4 v4, 0x0

    move/from16 v24, v4

    goto/16 :goto_17b

    :cond_350
    const/4 v4, 0x0

    move/from16 v23, v4

    goto/16 :goto_182

    :cond_355
    const/4 v4, 0x0

    move/from16 v22, v4

    goto/16 :goto_189

    :cond_35a
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_190

    :cond_35f
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_19f

    :cond_364
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_1a9

    :cond_368
    const v4, 0x7f0b0019

    invoke-virtual {v12, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v4

    goto/16 :goto_1ea

    :cond_373
    const/4 v4, 0x0

    goto/16 :goto_22b

    :cond_376
    const/4 v6, 0x0

    goto/16 :goto_247

    :cond_379
    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    const v13, 0x7f0b0144

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v29, 0x0

    aput-object v8, v14, v29

    const/16 v29, 0x1

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/twitter/android/platform/f;->c:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v14, v29

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v27

    iput-object v13, v0, Lcom/twitter/android/platform/f;->h:Ljava/lang/String;

    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {v13, v12, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v14, "owner_id"

    invoke-virtual {v13, v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "user_id"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "user_name"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.twitter.android.home.messages."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x1400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ref_event"

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->az:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v6

    goto/16 :goto_29a

    :cond_3d7
    if-eqz v24, :cond_426

    move-object/from16 v0, v18

    iget v4, v0, Lcom/twitter/android/platform/d;->e:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_426

    const v4, 0x7f0b0143

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/twitter/android/platform/f;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v12, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/twitter/android/platform/f;->h:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-wide v13, v0, Lcom/twitter/android/platform/f;->d:J

    move-object/from16 v0, v18

    iget-wide v15, v0, Lcom/twitter/android/platform/d;->b:J

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/twitter/android/platform/d;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;JJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.twitter.android.home.mentions."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    goto/16 :goto_2dd

    :cond_426
    if-eqz v22, :cond_475

    move-object/from16 v0, v18

    iget v4, v0, Lcom/twitter/android/platform/d;->e:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_475

    const v4, 0x7f0b015b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/twitter/android/platform/f;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v12, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/twitter/android/platform/f;->h:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-wide v13, v0, Lcom/twitter/android/platform/f;->d:J

    move-object/from16 v0, v18

    iget-wide v15, v0, Lcom/twitter/android/platform/d;->b:J

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/twitter/android/platform/d;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;JJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.twitter.android.home.fav."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    goto/16 :goto_2dd

    :cond_475
    if-eqz v23, :cond_4c4

    move-object/from16 v0, v18

    iget v4, v0, Lcom/twitter/android/platform/d;->e:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4c4

    const v4, 0x7f0b015c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/twitter/android/platform/f;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v12, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/twitter/android/platform/f;->h:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-wide v13, v0, Lcom/twitter/android/platform/f;->d:J

    move-object/from16 v0, v18

    iget-wide v15, v0, Lcom/twitter/android/platform/d;->b:J

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/twitter/android/platform/d;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;JJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.twitter.android.home.rt."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    goto/16 :goto_2dd

    :cond_4c4
    if-eqz v17, :cond_50b

    move-object/from16 v0, v18

    iget v4, v0, Lcom/twitter/android/platform/d;->e:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_50b

    const v4, 0x7f0b015d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v12, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/twitter/android/platform/f;->h:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v4, v12, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "screen_name"

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.twitter.android.home.fol."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    goto/16 :goto_2dd

    :cond_50b
    const/4 v6, 0x0

    goto/16 :goto_2dd

    :cond_50e
    const v4, 0x7f0b015e

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/twitter/android/platform/f;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v12, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/twitter/android/platform/f;->h:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-wide v13, v0, Lcom/twitter/android/platform/f;->d:J

    move-object/from16 v0, v18

    iget-wide v15, v0, Lcom/twitter/android/platform/d;->b:J

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/twitter/android/platform/d;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;JJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.twitter.android.home.tw."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    goto/16 :goto_339

    :cond_553
    move v14, v4

    goto/16 :goto_1e0

    :cond_556
    move v15, v5

    goto/16 :goto_1d5

    :cond_559
    move/from16 v21, v6

    goto/16 :goto_1ca
.end method

.method public final a(Landroid/location/LocationListener;)V
    .registers 9

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/twitter/android/client/b;->w:Z

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "loc_timeout_t"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    add-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_50

    iget-object v1, p0, Lcom/twitter/android/client/b;->d:Landroid/location/LocationManager;

    invoke-static {v1, p0}, Lcom/twitter/android/platform/h;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/client/b;->w:Z

    iget-boolean v1, p0, Lcom/twitter/android/client/b;->w:Z

    if-eqz v1, :cond_50

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "loc_timeout_t"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/twitter/android/client/b;->x:Lcom/twitter/android/client/f;

    if-nez v0, :cond_47

    new-instance v0, Lcom/twitter/android/client/f;

    invoke-direct {v0, p0}, Lcom/twitter/android/client/f;-><init>(Lcom/twitter/android/client/b;)V

    iput-object v0, p0, Lcom/twitter/android/client/b;->x:Lcom/twitter/android/client/f;

    :cond_47
    iget-object v0, p0, Lcom/twitter/android/client/b;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/client/b;->x:Lcom/twitter/android/client/f;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_50
    return-void
.end method

.method public final a(Lcom/twitter/android/api/ac;)V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/ac;)V

    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;)V
    .registers 6

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/b;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/provider/bg;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/twitter/android/client/g;

    iget-object v0, p0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v2, :cond_2c

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2c
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;JJLcom/twitter/android/api/TweetEntities;)V
    .registers 10

    const-string v0, "SAVE_DRAFT"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;[J)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const-string v1, "MARK_TWEETS"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/k;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "status_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Lcom/twitter/android/client/g;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public final a(Lcom/twitter/android/network/j;)V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/network/j;)V

    return-void
.end method

.method public final a(Lcom/twitter/android/service/ScribeLog;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V

    return-void
.end method

.method public final a(Lcom/twitter/android/util/p;Ljava/util/HashMap;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/g;

    invoke-virtual {v0, p2}, Lcom/twitter/android/client/g;->a(Ljava/util/HashMap;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;)V

    :cond_10
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/client/b;->r:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/b;->k(Ljava/lang/String;)I

    move-result v1

    or-int/lit8 v1, v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;JZ)V
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_36

    iget-object v6, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_9
    iget-object v0, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/WidgetControl;

    if-nez v0, :cond_37

    new-instance v0, Lcom/twitter/android/client/WidgetControl;

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/client/b;->j:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/util/v;

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;-><init>(Landroid/content/Context;Lcom/twitter/android/util/v;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl;->b()V

    monitor-exit v6
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_3c

    :cond_36
    :goto_36
    return-void

    :cond_37
    monitor-exit v6

    invoke-virtual {v0, p4}, Lcom/twitter/android/client/WidgetControl;->b(Z)V

    goto :goto_36

    :catchall_3c
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 13

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->f()Lcom/twitter/android/api/ac;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    const v4, 0x7f0b0054

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v7

    aput-object p2, v5, v8

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    const v4, 0x7f0b0055

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/twitter/android/api/ac;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v0, v0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    aput-object v0, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_e
.end method

.method public final b(Lcom/twitter/android/provider/m;)Lcom/twitter/android/api/TweetEntities;
    .registers 6

    iget v0, p1, Lcom/twitter/android/provider/m;->C:I

    iget-wide v1, p1, Lcom/twitter/android/provider/m;->s:J

    iget-object v3, p1, Lcom/twitter/android/provider/m;->y:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(IJ[B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/twitter/android/client/Session;
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;

    move-result-object v0

    return-object v0
.end method

.method public final b(IJJ)Ljava/lang/String;
    .registers 10

    const-string v0, "REMOVE_LIST_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(IJJI)Ljava/lang/String;
    .registers 11

    const-string v0, "ACTIVITY"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "since_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Ljava/lang/String;
    .registers 7

    const-string v0, "GET_FRIENDSHIP"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JII)Ljava/lang/String;
    .registers 9

    const-string v0, "GET_LISTS"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "page"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JJI)Ljava/lang/String;
    .registers 12

    const-wide/16 v4, 0x0

    const-string v0, "GET_MESSAGES"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "since_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "UNFOLLOW"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/twitter/android/client/Session;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->b()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->c:Lcom/twitter/android/client/Session$LoginStatus;

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->b()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/Session$LoginStatus;->b:Lcom/twitter/android/client/Session$LoginStatus;

    if-ne v0, v1, :cond_20

    :cond_10
    sget-object v0, Lcom/twitter/android/client/Session$LoginStatus;->d:Lcom/twitter/android/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/client/Session$LoginStatus;)V

    const-string v0, "LOGOUT"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public final b(Lcom/twitter/android/client/Session;J)Ljava/lang/String;
    .registers 6

    const-string v0, "DESTROY_STATUS"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "CREATE_FAV"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "NEW_DM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b([J)Ljava/lang/String;
    .registers 6

    const-string v0, "FOLLOW_ALL"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILcom/twitter/android/util/w;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/client/b;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/v;

    invoke-virtual {v0, p2}, Lcom/twitter/android/util/v;->b(Lcom/twitter/android/util/w;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .registers 15

    const/4 v12, 0x1

    iget-boolean v0, p0, Lcom/twitter/android/client/b;->v:Z

    if-nez v0, :cond_65

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {v7, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v6, v0

    :goto_12
    if-ge v6, v9, :cond_63

    aget-object v0, v8, v6

    const-string v1, "account_user_info"

    invoke-virtual {v7, v0, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    :try_start_1e
    invoke-static {v0}, Lcom/twitter/android/api/r;->c(Ljava/lang/String;)Lcom/twitter/android/api/ac;

    move-result-object v10

    if-eqz v10, :cond_5a

    iget-object v11, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_27} :catch_61
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_66

    :try_start_27
    iget-object v0, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    iget-wide v1, v10, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/WidgetControl;

    if-nez v0, :cond_59

    new-instance v0, Lcom/twitter/android/client/WidgetControl;

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/client/b;->j:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/util/v;

    iget-object v3, v10, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iget-wide v4, v10, Lcom/twitter/android/api/ac;->a:J

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/WidgetControl;-><init>(Landroid/content/Context;Lcom/twitter/android/util/v;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    iget-wide v2, v10, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/twitter/android/client/WidgetControl;->b()V

    :cond_59
    monitor-exit v11
    :try_end_5a
    .catchall {:try_start_27 .. :try_end_5a} :catchall_5e

    :cond_5a
    :goto_5a
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_12

    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v11

    throw v0
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_61} :catch_61
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_61} :catch_66

    :catch_61
    move-exception v0

    goto :goto_5a

    :cond_63
    iput-boolean v12, p0, Lcom/twitter/android/client/b;->v:Z

    :cond_65
    return-void

    :catch_66
    move-exception v0

    goto :goto_5a
.end method

.method final b(Landroid/content/Intent;)V
    .registers 21

    const-string v3, "sid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/client/Session;

    if-nez v4, :cond_1c

    const-string v3, "AC"

    const-string v4, "Expired session. Ignoring response"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    :sswitch_1b
    return-void

    :cond_1c
    const-string v3, "rid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "action_code"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v3, "resp_code"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v3, "reason_phrase"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Lcom/twitter/android/client/g;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch v15, :pswitch_data_a08

    :cond_5d
    :goto_5d
    :pswitch_5d
    const-string v3, "rate_limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/i;

    invoke-virtual {v4, v3}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/i;)V

    const/16 v3, 0x191

    if-ne v6, v3, :cond_1b

    sparse-switch v15, :sswitch_data_a9c

    const-string v3, "VERIFY"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    goto :goto_1b

    :pswitch_7f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v11

    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v8, "com.twitter.android.auth.login"

    invoke-virtual {v3, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_f8

    const/4 v8, 0x1

    :goto_99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->u:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const/4 v14, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    invoke-static {v3, v14, v0, v1}, Lcom/twitter/android/provider/bg;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/android/client/b;->u:Ljava/lang/String;

    :cond_b4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    monitor-enter v14

    :try_start_b9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/client/WidgetControl;

    monitor-exit v14
    :try_end_ca
    .catchall {:try_start_b9 .. :try_end_ca} :catchall_fa

    if-eqz v3, :cond_cf

    invoke-virtual {v3, v8}, Lcom/twitter/android/client/WidgetControl;->a(Z)V

    :cond_cf
    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->a()V

    if-eqz v8, :cond_157

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->m:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/client/b;->j:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v14

    move v9, v3

    :goto_e5
    if-ge v9, v14, :cond_fd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->j:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/util/v;

    invoke-virtual {v3}, Lcom/twitter/android/util/v;->a()V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_e5

    :cond_f8
    const/4 v8, 0x0

    goto :goto_99

    :catchall_fa
    move-exception v3

    monitor-exit v14

    throw v3

    :cond_fd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->a:Lcom/twitter/android/util/l;

    invoke-virtual {v3}, Lcom/twitter/android/util/l;->a()V

    const-string v3, "alarm"

    invoke-virtual {v13, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    new-instance v9, Landroid/content/Intent;

    const-class v14, Lcom/twitter/android/client/AppService;

    invoke-direct {v9, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v14, "com.twitter.android.cleanup"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v14, v9, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    new-instance v9, Landroid/content/Intent;

    const-class v14, Lcom/twitter/android/client/AppService;

    invoke-direct {v9, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v14, "com.twitter.android.poll.alarm"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v14, v9, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/client/b;->y:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v9}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :goto_147
    move-object/from16 v0, v16

    array-length v13, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_14c
    if-ge v9, v13, :cond_168

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Z)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_14c

    :cond_157
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_15c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v13
    :try_end_164
    .catchall {:try_start_15c .. :try_end_164} :catchall_165

    goto :goto_147

    :catchall_165
    move-exception v3

    monitor-exit v13

    throw v3

    :cond_168
    if-eqz v8, :cond_171

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_171
    new-instance v3, Lcom/twitter/android/client/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v5, v10, v7, v8}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/a;->b()Lcom/twitter/android/client/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/a;->c()Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/twitter/android/client/e;

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/twitter/android/client/e;-><init>(Lcom/twitter/android/client/b;Landroid/content/Context;Ljava/lang/String;J)V

    const-wide/32 v8, 0x493e0

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5d

    :pswitch_1a3
    const-string v3, "status_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_aba

    :pswitch_1af
    goto/16 :goto_5d

    :pswitch_1b1
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "new_tweet"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_1c9
    if-ge v11, v12, :cond_5d

    aget-object v3, v16, v11

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/g;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_1c9

    :pswitch_1d4
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_1d8
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->k(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d8

    :pswitch_1e2
    const-string v3, "new_tweet"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v3, "unread_mention"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v3, "since_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "max_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_20f
    move/from16 v0, v17

    if-ge v14, v0, :cond_5d

    aget-object v3, v16, v14

    invoke-virtual/range {v3 .. v13}, Lcom/twitter/android/client/g;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V

    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_20f

    :pswitch_21c
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_220
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->l(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_220

    :pswitch_22a
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_22e
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->m(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22e

    :pswitch_238
    const-string v3, "new_tweet"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_246
    if-ge v9, v10, :cond_5d

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_246

    :pswitch_251
    const-string v3, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_260
    if-ge v10, v11, :cond_5d

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/g;->d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_260

    :pswitch_26b
    const-string v3, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_27a
    if-ge v11, v12, :cond_5d

    aget-object v3, v16, v11

    const-string v8, "count"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJ)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_27a

    :pswitch_28e
    const-string v3, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_29d
    if-ge v10, v11, :cond_5d

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/g;->e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_29d

    :pswitch_2a8
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_2b7
    if-ge v10, v11, :cond_5d

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/g;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_2b7

    :pswitch_2c2
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "list_type"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_2da
    if-ge v11, v12, :cond_5d

    aget-object v3, v16, v11

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_2da

    :pswitch_2e5
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "user_type"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "count"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v3, "users"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, v16

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_30e
    if-ge v13, v14, :cond_5d

    aget-object v3, v16, v13

    invoke-virtual/range {v3 .. v12}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JIILjava/util/ArrayList;)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_30e

    :pswitch_319
    const-string v3, "count"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_327
    if-ge v9, v10, :cond_5d

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_327

    :pswitch_332
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, -0x2

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/twitter/android/client/b;->a(JJI)Ljava/lang/String;

    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_340
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_340

    :pswitch_34a
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_34e
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34e

    :pswitch_358
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_35c
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->f(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_35c

    :pswitch_366
    const-string v3, "new_dm"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "unread_dm"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_37d
    if-ge v10, v11, :cond_5d

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;II)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_37d

    :pswitch_388
    const-string v3, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/twitter/android/api/ac;

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_397
    if-ge v9, v10, :cond_5d

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/ac;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_397

    :pswitch_3a2
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_3a6
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a6

    :pswitch_3b0
    const-string v3, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "short_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_5d

    :pswitch_3c0
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_3cf
    if-ge v10, v11, :cond_5d

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_3cf

    :pswitch_3da
    const-string v3, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/twitter/android/api/ac;

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_3e9
    if-ge v9, v10, :cond_5d

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/ac;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_3e9

    :pswitch_3f4
    const/16 v3, 0xc8

    if-ne v6, v3, :cond_41d

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9, v10}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;JZ)V

    :goto_406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->c:Landroid/app/NotificationManager;

    const/16 v8, 0x3e9

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_413
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_413

    :cond_41d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/twitter/android/DraftsActivity;

    invoke-direct {v8, v3, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "account_name"

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "return_to_drafts"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    const v9, 0x7f0b00fe

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v8, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/twitter/android/client/b;->a(ILandroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v3

    iget v8, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v3, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/android/client/b;->c:Landroid/app/NotificationManager;

    const/16 v9, 0x3ea

    invoke-virtual {v8, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_406

    :pswitch_458
    const/16 v3, 0xc8

    if-ne v6, v3, :cond_46a

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v8

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9, v10}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;JZ)V

    :cond_46a
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_46e
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->n(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_46e

    :pswitch_478
    const-string v3, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const/16 v3, 0xc8

    if-ne v6, v3, :cond_495

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/twitter/android/client/b;->g(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v3

    if-eqz v3, :cond_495

    invoke-virtual {v3, v8, v9}, Lcom/twitter/android/client/WidgetControl;->a(J)V

    :cond_495
    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_49a
    if-ge v10, v11, :cond_5d

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/g;->f(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_49a

    :pswitch_4a5
    const-string v3, "user_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const/16 v3, 0xc8

    if-eq v6, v3, :cond_5d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const v5, 0x7f0b005c

    const/4 v7, 0x1

    invoke-static {v3, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5d

    :pswitch_4c3
    const-string v3, "user_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    goto/16 :goto_5d

    :pswitch_4ce
    const-string v3, "user_id"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const/16 v3, 0xc8

    if-eq v6, v3, :cond_5d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const v5, 0x7f0b005e

    const/4 v7, 0x1

    invoke-static {v3, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5d

    :pswitch_4ec
    const/16 v3, 0xc8

    if-eq v6, v3, :cond_5d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const v5, 0x7f0b008a

    const/4 v7, 0x1

    invoke-static {v3, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5d

    :pswitch_501
    const/16 v3, 0xc8

    if-eq v6, v3, :cond_5d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const v5, 0x7f0b008b

    const/4 v7, 0x1

    invoke-static {v3, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5d

    :pswitch_516
    const/16 v3, 0xc8

    if-eq v6, v3, :cond_5d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const v5, 0x7f0b0075

    const/4 v7, 0x1

    invoke-static {v3, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5d

    :pswitch_52b
    const-string v3, "list_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v3, 0x0

    move v10, v3

    :goto_53a
    if-ge v10, v11, :cond_5d

    aget-object v3, v16, v10

    invoke-virtual/range {v3 .. v9}, Lcom/twitter/android/client/g;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V

    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_53a

    :pswitch_545
    const-string v3, "list_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "user_type"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "count"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v16

    array-length v13, v0

    const/4 v3, 0x0

    move v12, v3

    :goto_566
    if-ge v12, v13, :cond_5d

    aget-object v3, v16, v12

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/client/g;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_566

    :pswitch_571
    const-string v3, "list_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "user_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "user_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v0, v16

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_593
    if-ge v13, v14, :cond_5d

    aget-object v3, v16, v13

    invoke-virtual/range {v3 .. v12}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_593

    :pswitch_59e
    const-string v3, "list_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "user_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "user_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v0, v16

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_5c0
    if-ge v13, v14, :cond_5d

    aget-object v3, v16, v13

    invoke-virtual/range {v3 .. v12}, Lcom/twitter/android/client/g;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_5c0

    :pswitch_5cb
    const-string v3, "list_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "user_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "user_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v0, v16

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_5ed
    if-ge v13, v14, :cond_5d

    aget-object v3, v16, v13

    invoke-virtual/range {v3 .. v12}, Lcom/twitter/android/client/g;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_5ed

    :pswitch_5f8
    const-string v3, "q_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_606
    if-ge v9, v10, :cond_5d

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_606

    :pswitch_611
    const-string v3, "search_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "page"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "stories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lcom/twitter/android/api/TwitterStory;

    const-string v3, "spelling_corrections"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v3, "related_queries"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_645
    move/from16 v0, v17

    if-ge v14, v0, :cond_5d

    aget-object v3, v16, v14

    invoke-virtual/range {v3 .. v13}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JILcom/twitter/android/api/TwitterStory;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_645

    :pswitch_652
    const-string v3, "search_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "count"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_66a
    if-ge v11, v12, :cond_5d

    aget-object v3, v16, v11

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/g;->d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_66a

    :pswitch_675
    const-string v3, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/twitter/android/api/ac;

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_684
    if-ge v9, v10, :cond_5d

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/ac;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_684

    :pswitch_68f
    const-string v3, "lat"

    const-wide/high16 v8, 0x7ff8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v3, "long"

    const-wide/high16 v10, 0x7ff8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v3, "place"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v16

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_6b0
    if-ge v13, v14, :cond_5d

    aget-object v3, v16, v13

    invoke-virtual/range {v3 .. v12}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_6b0

    :pswitch_6bb
    const/16 v3, 0x191

    if-ne v6, v3, :cond_5d

    const-string v3, "AC"

    const-string v5, "Invalid credentials. The auth token has expired."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v8

    if-eqz v8, :cond_1b

    const/4 v3, 0x0

    invoke-virtual {v7, v8, v3}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    const-string v3, "com.twitter.android.auth.login"

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v5}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "com.twitter.android.oauth.token"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_5d

    :pswitch_6ec
    const/4 v8, 0x0

    :try_start_6ed
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Landroid/content/Intent;I)Ljava/lang/String;
    :try_end_6f4
    .catch Ljava/lang/Exception; {:try_start_6ed .. :try_end_6f4} :catch_705

    move-result-object v8

    :goto_6f5
    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_6fa
    if-ge v9, v10, :cond_5d

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_6fa

    :catch_705
    move-exception v3

    const/16 v6, 0x190

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_6f5

    :pswitch_70d
    const-string v3, "new_tweet"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v3, "unread_tweet"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v3, "since_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "max_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const/16 v3, 0xc8

    if-ne v6, v3, :cond_74f

    const-wide/16 v17, 0x0

    cmp-long v3, v10, v17

    if-nez v3, :cond_74f

    if-lez v12, :cond_74f

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v17

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v3, v1, v2, v14}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;JZ)V

    :cond_74f
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_756
    move/from16 v0, v17

    if-ge v14, v0, :cond_5d

    aget-object v3, v16, v14

    invoke-virtual/range {v3 .. v13}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V

    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_756

    :pswitch_763
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_767
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->g(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_767

    :pswitch_771
    const-string v3, "count"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_77f
    if-ge v9, v10, :cond_5d

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_77f

    :pswitch_78a
    const-string v3, "count"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto/16 :goto_5d

    :pswitch_794
    const-string v3, "user_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "user_type"

    const/16 v10, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "count"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v16

    array-length v13, v0

    const/4 v3, 0x0

    move v12, v3

    :goto_7b6
    if-ge v12, v13, :cond_5d

    aget-object v3, v16, v12

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_7b6

    :pswitch_7c1
    const-string v3, "owner_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "list_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v0, v16

    array-length v13, v0

    const/4 v3, 0x0

    move v12, v3

    :goto_7da
    if-ge v12, v13, :cond_5d

    aget-object v3, v16, v12

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJ)V

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_7da

    :pswitch_7e5
    const-string v3, "count"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_7f3
    if-ge v9, v10, :cond_5d

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_7f3

    :pswitch_7fe
    const-string v3, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "screen_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "pass"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "q_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :try_start_82e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Landroid/content/Intent;I)Ljava/lang/String;
    :try_end_835
    .catch Ljava/lang/Exception; {:try_start_82e .. :try_end_835} :catch_845

    :goto_835
    move-object/from16 v0, v16

    array-length v14, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_83a
    if-ge v13, v14, :cond_5d

    aget-object v3, v16, v13

    invoke-virtual/range {v3 .. v12}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_83a

    :catch_845
    move-exception v3

    const/16 v6, 0x190

    goto :goto_835

    :pswitch_849
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, -0x2

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/twitter/android/client/b;->a(JJI)Ljava/lang/String;

    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_857
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_857

    :pswitch_861
    const-string v3, "settings"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/c;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/twitter/android/client/b;->t:Lcom/twitter/android/api/c;

    goto/16 :goto_5d

    :pswitch_871
    const/16 v3, 0xc8

    if-ne v6, v3, :cond_5d

    const-string v3, "settings"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/af;

    invoke-virtual {v4, v3}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/af;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v7, v8, v3}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/af;)V

    goto/16 :goto_5d

    :pswitch_890
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_894
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_894

    :pswitch_89e
    const-string v3, "settings"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/e;

    if-eqz v3, :cond_5d

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    iget-boolean v8, v3, Lcom/twitter/android/api/e;->a:Z

    iget-wide v9, v3, Lcom/twitter/android/api/e;->b:J

    iget v11, v3, Lcom/twitter/android/api/e;->c:I

    iget v12, v3, Lcom/twitter/android/api/e;->d:I

    invoke-static/range {v7 .. v12}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;ZJII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;)V

    iget-wide v7, v3, Lcom/twitter/android/api/e;->e:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_8df

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "typeahead_users_ttl"

    iget-wide v8, v3, Lcom/twitter/android/api/e;->e:J

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8df
    new-instance v5, Lcom/twitter/android/client/a;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v8

    const-string v9, "decider"

    const/4 v10, 0x0

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "cache_version"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_919

    iget v8, v3, Lcom/twitter/android/api/e;->f:I

    if-ge v7, v8, :cond_5d

    invoke-virtual {v5}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v5

    const-string v7, "cache_version"

    iget v3, v3, Lcom/twitter/android/api/e;->f:I

    invoke-virtual {v5, v7, v3}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;I)Lcom/twitter/android/client/a;

    move-result-object v3

    const-string v5, "cache_dirty"

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v7}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;Z)Lcom/twitter/android/client/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/a;->c()Z

    goto/16 :goto_5d

    :cond_919
    invoke-virtual {v5}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v5

    const-string v7, "cache_version"

    iget v3, v3, Lcom/twitter/android/api/e;->f:I

    invoke-virtual {v5, v7, v3}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;I)Lcom/twitter/android/client/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/a;->c()Z

    goto/16 :goto_5d

    :pswitch_92a
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_92e
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->h(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_92e

    :pswitch_938
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_93c
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->i(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_93c

    :pswitch_946
    const-string v3, "unread_story_states"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    const-string v3, "unread_stories"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_95e
    if-ge v11, v12, :cond_5d

    aget-object v3, v16, v11

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;Z)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_95e

    :pswitch_96a
    const-string v3, "i_type"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v3, "since_id"

    const-wide/16 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "max_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v3, "count"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_997
    move/from16 v0, v17

    if-ge v14, v0, :cond_5d

    aget-object v3, v16, v14

    invoke-virtual/range {v3 .. v13}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJI)V

    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_997

    :pswitch_9a4
    const-string v3, "status_id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v3, "new_tweet"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, v16

    array-length v12, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_9bc
    if-ge v11, v12, :cond_5d

    aget-object v3, v16, v11

    invoke-virtual/range {v3 .. v10}, Lcom/twitter/android/client/g;->c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_9bc

    :pswitch_9c7
    move-object/from16 v0, v16

    array-length v8, v0

    const/4 v3, 0x0

    :goto_9cb
    if-ge v3, v8, :cond_5d

    aget-object v9, v16, v3

    invoke-virtual {v9, v4, v5, v6, v7}, Lcom/twitter/android/client/g;->j(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9cb

    :pswitch_9d5
    const-string v3, "stories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_9e2
    if-ge v9, v10, :cond_5d

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_9e2

    :pswitch_9ed
    const-string v3, "q"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/twitter/android/api/a;

    move-object/from16 v0, v16

    array-length v10, v0

    const/4 v3, 0x0

    move v9, v3

    :goto_9fc
    if-ge v9, v10, :cond_5d

    aget-object v3, v16, v9

    invoke-virtual/range {v3 .. v8}, Lcom/twitter/android/client/g;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/a;)V

    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_9fc

    nop

    :pswitch_data_a08
    .packed-switch 0x5
        :pswitch_7f
        :pswitch_1a3
        :pswitch_26b
        :pswitch_28e
        :pswitch_2a8
        :pswitch_5d
        :pswitch_2c2
        :pswitch_2e5
        :pswitch_319
        :pswitch_332
        :pswitch_34a
        :pswitch_366
        :pswitch_5d
        :pswitch_5d
        :pswitch_388
        :pswitch_3a2
        :pswitch_3b0
        :pswitch_3c0
        :pswitch_3da
        :pswitch_3f4
        :pswitch_458
        :pswitch_478
        :pswitch_4a5
        :pswitch_4ce
        :pswitch_4c3
        :pswitch_4ec
        :pswitch_501
        :pswitch_516
        :pswitch_52b
        :pswitch_545
        :pswitch_571
        :pswitch_59e
        :pswitch_5cb
        :pswitch_5f8
        :pswitch_611
        :pswitch_652
        :pswitch_675
        :pswitch_68f
        :pswitch_6bb
        :pswitch_6ec
        :pswitch_5d
        :pswitch_70d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_763
        :pswitch_771
        :pswitch_78a
        :pswitch_7c1
        :pswitch_7e5
        :pswitch_7fe
        :pswitch_849
        :pswitch_861
        :pswitch_871
        :pswitch_871
        :pswitch_890
        :pswitch_89e
        :pswitch_92a
        :pswitch_938
        :pswitch_96a
        :pswitch_946
        :pswitch_9a4
        :pswitch_794
        :pswitch_9c7
        :pswitch_9d5
        :pswitch_9ed
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_358
    .end packed-switch

    :sswitch_data_a9c
    .sparse-switch
        0x5 -> :sswitch_1b
        0xa -> :sswitch_1b
        0x15 -> :sswitch_1b
        0x2a -> :sswitch_1b
        0x2b -> :sswitch_1b
        0x2c -> :sswitch_1b
        0x37 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_aba
    .packed-switch 0x1
        :pswitch_1b1
        :pswitch_1af
        :pswitch_1d4
        :pswitch_1af
        :pswitch_1e2
        :pswitch_21c
        :pswitch_22a
        :pswitch_238
        :pswitch_1af
        :pswitch_251
    .end packed-switch
.end method

.method public final b(Landroid/location/LocationListener;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/twitter/android/client/b;->C()V

    :cond_10
    return-void
.end method

.method public final b(Lcom/twitter/android/client/g;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/client/b;->r:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/b;->k(Ljava/lang/String;)I

    move-result v1

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/client/b;->e:Z

    return v0
.end method

.method public final c(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/client/b;->a(Z)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public final c(IJJ)Ljava/lang/String;
    .registers 9

    const-string v0, "IS_LIST_USER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)Ljava/lang/String;
    .registers 5

    const-string v0, "DESTROY_DM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(JJI)Ljava/lang/String;
    .registers 12

    const-wide/16 v4, 0x0

    const-string v0, "GET_SENT_MESSAGES"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "since_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "max_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "CREATE_BLOCK"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/twitter/android/client/Session;JLjava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "DESTROY_FAV"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "GET_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "q"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c(Landroid/content/Intent;)V
    .registers 7

    const-string v0, "owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/client/b;->g(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v2

    if-eqz v2, :cond_1d

    const-string v3, "status_type"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/WidgetControl;->a(I)V

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->aC:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_1d
    return-void
.end method

.method public final c(Lcom/twitter/android/client/Session;)V
    .registers 5

    const-string v0, "SEND_ALL_DRAFTS"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i_type"

    invoke-direct {p0}, Lcom/twitter/android/client/b;->B()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public final c(Lcom/twitter/android/client/Session;J)V
    .registers 6

    const-string v0, "DEL_DRAFT"

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/client/b;->h:Z

    return v0
.end method

.method public final d()Lcom/twitter/android/api/ac;
    .registers 2

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->f()Lcom/twitter/android/api/ac;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)Ljava/lang/String;
    .registers 7

    const-string v0, "DELETE_LIST"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(JLjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "DESTROY_BLOCK"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "SAVE_SEARCH"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final d(Landroid/content/Intent;)V
    .registers 7

    const-string v0, "owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/client/b;->g(J)Lcom/twitter/android/client/WidgetControl;

    move-result-object v2

    if-eqz v2, :cond_1d

    const-string v3, "status_type"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/WidgetControl;->b(I)V

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->aC:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_1d
    return-void
.end method

.method public final e()Lcom/twitter/android/network/j;
    .registers 2

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->h()Lcom/twitter/android/network/j;

    move-result-object v0

    return-object v0
.end method

.method public final e(J)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v1, "GET_SLUG"

    invoke-direct {p0, v1}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v0, :cond_26

    const-string v2, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "lang"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_26
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_31

    const-string v0, "owner_id"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_31
    invoke-direct {p0, v1}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(JLjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "REPORT_SPAM"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "impression_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "DELETE_SEARCH"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final e(Landroid/content/Intent;)V
    .registers 6

    const/4 v3, 0x1

    const-string v0, "error_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const v2, 0x7f0b01c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const v2, 0x7f0b01c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1c
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(J)Ljava/lang/String;
    .registers 5

    const-string v0, "ACTIVITY_SUMMARY"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "EMAIL_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_23

    const-string v2, "lang"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_23
    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(JLjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v1

    const-string v2, "DISMISS"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;Lcom/twitter/android/service/k;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "status_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "impression_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final g(JLjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/client/b;->a:Lcom/twitter/android/util/l;

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/twitter/android/util/l;->a(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/twitter/android/client/Session;
    .registers 8

    iget-object v1, p0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/twitter/android/client/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/Session;

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.twitter.android.auth.login"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v0, v2

    if-lez v0, :cond_44

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/provider/bg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    array-length v4, v2

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v4, :cond_44

    aget-object v5, v2, v0

    if-eqz v3, :cond_34

    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    :cond_34
    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v5, v2, v3}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;)V

    monitor-exit v1

    :goto_40
    return-object v0

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_44
    invoke-direct {p0}, Lcom/twitter/android/client/b;->A()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;)V

    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4d

    goto :goto_40

    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized g(J)Lcom/twitter/android/client/WidgetControl;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/WidgetControl;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Ljava/util/ArrayList;
    .registers 4

    iget-object v1, p0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twitter/android/client/b;->q:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final h(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/client/b;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public final i(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;Landroid/accounts/Account;J)Lcom/twitter/android/client/Session;

    move-result-object v0

    const-string v1, "CLEAR_NOTIFICATIONS"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public final i()Z
    .registers 2

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->d()Z

    move-result v0

    return v0
.end method

.method public final j()Lcom/twitter/android/client/Session$LoginStatus;
    .registers 2

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->b()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v0

    return-object v0
.end method

.method public final k()J
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    const-string v0, "ACTION_MARK_STORIES"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->j()Lcom/twitter/android/api/af;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-wide v0, v3, Lcom/twitter/android/api/af;->a:J

    :cond_e
    const-string v3, "GET_TRENDS"

    invoke-direct {p0, v2, v3}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "locale"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    const-string v0, "GET_SAVED_SEARCHES"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    const-string v1, "CONFIG"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->d(Lcom/twitter/android/client/Session;)Ljava/lang/String;

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v1, v0, [Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_21
    invoke-direct {p0}, Lcom/twitter/android/client/b;->C()V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v1, v0, [Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_21
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v1, v0, [Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_21
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v1, v0, [Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/twitter/android/client/b;->s:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_21
    return-void
.end method

.method public final p()V
    .registers 2

    const-string v0, "DECIDER"

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->j(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->f(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public final q()J
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "typeahead_users_ttl"

    const-wide/32 v2, 0x5265c00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final r()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->b(I)V

    return-void
.end method

.method public final s()V
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/twitter/android/client/b;->b(I)V

    return-void
.end method

.method public final t()V
    .registers 6

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_MARK_STORIES"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sid"

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_name"

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "soid"

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final u()V
    .registers 6

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MARK_MESSAGES"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "sid"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account_name"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "soid"

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/twitter/android/client/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/g;->b(Lcom/twitter/android/client/Session;)V

    goto :goto_3c

    :cond_4c
    return-void
.end method

.method public final v()V
    .registers 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/DialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ff"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f0b0126

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f0200ff

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    const v4, 0x7f0b0127

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/twitter/android/client/b;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final declared-synchronized w()Ljava/util/Collection;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/twitter/android/client/b;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final x()V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "url_hints"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    const v3, 0x7f0b0136

    invoke-static {v2, v3}, Lcom/twitter/android/util/x;->a(Landroid/content/Context;I)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "url_hints"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_26
    return-void
.end method

.method public final y()V
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Lcom/twitter/android/client/a;

    iget-object v1, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "decider"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "cache_dirty"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    iget-object v3, p0, Lcom/twitter/android/client/b;->b:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/twitter/android/provider/ae;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/twitter/android/provider/ae;->g(J)V

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v0

    const-string v1, "cache_dirty"

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;)Lcom/twitter/android/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->c()Z

    :cond_38
    return-void
.end method

.method public final z()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/client/b;->d:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/twitter/android/platform/h;->b(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
