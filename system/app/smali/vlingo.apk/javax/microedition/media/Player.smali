.class public Ljavax/microedition/media/Player;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Ljavax/microedition/media/PlayerListener;


# instance fields
.field private m_listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/microedition/media/PlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_recordControl:Ljavax/microedition/media/control/RecordControl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/microedition/media/Player;->m_listeners:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/media/Player;->m_recordControl:Ljavax/microedition/media/control/RecordControl;

    return-void
.end method


# virtual methods
.method public addPlayerListener(Ljavax/microedition/media/PlayerListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 25
    iget-object v0, p0, Ljavax/microedition/media/Player;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 28
    iget-object v0, p0, Ljavax/microedition/media/Player;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_d
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method public getControl(Ljava/lang/String;)Ljavax/microedition/media/control/Control;
    .registers 3
    .parameter "controlName"

    .prologue
    .line 42
    const-string v0, "RecordControl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 43
    iget-object v0, p0, Ljavax/microedition/media/Player;->m_recordControl:Ljavax/microedition/media/control/RecordControl;

    if-nez v0, :cond_13

    .line 44
    new-instance v0, Ljavax/microedition/media/control/RecordControl;

    invoke-direct {v0, p0}, Ljavax/microedition/media/control/RecordControl;-><init>(Ljavax/microedition/media/PlayerListener;)V

    iput-object v0, p0, Ljavax/microedition/media/Player;->m_recordControl:Ljavax/microedition/media/control/RecordControl;

    .line 46
    :cond_13
    iget-object v0, p0, Ljavax/microedition/media/Player;->m_recordControl:Ljavax/microedition/media/control/RecordControl;

    .line 48
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public playerUpdate(Ljavax/microedition/media/Player;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "player"
    .parameter "event"
    .parameter "eventData"

    .prologue
    .line 55
    iget-object v2, p0, Ljavax/microedition/media/Player;->m_listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/microedition/media/PlayerListener;

    .line 57
    .local v1, pl:Ljavax/microedition/media/PlayerListener;
    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/media/PlayerListener;->playerUpdate(Ljavax/microedition/media/Player;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 59
    .end local v1           #pl:Ljavax/microedition/media/PlayerListener;
    :cond_16
    return-void
.end method

.method public prefetch()V
    .registers 1

    .prologue
    .line 36
    return-void
.end method

.method public realize()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public removePlayerListener(Ljavax/microedition/media/PlayerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 65
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method
