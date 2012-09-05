.class public Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;
.super Ljava/lang/Object;
.source "PlayMusicHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# static fields
.field private static final ACTION_LAUNCH_MUSIC:Ljava/lang/String; = "android.intent.action.MUSIC_PLAYER"

.field private static final ACTION_PLAY:Ljava/lang/String; = "com.android.music.musicservicecommand.play"

.field private static final ACTION_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.MEDIA_PLAY_FROM_SEARCH"

.field private static final EXTRA_BROADCAST_PLAY:Ljava/lang/String; = "broadcastPlay"

.field private static final EXTRA_QUERY:Ljava/lang/String; = "query"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBroadcastIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .parameter "playMusicIntent"

    .prologue
    .line 66
    if-eqz p0, :cond_17

    const-string v0, "broadcastPlay"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 67
    const-string v0, "broadcastPlay"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.play"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter "action"
    .parameter "context"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Landroid/content/Context;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Landroid/content/Context;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 11
    .parameter "action"
    .parameter "context"
    .parameter "dispatcher"

    .prologue
    const/4 v6, 0x1

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.samsung.app.fmradio.STOP"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MUSIC_PLAYER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, playMusicIntent:Landroid/content/Intent;
    const-string v4, "broadcastPlay"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    if-eqz p1, :cond_4d

    .line 44
    const-string v4, "Type"

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, type:[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4d

    .line 46
    aget-object v4, v3, v6

    const-string v5, "Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 47
    const-string v4, "Content"

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, query:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #playMusicIntent:Landroid/content/Intent;
    const-string v4, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .restart local v1       #playMusicIntent:Landroid/content/Intent;
    const-string v4, "query"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v4, "broadcastPlay"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    .end local v2           #query:Ljava/lang/String;
    .end local v3           #type:[Ljava/lang/String;
    :cond_4d
    return-object v1
.end method

.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 5
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 30
    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, p1, v0, p2}, Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Landroid/content/Context;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method
