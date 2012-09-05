.class public Lcom/vlingo/client/vvs/AndroidActionEvaluator;
.super Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;
.source "AndroidActionEvaluator.java"


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vlingo/client/vvs/AndroidActionEvaluator;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method protected evaluateExpression(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 13
    .parameter "expression"
    .parameter "parameters"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 28
    const-string v7, "is-installed"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 29
    aget-object v3, p2, v5

    .line 30
    .local v3, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 31
    .local v2, minVersionCode:I
    array-length v7, p2

    if-le v7, v6, :cond_19

    .line 33
    const/4 v6, 0x1

    :try_start_13
    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_20

    move-result v2

    .line 39
    :cond_19
    iget-object v5, p0, Lcom/vlingo/client/vvs/AndroidActionEvaluator;->context:Landroid/content/Context;

    invoke-static {v5, v3, v2}, Lcom/vlingo/client/util/PackageUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    .line 63
    .end local v2           #minVersionCode:I
    .end local v3           #packageName:Ljava/lang/String;
    :goto_1f
    return v5

    .line 34
    .restart local v2       #minVersionCode:I
    .restart local v3       #packageName:Ljava/lang/String;
    :catch_20
    move-exception v1

    .line 36
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_1f

    .line 41
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #minVersionCode:I
    .end local v3           #packageName:Ljava/lang/String;
    :cond_22
    const-string v7, "can-handle"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 42
    const-string v0, ""

    .line 43
    .local v0, category:Ljava/lang/String;
    const-string v4, ""

    .line 44
    .local v4, uri:Ljava/lang/String;
    const-string v3, ""

    .line 45
    .restart local v3       #packageName:Ljava/lang/String;
    array-length v7, p2

    if-le v7, v6, :cond_3f

    .line 46
    aget-object v0, p2, v6

    .line 47
    array-length v6, p2

    if-le v6, v8, :cond_3a

    .line 48
    aget-object v4, p2, v8

    .line 50
    :cond_3a
    array-length v6, p2

    if-le v6, v9, :cond_3f

    .line 51
    aget-object v3, p2, v9

    .line 54
    :cond_3f
    iget-object v6, p0, Lcom/vlingo/client/vvs/AndroidActionEvaluator;->context:Landroid/content/Context;

    aget-object v5, p2, v5

    invoke-static {v6, v5, v0, v4, v3}, Lcom/vlingo/client/util/PackageUtil;->canHandleIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_1f

    .line 55
    .end local v0           #category:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #uri:Ljava/lang/String;
    :cond_48
    const-string v7, "setting-equals"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 56
    aget-object v5, p2, v5

    aget-object v6, p2, v6

    invoke-virtual {p0, v5, v6}, Lcom/vlingo/client/vvs/AndroidActionEvaluator;->settingEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_1f

    .line 57
    :cond_59
    const-string v7, "set-setting"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 58
    aget-object v5, p2, v5

    aget-object v7, p2, v6

    invoke-virtual {p0, v5, v7}, Lcom/vlingo/client/vvs/AndroidActionEvaluator;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 59
    goto :goto_1f

    .line 60
    :cond_6a
    const-string v7, "test-and-inc"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 61
    aget-object v5, p2, v5

    aget-object v6, p2, v6

    invoke-virtual {p0, v5, v6}, Lcom/vlingo/client/vvs/AndroidActionEvaluator;->testAndIncrement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_1f

    .line 63
    :cond_7b
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/core/vlservice/response/ActionEvaluator;->evaluateExpression(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    goto :goto_1f
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "settingName"
    .parameter "settingValue"

    .prologue
    .line 68
    invoke-static {p1, p2}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected settingEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "settingName"
    .parameter "settingValue"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-static {p1}, Lcom/vlingo/client/settings/Settings;->hasSetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 113
    :cond_7
    :goto_7
    return v1

    .line 109
    :cond_8
    invoke-virtual {p0, p2}, Lcom/vlingo/client/vvs/AndroidActionEvaluator;->isBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 110
    invoke-static {p1, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "true"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    .line 112
    :cond_1c
    const-string v1, ""

    invoke-static {p1, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, actualSettingValue:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public testAndIncrement(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "settingName"
    .parameter "testValue"

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-static {p1, v3}, Lcom/vlingo/client/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, val:I
    const/4 v1, 0x0

    .line 82
    .local v1, testVal:I
    :try_start_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_13

    move-result v1

    .line 91
    :goto_a
    if-ge v2, v1, :cond_12

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    invoke-static {p1, v2}, Lcom/vlingo/client/settings/Settings;->setInt(Ljava/lang/String;I)V

    .line 96
    const/4 v3, 0x1

    .line 101
    :cond_12
    return v3

    .line 83
    :catch_13
    move-exception v0

    .line 84
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method
