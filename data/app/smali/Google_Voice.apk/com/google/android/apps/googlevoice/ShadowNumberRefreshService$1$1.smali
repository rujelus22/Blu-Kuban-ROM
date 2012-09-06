.class Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1$1;
.super Ljava/lang/Object;
.source "ShadowNumberRefreshService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;

.field final synthetic val$nonNullMappings:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1$1;->this$1:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1$1;->val$nonNullMappings:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1$1;->this$1:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->this$0:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;

    #getter for: Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->access$100(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;)Lcom/google/android/apps/googlevoice/ShadowNumbers;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1$1;->val$nonNullMappings:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/ShadowNumbers;->addOrCreateShadowNumberMappings([Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1$1;->this$1:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->this$0:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;

    #getter for: Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->access$300(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setShadowNumberRefreshTimestamp(J)V

    .line 90
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1$1;->this$1:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->this$0:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;

    #getter for: Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->context:Lcom/google/android/apps/googlevoice/proxy/ContextProxy;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->access$400(Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;)Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.googlevoice.SHADOW_NUMBERS_REFRESHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1$1;->this$1:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->this$0:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1$1;->this$1:Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;

    iget v1, v1, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$1;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->stopSelf(I)V

    .line 92
    return-void
.end method
