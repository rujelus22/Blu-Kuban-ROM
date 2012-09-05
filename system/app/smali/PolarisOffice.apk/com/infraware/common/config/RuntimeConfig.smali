.class public Lcom/infraware/common/config/RuntimeConfig;
.super Ljava/lang/Object;
.source "RuntimeConfig.java"


# static fields
.field private static final PREFERENCE_FILE_NAME:Ljava/lang/String; = "polaris:preferences"

.field private static final PREFERENCE_ORIENTATION:Ljava/lang/String; = "key_orientation"

.field private static final PREFERENCE_PIVOT_LOCK:Ljava/lang/String; = "key_pivot_lock"

.field private static final PREFERENCE_SMARTSHARE_SIZE:Ljava/lang/String; = "key_smartshare_size"

.field private static final PREFERENCE_SORT_FIELD:Ljava/lang/String; = "key_sort_field"

.field private static instance:Lcom/infraware/common/config/RuntimeConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/common/config/RuntimeConfig;->instance:Lcom/infraware/common/config/RuntimeConfig;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/infraware/common/config/RuntimeConfig;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/infraware/common/config/RuntimeConfig;->instance:Lcom/infraware/common/config/RuntimeConfig;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lcom/infraware/common/config/RuntimeConfig;

    invoke-direct {v0}, Lcom/infraware/common/config/RuntimeConfig;-><init>()V

    sput-object v0, Lcom/infraware/common/config/RuntimeConfig;->instance:Lcom/infraware/common/config/RuntimeConfig;

    .line 30
    :cond_b
    sget-object v0, Lcom/infraware/common/config/RuntimeConfig;->instance:Lcom/infraware/common/config/RuntimeConfig;

    return-object v0
.end method


# virtual methods
.method public getOrientation(Landroid/content/Context;)I
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 100
    const-string v3, "polaris:preferences"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    .local v0, oPreference:Landroid/content/SharedPreferences;
    const-string v3, "key_orientation"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 102
    .local v2, rotation:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 103
    .local v1, orientation:I
    invoke-virtual {p0, p1}, Lcom/infraware/common/config/RuntimeConfig;->isPivotLock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 105
    sparse-switch v2, :sswitch_data_26

    .line 118
    :cond_20
    :goto_20
    return v1

    .line 109
    :sswitch_21
    const/4 v1, 0x1

    .line 110
    goto :goto_20

    .line 113
    :sswitch_23
    const/4 v1, 0x2

    goto :goto_20

    .line 105
    nop

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_23
        0x1 -> :sswitch_21
        0x8 -> :sswitch_23
        0x9 -> :sswitch_21
    .end sparse-switch
.end method

.method public getRequestedOrientationForsetRequestedOrientation(Landroid/app/Activity;)I
    .registers 8
    .parameter "activity"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 43
    const/4 v1, -0x1

    .line 44
    .local v1, requestedOrientation:I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 45
    .local v0, currentOrientation:I
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 48
    .local v2, rotation:I
    packed-switch v2, :pswitch_data_3a

    .line 76
    :goto_1c
    return v1

    .line 51
    :pswitch_1d
    if-ne v0, v4, :cond_21

    .line 52
    const/4 v1, 0x1

    goto :goto_1c

    .line 54
    :cond_21
    const/4 v1, 0x0

    .line 55
    goto :goto_1c

    .line 57
    :pswitch_23
    if-ne v0, v5, :cond_27

    .line 58
    const/4 v1, 0x0

    goto :goto_1c

    .line 60
    :cond_27
    const/4 v1, 0x1

    .line 61
    goto :goto_1c

    .line 63
    :pswitch_29
    if-ne v0, v4, :cond_2e

    .line 64
    const/16 v1, 0x9

    goto :goto_1c

    .line 66
    :cond_2e
    const/16 v1, 0x8

    .line 67
    goto :goto_1c

    .line 69
    :pswitch_31
    if-ne v0, v5, :cond_36

    .line 70
    const/16 v1, 0x8

    goto :goto_1c

    .line 72
    :cond_36
    const/16 v1, 0x9

    goto :goto_1c

    .line 48
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_31
    .end packed-switch
.end method

.method public getSmartShare(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    .line 152
    const-string v1, "polaris:preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    .local v0, oPreference:Landroid/content/SharedPreferences;
    const-string v1, "key_smartshare_size"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSortField(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 130
    const-string v1, "polaris:preferences"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    .local v0, oPreference:Landroid/content/SharedPreferences;
    const-string v1, "key_sort_field"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public initializeSetting(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 35
    const-string v1, "polaris:preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_pivot_lock"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    const-string v1, "key_orientation"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public isPivotLock(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSupportPivotLock()Z

    move-result v2

    if-nez v2, :cond_8

    .line 95
    :goto_7
    return v1

    .line 94
    :cond_8
    const-string v2, "polaris:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, oPreference:Landroid/content/SharedPreferences;
    const-string v2, "key_pivot_lock"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_7
.end method

.method public onChangeOrientation(Landroid/app/Activity;)V
    .registers 6
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 135
    const/4 v1, -0x1

    .line 136
    .local v1, orientation:I
    const-string v2, "polaris:preferences"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    .local v0, oPreference:Landroid/content/SharedPreferences;
    invoke-virtual {p0, p1}, Lcom/infraware/common/config/RuntimeConfig;->isPivotLock(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 138
    const-string v2, "key_orientation"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 140
    :cond_14
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 141
    return-void
.end method

.method public setPivotLock(Landroid/app/Activity;Z)V
    .registers 7
    .parameter "activity"
    .parameter "isLock"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/infraware/common/config/RuntimeConfig;->getRequestedOrientationForsetRequestedOrientation(Landroid/app/Activity;)I

    move-result v1

    .line 83
    .local v1, requestedOrientation:I
    const-string v2, "polaris:preferences"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_pivot_lock"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v2, "key_orientation"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method public setSmartShare(Landroid/app/Activity;I)V
    .registers 6
    .parameter "activity"
    .parameter "nSize"

    .prologue
    .line 145
    const-string v1, "polaris:preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_smartshare_size"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    return-void
.end method

.method public setSortField(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "field"

    .prologue
    .line 123
    const-string v1, "polaris:preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_sort_field"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method
