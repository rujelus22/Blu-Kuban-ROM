.class public Lcom/sprint/w/prefact/PreferredSetter;
.super Landroid/app/Activity;
.source "PreferredSetter.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SprintID-Pref-Setter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static setAsPreferred(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;)V
    .registers 16
    .parameter "pm"
    .parameter "filter"
    .parameter "sampleIntent"
    .parameter "newHandler"

    .prologue
    const/high16 v11, 0x1

    .line 58
    .line 59
    const v7, 0x10040

    .line 58
    invoke-virtual {p0, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 60
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v1, v7, [Landroid/content/ComponentName;

    .line 61
    .local v1, cns:[Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 62
    .local v2, i:I
    const/4 v0, 0x0

    .line 63
    .local v0, bestMatch:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_58

    .line 71
    invoke-virtual {p0, p2, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 72
    .local v5, prf:Landroid/content/pm/ResolveInfo;
    const-string v7, "SprintID-Pref-Setter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Before: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz v5, :cond_3c

    .line 74
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 77
    :cond_3c
    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 79
    const-string v7, "SprintID-Pref-Setter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "After: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 63
    .end local v5           #prf:Landroid/content/pm/ResolveInfo;
    :cond_58
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 64
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

    .line 65
    const-string v8, "SprintID-Pref-Setter"

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

    .line 66
    iget v8, v6, Landroid/content/pm/ResolveInfo;->match:I

    if-le v8, v0, :cond_91

    .line 67
    iget v0, v6, Landroid/content/pm/ResolveInfo;->match:I

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_15

    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_91
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_15
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/sprint/w/prefact/PreferredSetter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 25
    .local v3, i:Landroid/content/Intent;
    :try_start_7
    const-string v8, "start"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 26
    .local v6, start:Z
    const-string v8, "sampleIntent"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 27
    .local v5, sampleIntent:Landroid/content/Intent;
    const-string v8, "filter"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 28
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v8, "newHandler"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 29
    .local v0, cn:Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 31
    .local v7, switched:Z
    const-string v8, "android.permission.SET_PREFERRED_APPLICATIONS"

    .line 30
    invoke-virtual {p0, v8}, Lcom/sprint/w/prefact/PreferredSetter;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_37

    .line 32
    invoke-virtual {p0}, Lcom/sprint/w/prefact/PreferredSetter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {v8, v2, v5, v0}, Lcom/sprint/w/prefact/PreferredSetter;->setAsPreferred(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;)V

    .line 33
    const/4 v7, 0x1

    .line 35
    :cond_37
    if-eqz v6, :cond_4a

    .line 36
    if-eqz v7, :cond_4e

    .line 37
    const-string v8, "SprintID-Pref-Setter"

    const-string v9, "starting new handler"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/high16 v8, 0x40

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v5}, Lcom/sprint/w/prefact/PreferredSetter;->startActivity(Landroid/content/Intent;)V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_4a} :catch_68

    .line 51
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v5           #sampleIntent:Landroid/content/Intent;
    .end local v6           #start:Z
    .end local v7           #switched:Z
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lcom/sprint/w/prefact/PreferredSetter;->finish()V

    .line 52
    return-void

    .line 41
    .restart local v0       #cn:Landroid/content/ComponentName;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    .restart local v5       #sampleIntent:Landroid/content/Intent;
    .restart local v6       #start:Z
    .restart local v7       #switched:Z
    :cond_4e
    :try_start_4e
    const-string v8, "SprintID-Pref-Setter"

    const-string v9, "Not able to change default launcher -- I need to be signed with \'platform\' cert!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v4, i2:Landroid/content/Intent;
    const/high16 v8, 0x40

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v4}, Lcom/sprint/w/prefact/PreferredSetter;->startActivity(Landroid/content/Intent;)V
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_67} :catch_68

    goto :goto_4a

    .line 48
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v4           #i2:Landroid/content/Intent;
    .end local v5           #sampleIntent:Landroid/content/Intent;
    .end local v6           #start:Z
    .end local v7           #switched:Z
    :catch_68
    move-exception v8

    move-object v1, v8

    .line 49
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v8, "SprintID-Pref-Setter"

    const-string v9, "Error setting preferred app"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a
.end method
