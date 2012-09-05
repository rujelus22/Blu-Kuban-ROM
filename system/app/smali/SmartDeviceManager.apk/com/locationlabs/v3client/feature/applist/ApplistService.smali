.class public Lcom/locationlabs/v3client/feature/applist/ApplistService;
.super Landroid/app/IntentService;
.source "a"


# static fields
.field private static a:Lbr;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/feature/applist/ApplistService;->a:Lbr;

    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/locationlabs/v3client/feature/applist/ApplistService;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    const-string v0, "ApplistService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Ldy;
    .registers 6

    .prologue
    .line 85
    sget-object v0, Lcom/locationlabs/v3client/feature/applist/ApplistService;->a:Lbr;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 94
    :goto_5
    return-object v0

    .line 87
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/locationlabs/v3client/feature/applist/ApplistService;->a:Lbr;

    new-instance v3, Lcg;

    invoke-direct {v3}, Lcg;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Lcg;->setTime(J)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Lcg;->setApplication(Ljava/util/List;)V

    .line 91
    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ldy;

    invoke-direct {v1, v0, v3}, Ldy;-><init>(Ljava/lang/String;Lcg;)V

    move-object v0, v1

    .line 94
    goto :goto_5
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 62
    sget-object v1, Ldg;->m:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    .line 69
    :goto_10
    return-void

    .line 66
    :cond_11
    const-string v0, "sendAppList"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/applist/ApplistService;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_10
.end method

.method public static a(Landroid/content/Context;Lcg;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p1}, Lcg;->getApplication()Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 214
    :goto_b
    return-void

    .line 204
    :cond_c
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr;

    invoke-virtual {v0}, Lbr;->hashCode()I

    move-result v0

    .line 206
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 207
    invoke-interface {v1, v0}, Lw;->d(I)V

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/feature/applist/ApplistService;->a:Lbr;

    .line 213
    sput v2, Lcom/locationlabs/v3client/feature/applist/ApplistService;->b:I

    goto :goto_b
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.CHECK_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    const-class v1, Lcom/locationlabs/v3client/feature/applist/ApplistService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lbr;
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 142
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 146
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {v1, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 151
    if-eqz v2, :cond_5d

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 153
    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 155
    if-eqz v3, :cond_22

    .line 157
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 161
    if-nez p0, :cond_c2

    .line 162
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 163
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :goto_46
    new-instance v5, Lbq;

    invoke-direct {v5}, Lbq;-><init>()V

    .line 167
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v6, v5, Lbq;->activityClass:Ljava/lang/String;

    .line 168
    invoke-virtual {v3, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lbq;->activityName:Ljava/lang/String;

    .line 170
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 174
    :cond_5d
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 176
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_65
    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 177
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_65

    .line 178
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 179
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 183
    :cond_84
    new-instance v1, Lbr;

    invoke-direct {v1}, Lbr;-><init>()V

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    iput-object v2, v1, Lbr;->packages:Ljava/util/List;

    .line 187
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 188
    new-instance v4, Lci;

    invoke-direct {v4}, Lci;-><init>()V

    .line 189
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lci;->packageName:Ljava/lang/String;

    .line 190
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    iput-object p0, v4, Lci;->activities:Ljava/util/List;

    .line 191
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 194
    :cond_c1
    return-object v1

    :cond_c2
    move-object v4, p0

    goto :goto_46
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 72
    const-string v0, "com.locationlabs.v3client.action.CHECK_APPS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 74
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->H()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "MIN_APP_CHECK_INTERVAL_SEC"

    invoke-static {v5}, Ln;->c(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v1, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_69

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App list deferred until "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v2}, Lt;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/applist/ApplistService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0}, Lcom/locationlabs/v3client/feature/applist/ApplistService;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v9, v3, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 79
    :cond_68
    :goto_68
    return-void

    .line 74
    :cond_69
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/applist/ApplistService;->c(Landroid/content/Context;)Lbr;

    move-result-object v1

    invoke-virtual {v1}, Lbr;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App List Hash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li;->c(Ljava/lang/String;)V

    invoke-interface {v0}, Lw;->G()I

    move-result v3

    if-eq v2, v3, :cond_ae

    sput-object v1, Lcom/locationlabs/v3client/feature/applist/ApplistService;->a:Lbr;

    sput v2, Lcom/locationlabs/v3client/feature/applist/ApplistService;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lw;->h(J)V

    new-instance v0, Lz;

    const-string v1, "com.locationlabs.v3client.action.SEND_APP_LIST"

    invoke-direct {v0, v1}, Lz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lz;->b(Landroid/content/Context;)V

    const-string v0, "com.locationlabs.v3client.action.SEND_APP_LIST"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_68

    :cond_ae
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lw;->h(J)V

    goto :goto_68
.end method
