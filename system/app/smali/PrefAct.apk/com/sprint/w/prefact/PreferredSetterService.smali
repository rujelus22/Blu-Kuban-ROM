.class public Lcom/sprint/w/prefact/PreferredSetterService;
.super Landroid/app/IntentService;
.source "PreferredSetterService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SprintID-Pref-Setter-Service"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    const-string v0, "PreferredSetterService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private setAsPreferred(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;)V
    .registers 16
    .parameter "pm"
    .parameter "filter"
    .parameter "sampleIntent"
    .parameter "newHandler"

    .prologue
    .line 54
    .line 55
    const v7, 0x10040

    .line 54
    invoke-virtual {p1, p3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 56
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v1, v7, [Landroid/content/ComponentName;

    .line 57
    .local v1, cns:[Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 58
    .local v2, i:I
    const/4 v0, 0x0

    .line 59
    .local v0, bestMatch:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5a

    .line 67
    const/high16 v7, 0x1

    invoke-virtual {p1, p3, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 68
    .local v5, prf:Landroid/content/pm/ResolveInfo;
    const-string v7, "SprintID-Pref-Setter-Service"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Before: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-eqz v5, :cond_3c

    .line 70
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 73
    :cond_3c
    invoke-virtual {p1, p2, v0, v1, p4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 75
    const-string v7, "SprintID-Pref-Setter-Service"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "After: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x1

    invoke-virtual {p1, p3, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 59
    .end local v5           #prf:Landroid/content/pm/ResolveInfo;
    :cond_5a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 60
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v1, v2

    .line 61
    const-string v8, "SprintID-Pref-Setter-Service"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Matching activity "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget v8, v6, Landroid/content/pm/ResolveInfo;->match:I

    if-le v8, v0, :cond_93

    .line 63
    iget v0, v6, Landroid/content/pm/ResolveInfo;->match:I

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_13

    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_93
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto/16 :goto_13
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter "i"

    .prologue
    .line 25
    :try_start_0
    const-string v7, "start"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 26
    .local v5, start:Z
    const-string v7, "sampleIntent"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 27
    .local v4, sampleIntent:Landroid/content/Intent;
    const-string v7, "filter"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 28
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "newHandler"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 29
    .local v0, cn:Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 30
    .local v6, switched:Z
    const-string v7, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {p0, v7}, Lcom/sprint/w/prefact/PreferredSetterService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_30

    .line 31
    invoke-virtual {p0}, Lcom/sprint/w/prefact/PreferredSetterService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7, v2, v4, v0}, Lcom/sprint/w/prefact/PreferredSetterService;->setAsPreferred(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;)V

    .line 32
    const/4 v6, 0x1

    .line 34
    :cond_30
    if-eqz v5, :cond_43

    .line 35
    if-eqz v6, :cond_44

    .line 36
    const-string v7, "SprintID-Pref-Setter-Service"

    const-string v8, "starting new handler"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/high16 v7, 0x1000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v4}, Lcom/sprint/w/prefact/PreferredSetterService;->startActivity(Landroid/content/Intent;)V

    .line 50
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v4           #sampleIntent:Landroid/content/Intent;
    .end local v5           #start:Z
    .end local v6           #switched:Z
    :cond_43
    :goto_43
    return-void

    .line 40
    .restart local v0       #cn:Landroid/content/ComponentName;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    .restart local v4       #sampleIntent:Landroid/content/Intent;
    .restart local v5       #start:Z
    .restart local v6       #switched:Z
    :cond_44
    const-string v7, "SprintID-Pref-Setter-Service"

    const-string v8, "Not able to change default launcher -- I need to be signed with \'platform\' cert!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v3, i2:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v3}, Lcom/sprint/w/prefact/PreferredSetterService;->startActivity(Landroid/content/Intent;)V
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_43

    .line 47
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #i2:Landroid/content/Intent;
    .end local v4           #sampleIntent:Landroid/content/Intent;
    .end local v5           #start:Z
    .end local v6           #switched:Z
    :catch_5e
    move-exception v7

    move-object v1, v7

    .line 48
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "SprintID-Pref-Setter-Service"

    const-string v8, "Error setting preferred app"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method
