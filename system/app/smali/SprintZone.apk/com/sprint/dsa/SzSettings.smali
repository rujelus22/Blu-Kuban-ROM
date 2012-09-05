.class public Lcom/sprint/dsa/SzSettings;
.super Ljava/lang/Object;
.source "SzSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/SzSettings$Setting;,
        Lcom/sprint/dsa/SzSettings$SettingGroup;
    }
.end annotation


# static fields
.field public static final DB_COL_DESC:Ljava/lang/String; = "desc"

.field public static final DB_COL_ID:Ljava/lang/String; = "id"

.field public static final DB_COL_SHOW:Ljava/lang/String; = "show"

.field public static final DB_COL_TAG:Ljava/lang/String; = "tag"

.field public static final DB_COL_TITLE:Ljava/lang/String; = "title"

.field public static final DB_TABLE:Ljava/lang/String; = "table_settings"

.field private static final TAG:Ljava/lang/String; = "SprintZone:Settings"


# instance fields
.field private m_settings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/dsa/SzSettings$SettingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private m_ver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "version"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/dsa/SzSettings;->m_ver:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Lcom/sprint/dsa/SzSettings;->m_ver:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public addSetting(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .parameter "id"
    .parameter "show"
    .parameter "tag"
    .parameter "title"
    .parameter "desc"
    .parameter "packId"

    .prologue
    .line 93
    new-instance v0, Lcom/sprint/dsa/SzSettings$Setting;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sprint/dsa/SzSettings$Setting;-><init>(Lcom/sprint/dsa/SzSettings;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, setting:Lcom/sprint/dsa/SzSettings$Setting;
    invoke-virtual {p0, p5}, Lcom/sprint/dsa/SzSettings;->findGroup(Ljava/lang/String;)Lcom/sprint/dsa/SzSettings$SettingGroup;

    move-result-object v9

    .line 96
    .local v9, group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    if-nez v9, :cond_1e

    .line 97
    new-instance v9, Lcom/sprint/dsa/SzSettings$SettingGroup;

    .end local v9           #group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    invoke-direct {v9, p0, p5}, Lcom/sprint/dsa/SzSettings$SettingGroup;-><init>(Lcom/sprint/dsa/SzSettings;Ljava/lang/String;)V

    .line 98
    .restart local v9       #group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    iget-object v1, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1e
    #getter for: Lcom/sprint/dsa/SzSettings$SettingGroup;->m_settingList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/sprint/dsa/SzSettings$SettingGroup;->access$0(Lcom/sprint/dsa/SzSettings$SettingGroup;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public addSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "id"
    .parameter "show"
    .parameter "tag"
    .parameter "title"
    .parameter "desc"
    .parameter "packId"

    .prologue
    .line 105
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    if-eqz p4, :cond_a

    if-nez p5, :cond_b

    .line 110
    :cond_a
    :goto_a
    return-void

    .line 109
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sprint/dsa/SzSettings;->addSetting(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public findGroup(Ljava/lang/String;)Lcom/sprint/dsa/SzSettings$SettingGroup;
    .registers 5
    .parameter "tag"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 116
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 113
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/SzSettings$SettingGroup;

    .line 114
    .local v0, group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    #getter for: Lcom/sprint/dsa/SzSettings$SettingGroup;->m_tag:Ljava/lang/String;
    invoke-static {v0}, Lcom/sprint/dsa/SzSettings$SettingGroup;->access$1(Lcom/sprint/dsa/SzSettings$SettingGroup;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_d
.end method

.method public getAllGroups()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/dsa/SzSettings$SettingGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildCount(I)I
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/SzSettings$SettingGroup;

    .line 194
    .local v0, group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    if-nez v0, :cond_c

    .line 197
    const/4 v1, 0x0

    .line 199
    :goto_b
    return v1

    :cond_c
    #getter for: Lcom/sprint/dsa/SzSettings$SettingGroup;->m_settingList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/dsa/SzSettings$SettingGroup;->access$0(Lcom/sprint/dsa/SzSettings$SettingGroup;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_b
.end method

.method public getGroup(I)Lcom/sprint/dsa/SzSettings$SettingGroup;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/SzSettings$SettingGroup;

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSetting(II)Lcom/sprint/dsa/SzSettings$Setting;
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/SzSettings$SettingGroup;

    .line 184
    .local v0, group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    if-nez v0, :cond_c

    .line 187
    const/4 v1, 0x0

    .line 189
    :goto_b
    return-object v1

    :cond_c
    #getter for: Lcom/sprint/dsa/SzSettings$SettingGroup;->m_settingList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/dsa/SzSettings$SettingGroup;->access$0(Lcom/sprint/dsa/SzSettings$SettingGroup;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/SzSettings$Setting;

    goto :goto_b
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings;->m_ver:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isShow(J)Z
    .registers 10
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 173
    iget-object v3, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_e

    .line 179
    :cond_d
    :goto_d
    return v2

    .line 173
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/SzSettings$SettingGroup;

    .line 174
    .local v0, group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    #getter for: Lcom/sprint/dsa/SzSettings$SettingGroup;->m_settingList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/dsa/SzSettings$SettingGroup;->access$0(Lcom/sprint/dsa/SzSettings$SettingGroup;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/SzSettings$Setting;

    .line 175
    .local v1, setting:Lcom/sprint/dsa/SzSettings$Setting;
    #getter for: Lcom/sprint/dsa/SzSettings$Setting;->m_id:J
    invoke-static {v1}, Lcom/sprint/dsa/SzSettings$Setting;->access$0(Lcom/sprint/dsa/SzSettings$Setting;)J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_1c

    #getter for: Lcom/sprint/dsa/SzSettings$Setting;->m_show:J
    invoke-static {v1}, Lcom/sprint/dsa/SzSettings$Setting;->access$1(Lcom/sprint/dsa/SzSettings$Setting;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    const/4 v2, 0x0

    goto :goto_d
.end method

.method public saveToDb(Lcom/sprint/dsa/data/DbAdapter;)V
    .registers 11
    .parameter "dbHelper"

    .prologue
    .line 120
    if-nez p1, :cond_3

    .line 146
    :goto_2
    return-void

    .line 126
    :cond_3
    invoke-virtual {p1}, Lcom/sprint/dsa/data/DbAdapter;->deleteTableSettings()V

    .line 129
    iget-object v4, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_22

    .line 142
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v1, newVersion:Landroid/content/ContentValues;
    const-string v4, "setting_ver"

    iget-object v5, p0, Lcom/sprint/dsa/SzSettings;->m_ver:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1, v1}, Lcom/sprint/dsa/data/DbAdapter;->updateVersions(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 129
    .end local v1           #newVersion:Landroid/content/ContentValues;
    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/SzSettings$SettingGroup;

    .line 130
    .local v0, group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    #getter for: Lcom/sprint/dsa/SzSettings$SettingGroup;->m_settingList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/dsa/SzSettings$SettingGroup;->access$0(Lcom/sprint/dsa/SzSettings$SettingGroup;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/dsa/SzSettings$Setting;

    .line 131
    .local v2, setting:Lcom/sprint/dsa/SzSettings$Setting;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "id"

    #getter for: Lcom/sprint/dsa/SzSettings$Setting;->m_id:J
    invoke-static {v2}, Lcom/sprint/dsa/SzSettings$Setting;->access$0(Lcom/sprint/dsa/SzSettings$Setting;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string v6, "show"

    #getter for: Lcom/sprint/dsa/SzSettings$Setting;->m_show:J
    invoke-static {v2}, Lcom/sprint/dsa/SzSettings$Setting;->access$1(Lcom/sprint/dsa/SzSettings$Setting;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v6, "tag"

    #getter for: Lcom/sprint/dsa/SzSettings$SettingGroup;->m_tag:Ljava/lang/String;
    invoke-static {v0}, Lcom/sprint/dsa/SzSettings$SettingGroup;->access$1(Lcom/sprint/dsa/SzSettings$SettingGroup;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v6, "title"

    #getter for: Lcom/sprint/dsa/SzSettings$Setting;->m_title:Ljava/lang/String;
    invoke-static {v2}, Lcom/sprint/dsa/SzSettings$Setting;->access$2(Lcom/sprint/dsa/SzSettings$Setting;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v6, "desc"

    #getter for: Lcom/sprint/dsa/SzSettings$Setting;->m_description:Ljava/lang/String;
    invoke-static {v2}, Lcom/sprint/dsa/SzSettings$Setting;->access$3(Lcom/sprint/dsa/SzSettings$Setting;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, v3}, Lcom/sprint/dsa/data/DbAdapter;->insertSetting(Landroid/content/ContentValues;)V

    goto :goto_30
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "version"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sprint/dsa/SzSettings;->m_ver:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public updateSetting(Lcom/sprint/dsa/SzSettings$Setting;)V
    .registers 10
    .parameter "oldSetting"

    .prologue
    .line 157
    iget-object v2, p0, Lcom/sprint/dsa/SzSettings;->m_settings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    .line 162
    return-void

    .line 157
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/SzSettings$SettingGroup;

    .line 158
    .local v0, group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    #getter for: Lcom/sprint/dsa/SzSettings$SettingGroup;->m_settingList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/dsa/SzSettings$SettingGroup;->access$0(Lcom/sprint/dsa/SzSettings$SettingGroup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/SzSettings$Setting;

    .line 159
    .local v1, newSetting:Lcom/sprint/dsa/SzSettings$Setting;
    #getter for: Lcom/sprint/dsa/SzSettings$Setting;->m_id:J
    invoke-static {v1}, Lcom/sprint/dsa/SzSettings$Setting;->access$0(Lcom/sprint/dsa/SzSettings$Setting;)J

    move-result-wide v4

    #getter for: Lcom/sprint/dsa/SzSettings$Setting;->m_id:J
    invoke-static {p1}, Lcom/sprint/dsa/SzSettings$Setting;->access$0(Lcom/sprint/dsa/SzSettings$Setting;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1b

    #getter for: Lcom/sprint/dsa/SzSettings$Setting;->m_show:J
    invoke-static {p1}, Lcom/sprint/dsa/SzSettings$Setting;->access$1(Lcom/sprint/dsa/SzSettings$Setting;)J

    move-result-wide v4

    #setter for: Lcom/sprint/dsa/SzSettings$Setting;->m_show:J
    invoke-static {v1, v4, v5}, Lcom/sprint/dsa/SzSettings$Setting;->access$4(Lcom/sprint/dsa/SzSettings$Setting;J)V

    goto :goto_1b
.end method

.method public updateSettings(Lcom/sprint/dsa/SzSettings;)V
    .registers 7
    .parameter "oldSettings"

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/sprint/dsa/SzSettings;->getAllGroups()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    .line 170
    return-void

    .line 165
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/SzSettings$SettingGroup;

    .line 166
    .local v0, group:Lcom/sprint/dsa/SzSettings$SettingGroup;
    invoke-virtual {v0}, Lcom/sprint/dsa/SzSettings$SettingGroup;->getAllSettings()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/SzSettings$Setting;

    .line 167
    .local v1, setting:Lcom/sprint/dsa/SzSettings$Setting;
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/SzSettings;->updateSetting(Lcom/sprint/dsa/SzSettings$Setting;)V

    goto :goto_1d
.end method
