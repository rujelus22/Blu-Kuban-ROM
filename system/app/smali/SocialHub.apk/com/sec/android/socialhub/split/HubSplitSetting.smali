.class public Lcom/sec/android/socialhub/split/HubSplitSetting;
.super Ljava/lang/Object;
.source "HubSplitSetting.java"


# static fields
.field private static default_width:I

.field private static gw_feed_selected:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

.field private static gw_message_selected:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

.field private static split_arrow:Landroid/widget/ImageView;

.field private static split_feed_width:I

.field private static split_message_width:I

.field private static split_selected:Z

.field private static split_setting_value:I

.field private static view_min_width:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    sput v1, Lcom/sec/android/socialhub/split/HubSplitSetting;->default_width:I

    .line 23
    sput v1, Lcom/sec/android/socialhub/split/HubSplitSetting;->view_min_width:I

    .line 28
    sget v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->default_width:I

    sput v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_feed_width:I

    .line 33
    sget v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->default_width:I

    sput v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_message_width:I

    .line 38
    sput-boolean v1, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_selected:Z

    .line 44
    sput-object v2, Lcom/sec/android/socialhub/split/HubSplitSetting;->gw_feed_selected:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 50
    sput-object v2, Lcom/sec/android/socialhub/split/HubSplitSetting;->gw_message_selected:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 55
    sput-object v2, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_arrow:Landroid/widget/ImageView;

    .line 62
    sput v1, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_setting_value:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 248
    return-void
.end method

.method public static getDestMinWidth()I
    .registers 1

    .prologue
    .line 206
    sget v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->view_min_width:I

    return v0
.end method

.method public static getSelectedAccount(I)Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    .registers 5
    .parameter "type"

    .prologue
    .line 135
    const-string v0, "HubSplitSetting"

    const-string v1, "getSelectedAccount()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    packed-switch p0, :pswitch_data_26

    .line 145
    const/4 v0, 0x0

    :goto_1e
    return-object v0

    .line 139
    :pswitch_1f
    sget-object v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->gw_feed_selected:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    goto :goto_1e

    .line 142
    :pswitch_22
    sget-object v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->gw_message_selected:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    goto :goto_1e

    .line 136
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public static getSplitSelected()Z
    .registers 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_selected:Z

    return v0
.end method

.method public static getSplitWidth(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 217
    packed-switch p0, :pswitch_data_c

    .line 225
    sget v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->default_width:I

    :goto_5
    return v0

    .line 220
    :pswitch_6
    sget v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_feed_width:I

    goto :goto_5

    .line 223
    :pswitch_9
    sget v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_message_width:I

    goto :goto_5

    .line 217
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->default_width:I

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->view_min_width:I

    .line 194
    sget v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->default_width:I

    sput v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_message_width:I

    .line 195
    sget v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->default_width:I

    sput v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_feed_width:I

    .line 196
    return-void
.end method

.method public static isSupportSplitView()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 77
    sget v1, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_setting_value:I

    if-ne v1, v0, :cond_6

    .line 81
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static registerSplitArrowImage(Landroid/widget/ImageView;)V
    .registers 1
    .parameter "arrow"

    .prologue
    .line 156
    sput-object p0, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_arrow:Landroid/widget/ImageView;

    .line 157
    return-void
.end method

.method public static setSelectedAccount(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 3
    .parameter "type"
    .parameter "wrapper"

    .prologue
    const/4 v0, 0x0

    .line 115
    packed-switch p0, :pswitch_data_1a

    .line 125
    :goto_4
    return-void

    .line 118
    :pswitch_5
    if-nez p1, :cond_a

    :goto_7
    sput-object v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->gw_feed_selected:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->clone()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    goto :goto_7

    .line 122
    :pswitch_f
    if-nez p1, :cond_14

    :goto_11
    sput-object v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->gw_message_selected:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    goto :goto_4

    :cond_14
    invoke-virtual {p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->clone()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    goto :goto_11

    .line 115
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_f
    .end packed-switch
.end method

.method public static setSplitSelected(Z)V
    .registers 3
    .parameter "bSelected"

    .prologue
    .line 176
    sput-boolean p0, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_selected:Z

    .line 178
    sget-object v0, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_arrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 180
    sget-object v1, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_arrow:Landroid/widget/ImageView;

    if-eqz p0, :cond_11

    const v0, 0x7f020159

    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 182
    :cond_10
    return-void

    .line 180
    :cond_11
    const v0, 0x7f020158

    goto :goto_d
.end method

.method public static setSplitWidth(II)V
    .registers 6
    .parameter "type"
    .parameter "width"

    .prologue
    .line 236
    const-string v0, "HubSplitSetting"

    const-string v1, "setSplitWidth()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", width - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    packed-switch p0, :pswitch_data_2e

    .line 246
    :goto_27
    return-void

    .line 241
    :pswitch_28
    sput p1, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_feed_width:I

    .line 244
    :pswitch_2a
    sput p1, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_message_width:I

    goto :goto_27

    .line 238
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_28
        :pswitch_2a
    .end packed-switch
.end method

.method public static updateSplitSettingValue(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spliteview_mode_socialhub"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_setting_value:I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_c} :catch_29

    .line 103
    :goto_c
    const-string v1, "HubSplitSetting"

    const-string v2, "updateSplitSettingValue()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "split_setting_value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_setting_value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 98
    :catch_29
    move-exception v0

    .line 100
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, -0x1

    sput v1, Lcom/sec/android/socialhub/split/HubSplitSetting;->split_setting_value:I

    goto :goto_c
.end method
