.class public Lcom/vlingo/client/lmtt/LMTTService;
.super Landroid/app/Service;
.source "LMTTService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;
    }
.end annotation


# static fields
.field public static final DEBUG_ACTION_CLEARCLIENTDB:I = 0x1

.field public static final DEBUG_ACTION_CLEARSERVERDB:I = 0x2

.field public static final DEBUG_ACTION_SENDLMTT:I = 0x3

.field public static final DEBUG_TYPE_CONTACTS:I = 0x2

.field public static final DEBUG_TYPE_MUSIC:I = 0x1

.field public static final EXTRA_CLEAR_LANG_CHANGE:Ljava/lang/String; = "com.vlingo.client.lang_change"

.field public static final EXTRA_CLEAR_LMTT:Ljava/lang/String; = "com.vlingo.client.clear_lmtt"

.field public static final EXTRA_DEBUG:Ljava/lang/String; = "com.vlingo.client.lmtt.debug"

.field public static final EXTRA_DEBUG_ACTION:Ljava/lang/String; = "com.vlingo.client.lmtt.debug_action"

.field public static final EXTRA_DEBUG_TYPE:Ljava/lang/String; = "com.vlingo.client.lmtt.debug_type"

.field public static final EXTRA_SKIP_INITIAL_DELAY:Ljava/lang/String; = "com.vlingo.client.skipInitialDelay"


# instance fields
.field private volatile lmttUpdate:Lcom/vlingo/client/lmtt/LMTTUpdate;

.field private m_contactsObserver:Landroid/database/ContentObserver;

.field private m_musicObserver:Landroid/database/ContentObserver;

