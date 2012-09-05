.class public Lcom/google/android/apps/books/util/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/AccessibilityUtils$ScreenReaderTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static dispatchPopulateAccessibiltyEvent(Landroid/view/ViewGroup;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .parameter "viewGroup"
    .parameter "event"

    .prologue
    .line 126
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_5
    if-ge v3, v1, :cond_1f

    .line 127
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1c

    .line 129
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 130
    .local v2, handled:Z
    if-eqz v2, :cond_1c

    .line 135
    .end local v0           #child:Landroid/view/View;
    .end local v2           #handled:Z
    :goto_1b
    return v2

    .line 126
    .restart local v0       #child:Landroid/view/View;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 135
    .end local v0           #child:Landroid/view/View;
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .registers 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 57
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 58
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "accessibility_enabled"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_a} :catch_f

    move-result v0

    .line 60
    .local v0, accessibilitySetting:I
    if-eqz v0, :cond_e

    const/4 v3, 0x1

    .line 65
    .end local v0           #accessibilitySetting:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_e
    :goto_e
    return v3

    .line 61
    :catch_f
    move-exception v1

    .line 62
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "AccessibilityUtils"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 63
    const-string v4, "AccessibilityUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No accessibility setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public static isScreenReaderActive(Landroid/content/Context;)Z
    .registers 16
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 81
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v3, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v10, screenReaderIntent:Landroid/content/Intent;
    const-string v3, "android.accessibilityservice.category.FEEDBACK_SPOKEN"

    invoke-virtual {v10, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v8, v10, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 85
    .local v11, screenReaders:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 89
    .local v9, screenReader:Landroid/content/pm/ResolveInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".providers.StatusProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 91
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6d

    :try_start_59
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 96
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_73

    move-result v12

    .line 97
    .local v12, status:I
    if-ne v12, v13, :cond_6d

    .line 102
    if-eqz v6, :cond_6b

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6b
    move v2, v13

    .line 107
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #screenReader:Landroid/content/pm/ResolveInfo;
    .end local v12           #status:I
    :goto_6c
    return v2

    .line 102
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #screenReader:Landroid/content/pm/ResolveInfo;
    :cond_6d
    if-eqz v6, :cond_23

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_23

    .line 102
    :catchall_73
    move-exception v2

    if-eqz v6, :cond_79

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_79
    throw v2

    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #screenReader:Landroid/content/pm/ResolveInfo;
    :cond_7a
    move v2, v14

    .line 107
    goto :goto_6c
.end method
