.class public final Lcom/anddoes/launcher/jp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private a:Lcom/anddoes/launcher/i;

.field private b:Ljava/util/Set;

.field private c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/i;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    .line 39
    const/16 v1, 0x3d

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "enable_analytics"

    aput-object v2, v1, v4

    .line 40
    const-string v2, "acra.enable"

    aput-object v2, v1, v5

    .line 41
    const-string v2, "root_helper_version"

    aput-object v2, v1, v6

    .line 42
    const-string v2, "last_check_update"

    aput-object v2, v1, v7

    .line 43
    const-string v2, "drawer_tab_icon_app"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 44
    const-string v3, "drawer_tab_icon_pkg"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 45
    const-string v3, "drawer_tab_icon_act"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 46
    const-string v3, "drawer_tab_icon_component"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 47
    const-string v3, "drawer_tab_icon_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 48
    const-string v3, "home_key_action_app"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 49
    const-string v3, "home_key_action_pkg"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 50
    const-string v3, "home_key_action_act"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 51
    const-string v3, "home_key_action_component"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 52
    const-string v3, "home_key_action_intent"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 53
    const-string v3, "home_key_action_shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 54
    const-string v3, "home_key_action_shortcut_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    .line 55
    const-string v3, "pinch_in_action_app"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    .line 56
    const-string v3, "pinch_in_action_pkg"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    .line 57
    const-string v3, "pinch_in_action_act"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    .line 58
    const-string v3, "pinch_in_action_component"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    .line 59
    const-string v3, "pinch_in_action_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    .line 60
    const-string v3, "pinch_in_action_shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    .line 61
    const-string v3, "pinch_in_action_shortcut_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    .line 62
    const-string v3, "swipe_up_action_app"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    .line 63
    const-string v3, "swipe_up_action_pkg"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    .line 64
    const-string v3, "swipe_up_action_act"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    .line 65
    const-string v3, "swipe_up_action_component"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    .line 66
    const-string v3, "swipe_up_action_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    .line 67
    const-string v3, "swipe_up_action_shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    .line 68
    const-string v3, "swipe_up_action_shortcut_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    .line 69
    const-string v3, "swipe_down_action_app"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    .line 70
    const-string v3, "swipe_down_action_pkg"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    .line 71
    const-string v3, "swipe_down_action_act"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    .line 72
    const-string v3, "swipe_down_action_component"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    .line 73
    const-string v3, "swipe_down_action_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    .line 74
    const-string v3, "swipe_down_action_shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    .line 75
    const-string v3, "swipe_down_action_shortcut_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    .line 76
    const-string v3, "two_finger_swipe_up_action_app"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    .line 77
    const-string v3, "two_finger_swipe_up_action_pkg"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    .line 78
    const-string v3, "two_finger_swipe_up_action_act"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    .line 79
    const-string v3, "two_finger_swipe_up_action_component"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    .line 80
    const-string v3, "two_finger_swipe_up_action_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    .line 81
    const-string v3, "two_finger_swipe_up_action_shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    .line 82
    const-string v3, "two_finger_swipe_up_action_shortcut_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    .line 83
    const-string v3, "two_finger_swipe_down_action_app"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    .line 84
    const-string v3, "two_finger_swipe_down_action_pkg"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    .line 85
    const-string v3, "two_finger_swipe_down_action_act"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    .line 86
    const-string v3, "two_finger_swipe_down_action_component"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    .line 87
    const-string v3, "two_finger_swipe_down_action_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    .line 88
    const-string v3, "two_finger_swipe_down_action_shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    .line 89
    const-string v3, "two_finger_swipe_down_action_shortcut_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    .line 90
    const-string v3, "desktop_double_tap_action_app"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    .line 91
    const-string v3, "desktop_double_tap_action_pkg"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    .line 92
    const-string v3, "desktop_double_tap_action_act"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    .line 93
    const-string v3, "desktop_double_tap_action_component"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    .line 94
    const-string v3, "desktop_double_tap_action_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    .line 95
    const-string v3, "desktop_double_tap_action_shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    .line 96
    const-string v3, "desktop_double_tap_action_shortcut_intent"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    .line 97
    const-string v3, "theme_iconpack_pkg"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    .line 98
    const-string v3, "theme_skin_pkg"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    .line 99
    const-string v3, "theme_font_pkg"

    aput-object v3, v1, v2

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/anddoes/launcher/jp;->b:Ljava/util/Set;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    .line 103
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "drawer_hidden_apps"

    aput-object v2, v1, v4

    .line 104
    const-string v2, "phone_app"

    aput-object v2, v1, v5

    const-string v2, "sms_app"

    aput-object v2, v1, v6

    const-string v2, "gmail_app"

    aput-object v2, v1, v7

    .line 103
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/anddoes/launcher/jp;->c:Ljava/util/Set;

    .line 35
    iput-object p1, p0, Lcom/anddoes/launcher/jp;->a:Lcom/anddoes/launcher/i;

    .line 36
    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x64

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 188
    :cond_c
    :goto_c
    return-void

    .line 167
    :cond_d
    const-string v2, "enable_reporting"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 168
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 169
    if-eqz v2, :cond_39

    .line 170
    iget-object v1, p0, Lcom/anddoes/launcher/jp;->a:Lcom/anddoes/launcher/i;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/i;->a(Z)V

    .line 171
    iget-object v1, p0, Lcom/anddoes/launcher/jp;->a:Lcom/anddoes/launcher/i;

    const-string v2, "User Action"

    .line 172
    const-string v3, "Preference toggled"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Preference: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_c

    .line 174
    :cond_39
    iget-object v0, p0, Lcom/anddoes/launcher/jp;->a:Lcom/anddoes/launcher/i;

    const-string v2, "User Action"

    .line 175
    const-string v3, "Preference toggled"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Preference: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    cmp-long v0, v8, v6

    if-lez v0, :cond_5a

    const-wide/16 v2, 0x64

    :try_start_57
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_144

    .line 177
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/anddoes/launcher/jp;->a:Lcom/anddoes/launcher/i;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->a(Z)V

    goto :goto_c

    .line 179
    :cond_60
    const-string v2, "desktop_locked"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 180
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 181
    iget-object v3, p0, Lcom/anddoes/launcher/jp;->a:Lcom/anddoes/launcher/i;

    const-string v4, "User Action"

    .line 182
    const-string v5, "Desktop Lock"

    const-string v6, "desktop_locked"

    if-eqz v2, :cond_7a

    .line 181
    :goto_76
    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_c

    :cond_7a
    move v0, v1

    .line 182
    goto :goto_76

    .line 183
    :cond_7c
    iget-object v2, p0, Lcom/anddoes/launcher/jp;->b:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 186
    :try_start_84
    const-string v2, "unknown"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anddoes/launcher/jp;->c:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    const-string v2, "PII"

    :cond_94
    iget-object v3, p0, Lcom/anddoes/launcher/jp;->a:Lcom/anddoes/launcher/i;

    const-string v4, "User Action"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Preference: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Preference: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_ba
    .catch Ljava/lang/ClassCastException; {:try_start_84 .. :try_end_ba} :catch_bc

    goto/16 :goto_c

    :catch_bc
    move-exception v2

    const/4 v2, 0x0

    :try_start_be
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/anddoes/launcher/jp;->a:Lcom/anddoes/launcher/i;

    const-string v4, "User Action"

    const-string v5, "Preference toggled"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Preference:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_142

    :goto_d9
    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_dc
    .catch Ljava/lang/ClassCastException; {:try_start_be .. :try_end_dc} :catch_de

    goto/16 :goto_c

    :catch_de
    move-exception v0

    const/4 v0, 0x0

    :try_start_e0
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/anddoes/launcher/jp;->a:Lcom/anddoes/launcher/i;

    const-string v2, "User Action"

    const-string v3, "Preference toggled"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Preference:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_fc
    .catch Ljava/lang/ClassCastException; {:try_start_e0 .. :try_end_fc} :catch_fe

    goto/16 :goto_c

    :catch_fe
    move-exception v0

    const-wide/16 v0, 0x0

    :try_start_101
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    iget-object v0, p0, Lcom/anddoes/launcher/jp;->a:Lcom/anddoes/launcher/i;

    const-string v1, "User Action"

    const-string v2, "Preference toggled"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preference:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_11d
    .catch Ljava/lang/ClassCastException; {:try_start_101 .. :try_end_11d} :catch_11f

    goto/16 :goto_c

    :catch_11f
    move-exception v0

    const/4 v0, 0x0

    :try_start_121
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    iget-object v0, p0, Lcom/anddoes/launcher/jp;->a:Lcom/anddoes/launcher/i;

    const-string v1, "User Action"

    const-string v2, "Preference toggled"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preference:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_13d
    .catch Ljava/lang/ClassCastException; {:try_start_121 .. :try_end_13d} :catch_13f

    goto/16 :goto_c

    :catch_13f
    move-exception v0

    goto/16 :goto_c

    :cond_142
    move v0, v1

    goto :goto_d9

    :catch_144
    move-exception v0

    goto/16 :goto_5a
.end method
