.class public final Lcom/anddoes/launcher/preference/c;
.super Lcom/anddoes/launcher/preference/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/preference/g;-><init>(Landroid/content/Context;)V

    .line 53
    if-eqz p1, :cond_e

    .line 54
    const-string v0, "DrawerGroups"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/c;->b:Landroid/content/SharedPreferences;

    .line 56
    :cond_e
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    const-string v0, "all_groups"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 116
    const-string v0, "new_app_group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v2, 0x7f060042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_24
    return-object v0

    .line 118
    :cond_25
    const-string v0, "new_widget_group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v2, 0x7f060043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 120
    :cond_4a
    const-string v0, "setup_group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v2, 0x7f060044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 122
    :cond_6f
    const-string v0, "remove_group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v2, 0x7f060045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 124
    :cond_94
    const-string v0, "switch_to_apps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 125
    iget-object v0, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    .line 126
    :cond_a7
    const-string v0, "switch_to_widgets"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 127
    iget-object v0, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v1, 0x7f060048

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    .line 129
    :cond_ba
    const-string v0, ""

    .line 130
    const-string v1, "apps_all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 131
    iget-object v0, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v1, 0x7f06026a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_cd
    :goto_cd
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group_name_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/preference/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    .line 132
    :cond_e2
    const-string v1, "apps_system"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 133
    iget-object v0, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_cd

    .line 134
    :cond_f4
    const-string v1, "apps_downloaded"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 135
    iget-object v0, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_cd

    .line 136
    :cond_106
    const-string v1, "apps_new"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 137
    iget-object v0, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_cd

    .line 138
    :cond_118
    const-string v1, "apps_ungrouped"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 139
    iget-object v0, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_cd

    .line 140
    :cond_12a
    const-string v1, "widgets_all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 141
    iget-object v0, p0, Lcom/anddoes/launcher/preference/c;->a:Landroid/content/Context;

    const v1, 0x7f060253

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_cd
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "group_name_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/anddoes/launcher/preference/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public final a(Z)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 83
    if-eqz p1, :cond_9

    const-string v1, "tab3_apps"

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    :cond_9
    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    const-string v0, "widget_groups"

    const-string v1, "widgets_all"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 172
    const-string v0, ""

    .line 173
    const-string v1, "apps_all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 174
    const-string v0, "LIST_ALL"

    .line 184
    :cond_c
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group_list_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/preference/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_20
    const-string v1, "apps_system"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 176
    const-string v0, "LIST_SYSTEM"

    goto :goto_c

    .line 177
    :cond_2b
    const-string v1, "apps_downloaded"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 178
    const-string v0, "LIST_DOWNLOADED"

    goto :goto_c

    .line 179
    :cond_36
    const-string v1, "apps_new"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 180
    const-string v0, "LIST_NEW"

    goto :goto_c

    .line 181
    :cond_41
    const-string v1, "widgets_all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 182
    const-string v0, "LIST_ALL"

    goto :goto_c
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "group_list_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/anddoes/launcher/preference/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/anddoes/launcher/ca;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 237
    new-instance v1, Lcom/anddoes/launcher/ca;

    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "apps_all"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_f
    :goto_f
    invoke-direct {v1, p0, p1, v2, v0}, Lcom/anddoes/launcher/ca;-><init>(Lcom/anddoes/launcher/preference/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    :cond_13
    const-string v3, "apps_system"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "apps_downloaded"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "apps_new"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "apps_ungrouped"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "widgets_all"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v0, 0x0

    goto :goto_f

    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "group_isapp_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/anddoes/launcher/preference/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_f
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    const-string v0, "app_groups"

    const-string v1, "apps_all;apps_downloaded"

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/preference/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 7

    .prologue
    .line 213
    const-string v0, ""

    .line 214
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 216
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 217
    array-length v4, v3

    const/4 v1, 0x0

    :goto_14
    if-lt v1, v4, :cond_17

    .line 221
    :cond_16
    return-object v0

    .line 217
    :cond_17
    aget-object v2, v3, v1

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_14
.end method

.method public final e()Ljava/util/List;
    .registers 6

    .prologue
    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    const-string v2, "app_groups"

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/c;->e(Ljava/lang/String;)V

    .line 252
    const-string v2, "widget_groups"

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/preference/c;->e(Ljava/lang/String;)V

    .line 253
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 254
    const-string v0, "apps_all"

    .line 256
    :cond_42
    const-string v2, "all_groups"

    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/preference/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_47
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 259
    array-length v3, v2

    const/4 v0, 0x0

    :goto_4f
    if-lt v0, v3, :cond_52

    .line 264
    return-object v1

    .line 259
    :cond_52
    aget-object v4, v2, v0

    .line 260
    invoke-virtual {p0, v4}, Lcom/anddoes/launcher/preference/c;->c(Ljava/lang/String;)Lcom/anddoes/launcher/ca;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f
.end method
