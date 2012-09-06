.class public Lcom/android/systemui/statusbar/policy/BatteryControllerBar;
.super Landroid/content/BroadcastReceiver;
.source "BatteryControllerBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BatteryControllerBar"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BatteryControllerBar"


# instance fields
.field private mContext2:Landroid/content/Context;

.field private mIconViews2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mIconViews2:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mLabelViews2:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mContext2:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method private registerFilter()V
    .registers 3

    .prologue
    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mContext2:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mIconViews2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mLabelViews2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, action:Ljava/lang/String;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fe

    .line 64
    const-string v7, "STATUSBAR-BatteryControllerBar"

    const-string v8, "onReceive() - ACTION_BATTERY_CHANGED"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v7, "level"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 66
    .local v4, level:I
    const-string v7, "STATUSBAR-BatteryControllerBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() - level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v7, "plugged"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 69
    .local v5, plugged:I
    const-string v7, "STATUSBAR-BatteryControllerBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() - plugged:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz v5, :cond_9b

    const v3, 0x7f020352

    .line 75
    .local v3, icon:I
    :goto_56
    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v7, :cond_6d

    .line 76
    const-string v7, "status"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    packed-switch v7, :pswitch_data_10a

    .line 111
    const-string v7, "STATUSBAR-BatteryControllerBar"

    const-string v8, "onReceive() - BATTERY_STATUS_UNKNOWN:"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const v3, 0x7f020351

    .line 118
    :cond_6d
    :goto_6d
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mIconViews2:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_74
    if-ge v2, v0, :cond_d6

    .line 120
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mIconViews2:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 121
    .local v6, v:Landroid/widget/ImageView;
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 123
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mContext2:Landroid/content/Context;

    const v8, 0x7f080070

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 70
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #icon:I
    .end local v6           #v:Landroid/widget/ImageView;
    :cond_9b
    const v3, 0x7f020351

    goto :goto_56

    .line 78
    .restart local v3       #icon:I
    :pswitch_9f
    const-string v7, "STATUSBAR-BatteryControllerBar"

    const-string v8, "onReceive() - BATTERY_STATUS_CHARGING:"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const v3, 0x7f020352

    .line 80
    goto :goto_6d

    .line 82
    :pswitch_aa
    const-string v7, "STATUSBAR-BatteryControllerBar"

    const-string v8, "onReceive() - BATTERY_STATUS_DISCHARGING:"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z

    if-nez v7, :cond_bc

    const/4 v7, 0x2

    if-ne v5, v7, :cond_bc

    .line 85
    const v3, 0x7f02016c

    goto :goto_6d

    .line 87
    :cond_bc
    const v3, 0x7f020351

    .line 89
    goto :goto_6d

    .line 91
    :pswitch_c0
    const-string v7, "STATUSBAR-BatteryControllerBar"

    const-string v8, "onReceive() - BATTERY_STATUS_NOT_CHARGING:"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const v3, 0x7f020173

    .line 105
    goto :goto_6d

    .line 107
    :pswitch_cb
    const-string v7, "STATUSBAR-BatteryControllerBar"

    const-string v8, "onReceive() - BATTERY_STATUS_FULL:"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const v3, 0x7f020351

    .line 109
    goto :goto_6d

    .line 126
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_d6
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mLabelViews2:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 127
    const/4 v2, 0x0

    :goto_dd
    if-ge v2, v0, :cond_fe

    .line 128
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mLabelViews2:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 129
    .local v6, v:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->mContext2:Landroid/content/Context;

    const v8, 0x7f08001c

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_dd

    .line 134
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #icon:I
    .end local v4           #level:I
    .end local v5           #plugged:I
    .end local v6           #v:Landroid/widget/TextView;
    :cond_fe
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_109

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->registerFilter()V

    .line 138
    :cond_109
    return-void

    .line 76
    :pswitch_data_10a
    .packed-switch 0x2
        :pswitch_9f
        :pswitch_aa
        :pswitch_c0
        :pswitch_cb
    .end packed-switch
.end method
