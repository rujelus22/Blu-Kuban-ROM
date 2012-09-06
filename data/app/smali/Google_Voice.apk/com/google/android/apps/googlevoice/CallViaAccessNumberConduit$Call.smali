.class Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;
.super Lcom/google/android/apps/googlevoice/CallConduit$Call;
.source "CallViaAccessNumberConduit.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/CallLogService$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Call"
.end annotation


# instance fields
.field public gateway:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;)V
    .registers 7
    .parameter
    .parameter "destination"
    .parameter "onSuccess"
    .parameter "onFailure"
    .parameter "onAuthenticationFailure"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    .line 189
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/apps/googlevoice/CallConduit$Call;-><init>(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->gateway:Ljava/lang/String;

    .line 191
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    #getter for: Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->access$300(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clearDoNotCallNumber()V

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    #getter for: Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->access$300(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->clearAccessNumber()V

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->abandonCall(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;)V

    .line 222
    return-void
.end method

.method public complete()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->completeCall(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;)V

    .line 227
    return-void
.end method

.method public onAccessNumberAuthenticationFailure()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    #getter for: Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->log:Lcom/google/android/apps/common/log/GLog;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->access$100(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    const-string v1, "onAccessNumberAuthenticationFailure(): sending onAuthenticationFailure"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    #getter for: Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->access$200(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onAccessNumberAuthenticationError()V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->onAuthenticationFailure()V

    .line 198
    return-void
.end method

.method public onAccessNumberFailure()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    #getter for: Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->log:Lcom/google/android/apps/common/log/GLog;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->access$100(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    const-string v1, "onAccessNumberFailure(): sending onFailure"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    #getter for: Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->callSetupEventLogger:Lcom/google/android/apps/googlevoice/CallSetupEventLogger;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->access$200(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/googlevoice/CallSetupEventLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/CallSetupEventLogger;->onAccessNumberLookupFailed()V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->onFailure()V

    .line 205
    return-void
.end method

.method public onAccessNumberSuccess(Ljava/lang/String;)V
    .registers 4
    .parameter "accessNumber"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    #getter for: Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->log:Lcom/google/android/apps/common/log/GLog;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->access$100(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    const-string v1, "onAccessNumberSuccess"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 210
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->gateway:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    #getter for: Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->access$300(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->gateway:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDoNotCallNumber(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    #getter for: Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->access$300(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->gateway:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAccessNumber(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;->onSuccess()V

    .line 215
    return-void
.end method
