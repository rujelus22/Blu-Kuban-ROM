.class Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$3;
.super Ljava/lang/Object;
.source "WidgetServiceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$3;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 246
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$3;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    monitor-enter v1

    .line 247
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$3;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->updating:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->access$202(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;Z)Z

    .line 248
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_26

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$3;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    #getter for: Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->access$500(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$3;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    #getter for: Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->access$300(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$3;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    #getter for: Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->widgetState:Lcom/google/android/apps/googlevoice/widget/WidgetState;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->access$100(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)Lcom/google/android/apps/googlevoice/widget/WidgetState;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler$3;->this$0:Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;

    #getter for: Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;->access$400(Lcom/google/android/apps/googlevoice/widget/WidgetServiceHandler;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;->render(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 250
    return-void

    .line 248
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method
