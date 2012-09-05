.class public Lcom/vlingo/client/vvs/handlers/PlayMediaHandler;
.super Ljava/lang/Object;
.source "PlayMediaHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 11
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    const/4 v7, 0x0

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "Type"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 21
    .local v4, type:[Ljava/lang/String;
    const/4 v5, 0x2

    array-length v6, v4

    if-eq v5, v6, :cond_14

    move-object v1, v0

    .line 32
    .end local v0           #intent:Landroid/content/Intent;
    .local v1, intent:Landroid/content/Intent;
    :goto_13
    return-object v1

    .line 23
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_14
    aget-object v5, v4, v7

    const-string v6, "Music"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 24
    new-instance v2, Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;

    invoke-direct {v2}, Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;-><init>()V

    .line 25
    .local v2, playMusic:Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;
    invoke-virtual {v2, p1, p2}, Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v0

    .end local v2           #playMusic:Lcom/vlingo/client/vvs/handlers/PlayMusicHandler;
    :cond_27
    :goto_27
    move-object v1, v0

    .line 32
    .end local v0           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_13

    .line 28
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_29
    aget-object v5, v4, v7

    const-string v6, "Radio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 29
    new-instance v3, Lcom/vlingo/client/vvs/handlers/PlayRadioHandler;

    invoke-direct {v3}, Lcom/vlingo/client/vvs/handlers/PlayRadioHandler;-><init>()V

    .line 30
    .local v3, playRadio:Lcom/vlingo/client/vvs/handlers/PlayRadioHandler;
    invoke-virtual {v3, p1, p2}, Lcom/vlingo/client/vvs/handlers/PlayRadioHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_27
.end method
