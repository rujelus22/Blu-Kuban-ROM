.class public Lcom/google/android/apps/googlevoice/widget/WidgetService;
.super Landroid/app/Service;
.source "WidgetService.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;


# static fields
.field public static final ACTION_DND:Ljava/lang/String; = "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.DND"

.field public static final ACTION_LOAD_MESSAGE:Ljava/lang/String; = "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.LOAD_MESSAGE"

.field public static final ACTION_NEXT:Ljava/lang/String; = "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.NEXT"

.field public static final ACTION_NOOP:Ljava/lang/String; = "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.NOOP"

.field public static final ACTION_PREV:Ljava/lang/String; = "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.PREV"

.field public static final ACTION_UPDATE:Ljava/lang/String; = "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.UPDATE"

.field public static final EXTRA_LOAD_MESSAGE_INDEX:Ljava/lang/String; = "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.LOAD_MESSAGE_INDEX"


# instance fields
.field private handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field private log:Lcom/google/android/apps/common/log/GLog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public actionUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Action;)V
    .registers 3
    .parameter "model"
    .parameter "action"

    .prologue
    .line 122
    return-void
.end method

.method public actionsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 125
    return-void
.end method

.method public contactsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 128
    return-void
.end method

.method public conversationUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 5
    .parameter "model"
    .parameter "conversation"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 133
    return-void
.end method

.method public labelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 5
    .parameter "model"
    .parameter "label"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 138
    return-void
.end method

.method public modelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 143
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 18

    .prologue
    .line 59
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 60
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    .line 61
    .local v2, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v3

    .line 62
    .local v3, voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->log:Lcom/google/android/apps/common/log/GLog;

    .line 63
    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v4

    .line 64
    .local v4, voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v10

    .line 65
    .local v10, voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v11

    .line 66
    .local v11, serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getWidgetRenderer()Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

    move-result-object v13

    .line 67
    .local v13, widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getWidgetState()Lcom/google/android/apps/googlevoice/widget/WidgetState;

    move-result-object v12

    .line 69
    .local v12, widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;
    new-instance v1, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;

    const-string v5, "inbox"

    const-class v6, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;

    invoke-interface {v2, v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;-><init>(Lcom/google/android/apps/googlevoice/DependencyResolver;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/net/VoiceService;Ljava/lang/String;Lcom/google/android/apps/common/log/GLog;)V

    .line 73
    .local v1, fetcher:Lcom/google/android/apps/googlevoice/ConversationFetcher;
    new-instance v5, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    const-class v6, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    invoke-interface {v2, v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v8

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getBackgroundThreadFactory()Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    move-result-object v16

    move-object v6, v2

    move-object v7, v3

    move-object v9, v4

    move-object/from16 v14, p0

    move-object v15, v1

    invoke-direct/range {v5 .. v16}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;-><init>(Lcom/google/android/apps/googlevoice/DependencyResolver;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/common/log/GLog;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;Landroid/content/Context;Lcom/google/android/apps/googlevoice/ConversationFetcher;Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;)V

    invoke-interface {v2, v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 79
    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    .line 80
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x3f3

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 118
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 119
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart(): intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 87
    if-nez p1, :cond_28

    .line 88
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "got a null intent"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p2}, Lcom/google/android/apps/googlevoice/widget/WidgetService;->stopSelf(I)V

    .line 113
    :cond_27
    :goto_27
    return-void

    .line 93
    :cond_28
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v2, 0x3e9

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_27

    .line 95
    :cond_3c
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.DND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v2, 0x3ea

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_27

    .line 97
    :cond_50
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.PREV"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v2, 0x3ef

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_27

    .line 99
    :cond_64
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.NEXT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v2, 0x3f0

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_27

    .line 101
    :cond_78
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.NOOP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 103
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.LOAD_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 104
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 105
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x3f2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 106
    const-string v1, "com.google.android.apps.googlevoice.widget.VoiceAppWidgetService.LOAD_MESSAGE_INDEX"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendMessage(Landroid/os/Message;)Z

    goto :goto_27

    .line 109
    .end local v0           #message:Landroid/os/Message;
    :cond_a8
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->w(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/google/android/apps/googlevoice/widget/WidgetService;->stopSelf(I)V

    goto/16 :goto_27
.end method

.method public updateCompleted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetService;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 148
    return-void
.end method

.method public updateException(Lcom/google/android/apps/googlevoice/model/VoiceModel;Ljava/lang/Exception;)V
    .registers 3
    .parameter "model"
    .parameter "exception"

    .prologue
    .line 151
    return-void
.end method

.method public updateStarted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 154
    return-void
.end method
