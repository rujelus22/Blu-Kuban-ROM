.class public Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;
.super Ljava/lang/Object;
.source "AndroidMsgDialog.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;


# static fields
.field private static s_Ignored:Z

.field private static sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;


# instance fields
.field private m_Message:Ljava/lang/String;

.field private volatile m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;

.field private m_Type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->s_Ignored:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;
    .registers 2

    .prologue
    .line 27
    const-class v1, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    if-nez v0, :cond_e

    .line 28
    new-instance v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    invoke-direct {v0}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;-><init>()V

    sput-object v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    .line 29
    :cond_e
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setIgnored(Z)V
    .registers 2
    .parameter "ignore"

    .prologue
    .line 76
    sput-boolean p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->s_Ignored:Z

    .line 77
    if-eqz p0, :cond_15

    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    iget-object v0, v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;

    if-eqz v0, :cond_15

    .line 78
    sget-object v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->sm_Instance:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    iget-object v0, v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;

    invoke-virtual {v0}, Lcom/vlingo/client/ui/MessageScreen;->hide()V

    .line 79
    :cond_15
    return-void
.end method


# virtual methods
.method public activated(Lcom/vlingo/client/ui/MessageScreen;)V
    .registers 3
    .parameter "screen"

    .prologue
    .line 33
    sget-boolean v0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->s_Ignored:Z

    if-eqz v0, :cond_8

    .line 34
    invoke-virtual {p1}, Lcom/vlingo/client/ui/MessageScreen;->hide()V

    .line 40
    :cond_7
    :goto_7
    return-void

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;

    if-eq v0, p1, :cond_7

    .line 39
    iput-object p1, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;

    goto :goto_7
.end method

.method public clearMessage()V
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_Message:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public deactivated(Lcom/vlingo/client/ui/MessageScreen;)V
    .registers 3
    .parameter "screen"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;

    if-eq v0, p1, :cond_9

    .line 47
    :cond_8
    :goto_8
    return-void

    .line 46
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;

    goto :goto_8
.end method

.method public declared-synchronized displayMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "msg"
    .parameter "errorCode"
    .parameter "type"

    .prologue
    const/4 v3, -0x1

    .line 50
    monitor-enter p0

    :try_start_2
    sget-boolean v2, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->s_Ignored:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_44

    if-eqz v2, :cond_8

    .line 73
    :goto_6
    monitor-exit p0

    return-void

    .line 53
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    .line 54
    .local v0, context:Landroid/content/Context;
    const-string v2, "/res/text/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 55
    const-string v2, "cantConnect"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_47

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 60
    :cond_26
    :goto_26
    iput-object p1, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_Message:Ljava/lang/String;

    .line 61
    const/4 v2, 0x4

    if-ne p3, v2, :cond_5b

    .line 62
    const v2, 0x1080027

    iput v2, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_Type:I

    .line 66
    :goto_30
    iget-object v2, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;

    if-nez v2, :cond_61

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/ui/MessageScreen;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1040

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_44

    goto :goto_6

    .line 50
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_44
    move-exception v2

    monitor-exit p0

    throw v2

    .line 57
    .restart local v0       #context:Landroid/content/Context;
    :cond_47
    :try_start_47
    const-string v2, "requestTimeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_26

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09019e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    .line 64
    :cond_5b
    const v2, 0x108009b

    iput v2, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_Type:I

    goto :goto_30

    .line 72
    :cond_61
    iget-object v2, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;

    invoke-virtual {v2}, Lcom/vlingo/client/ui/MessageScreen;->updateMessage()V
    :try_end_66
    .catchall {:try_start_47 .. :try_end_66} :catchall_44

    goto :goto_6
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_Message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_Type:I

    return v0
.end method

.method public declared-synchronized isDisplayed()Z
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->m_MsgScreen:Lcom/vlingo/client/ui/MessageScreen;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