.field private m_playlistsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService;->lmttUpdate:Lcom/vlingo/client/lmtt/LMTTUpdate;

    .line 46
    iput-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_contactsObserver:Landroid/database/ContentObserver;

    .line 47
    iput-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_musicObserver:Landroid/database/ContentObserver;

    .line 48
    iput-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_playlistsObserver:Landroid/database/ContentObserver;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/lmtt/LMTTService;)Lcom/vlingo/client/lmtt/LMTTUpdate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getLMTTUpdate()Lcom/vlingo/client/lmtt/LMTTUpdate;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getLMTTUpdate()Lcom/vlingo/client/lmtt/LMTTUpdate;
    .registers 3

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService;->lmttUpdate:Lcom/vlingo/client/lmtt/LMTTUpdate;

    if-nez v0, :cond_10

    .line 86
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTUpdate;

    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vlingo/client/lmtt/LMTTUpdate;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService;->lmttUpdate:Lcom/vlingo/client/lmtt/LMTTUpdate;

    .line 88
    :cond_10
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService;->lmttUpdate:Lcom/vlingo/client/lmtt/LMTTUpdate;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 85
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 98
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v1

    if-nez v1, :cond_48

    .line 101
    new-instance v1, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;-><init>(Lcom/vlingo/client/lmtt/LMTTService;I)V

    iput-object v1, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_contactsObserver:Landroid/database/ContentObserver;

    .line 102
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_contactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    new-instance v1, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;-><init>(Lcom/vlingo/client/lmtt/LMTTService;I)V

    iput-object v1, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_musicObserver:Landroid/database/ContentObserver;

    .line 110
    const-string v1, "content://media/external/audio/music_playlists"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_musicObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    new-instance v1, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/lmtt/LMTTService$VContentObserver;-><init>(Lcom/vlingo/client/lmtt/LMTTService;I)V

    iput-object v1, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_playlistsObserver:Landroid/database/ContentObserver;

    .line 118
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_playlistsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    .end local v0           #uri:Landroid/net/Uri;
    :goto_47
    return-void

    .line 125
    :cond_48
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTService;->stopSelf()V

    goto :goto_47
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_contactsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_d

    .line 200
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_contactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 202
    :cond_d
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_musicObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1a

    .line 203
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_musicObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 205
    :cond_1a
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_playlistsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_27

    .line 206
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTService;->m_playlistsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 208
    :cond_27
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 209
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 16
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 134
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 136
    if-eqz p1, :cond_61

    const-string v0, "com.vlingo.client.lmtt.debug"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 137
    const-string v0, "com.vlingo.client.lmtt.debug_type"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 138
    .local v10, type:I
    const-string v0, "com.vlingo.client.lmtt.debug_action"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 139
    .local v6, action:I
    packed-switch v10, :pswitch_data_a6

    .line 165
    :cond_22
    :goto_22
    const/4 v0, 0x1

    .line 192
    .end local v6           #action:I
    .end local v10           #type:I
    :goto_23
    return v0

    .line 141
    .restart local v6       #action:I
    .restart local v10       #type:I
    :pswitch_24
    const/4 v0, 0x1

    if-ne v6, v0, :cond_2d

    .line 142
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_CONTACT:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-static {v0}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->clearLMTTTable(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;)V

    goto :goto_22

    .line 144
    :cond_2d
    const/4 v0, 0x2

    if-eq v6, v0, :cond_22

    .line 147
    const/4 v0, 0x3

    if-ne v6, v0, :cond_22

    .line 148
    invoke-direct {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getLMTTUpdate()Lcom/vlingo/client/lmtt/LMTTUpdate;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_CONTACT_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/lmtt/LMTTUpdate;->fireUpdate(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;ZZZ)V

    goto :goto_22

    .line 152
    :pswitch_40
    const/4 v0, 0x1

    if-ne v6, v0, :cond_4e

    .line 153
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-static {v0}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->clearLMTTTable(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;)V

    .line 154
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-static {v0}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->clearLMTTTable(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;)V

    goto :goto_22

    .line 156
    :cond_4e
    const/4 v0, 0x2

    if-eq v6, v0, :cond_22

    .line 159
    const/4 v0, 0x3

    if-ne v6, v0, :cond_22

    .line 160
    invoke-direct {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getLMTTUpdate()Lcom/vlingo/client/lmtt/LMTTUpdate;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vlingo/client/lmtt/LMTTUpdate;->fireUpdate(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;ZZZ)V

    goto :goto_22

    .line 168
    .end local v6           #action:I
    .end local v10           #type:I
    :cond_61
    const/4 v9, 0x0

    .line 169
    .local v9, skipDelay:Z
    const/4 v7, 0x0

    .line 170
    .local v7, clearLMTT:Z
    const/4 v5, 0x0

    .line 171
    .local v5, lang_change:Z
    if-eqz p1, :cond_7b

    .line 172
    const-string v0, "com.vlingo.client.skipInitialDelay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 173
    const-string v0, "com.vlingo.client.clear_lmtt"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 174
    const-string v0, "com.vlingo.client.lang_change"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 176
    :cond_7b
    invoke-direct {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getLMTTUpdate()Lcom/vlingo/client/lmtt/LMTTUpdate;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_CONTACT_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    invoke-virtual {v0, v1, v9, v7, v5}, Lcom/vlingo/client/lmtt/LMTTUpdate;->fireUpdate(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;ZZZ)V

    .line 179
    const-string v0, "music_db_data_captured"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 180
    .local v8, musicLMTTSent:Z
    if-nez v8, :cond_9f

    .line 181
    const v11, 0x493e0

    .line 182
    .local v11, waitTime:I
    if-eqz v5, :cond_94

    .line 183
    const/16 v11, 0x1f4

    .line 184
    :cond_94
    invoke-direct {p0}, Lcom/vlingo/client/lmtt/LMTTService;->getLMTTUpdate()Lcom/vlingo/client/lmtt/LMTTUpdate;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    int-to-long v2, v11

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/lmtt/LMTTUpdate;->fireUpdate(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;JZZ)V

    .line 192
    .end local v5           #lang_change:Z
    .end local v7           #clearLMTT:Z
    .end local v8           #musicLMTTSent:Z
    .end local v9           #skipDelay:Z
    .end local v11           #waitTime:I
    :cond_9f
    :goto_9f
    const/4 v0, 0x1

    goto :goto_23

    .line 190
    :cond_a1
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTService;->stopSelf()V

    goto :goto_9f

    .line 139
    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_40
        :pswitch_24
    .end packed-switch
.end method
