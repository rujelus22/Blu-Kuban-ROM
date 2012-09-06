.class Lcom/google/tts/TTS$1;
.super Ljava/lang/Object;
.source "TTS.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/TTS;->initTts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tts/TTS;


# direct methods
.method constructor <init>(Lcom/google/tts/TTS;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/google/tts/TTS$1;)Lcom/google/tts/TTS;
    .registers 2
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .parameter "name"
    .parameter "service"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    invoke-static {p2}, Lcom/google/tts/ITTS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/tts/ITTS;

    move-result-object v2

    #setter for: Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;
    invoke-static {v1, v2}, Lcom/google/tts/TTS;->access$0(Lcom/google/tts/TTS;Lcom/google/tts/ITTS;)V

    .line 166
    :try_start_9
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    iget-object v2, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #getter for: Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;
    invoke-static {v2}, Lcom/google/tts/TTS;->access$1(Lcom/google/tts/TTS;)Lcom/google/tts/ITTS;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/tts/ITTS;->getVersion()I

    move-result v2

    #setter for: Lcom/google/tts/TTS;->version:I
    invoke-static {v1, v2}, Lcom/google/tts/TTS;->access$2(Lcom/google/tts/TTS;I)V

    .line 174
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #getter for: Lcom/google/tts/TTS;->version:I
    invoke-static {v1}, Lcom/google/tts/TTS;->access$3(Lcom/google/tts/TTS;)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_55

    .line 175
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #getter for: Lcom/google/tts/TTS;->showInstaller:Z
    invoke-static {v1}, Lcom/google/tts/TTS;->access$4(Lcom/google/tts/TTS;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 176
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #getter for: Lcom/google/tts/TTS;->versionAlert:Lcom/google/tts/TTSVersionAlert;
    invoke-static {v1}, Lcom/google/tts/TTS;->access$5(Lcom/google/tts/TTS;)Lcom/google/tts/TTSVersionAlert;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 177
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #getter for: Lcom/google/tts/TTS;->versionAlert:Lcom/google/tts/TTSVersionAlert;
    invoke-static {v1}, Lcom/google/tts/TTS;->access$5(Lcom/google/tts/TTS;)Lcom/google/tts/TTSVersionAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tts/TTSVersionAlert;->show()Landroid/app/AlertDialog;

    .line 214
    :cond_3b
    :goto_3b
    return-void

    .line 179
    :cond_3c
    new-instance v1, Lcom/google/tts/TTSVersionAlert;

    iget-object v2, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #getter for: Lcom/google/tts/TTS;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/tts/TTS;->access$6(Lcom/google/tts/TTS;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/tts/TTSVersionAlert;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/tts/TTSVersionAlert;->show()Landroid/app/AlertDialog;
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_4d} :catch_4e

    goto :goto_3b

    .line 193
    :catch_4e
    move-exception v0

    .line 194
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #calls: Lcom/google/tts/TTS;->initTts()V
    invoke-static {v1}, Lcom/google/tts/TTS;->access$10(Lcom/google/tts/TTS;)V

    goto :goto_3b

    .line 185
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_55
    :try_start_55
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    new-instance v2, Lcom/google/tts/TTS$1$1;

    invoke-direct {v2, p0}, Lcom/google/tts/TTS$1$1;-><init>(Lcom/google/tts/TTS$1;)V

    #setter for: Lcom/google/tts/TTS;->ittscallback:Lcom/google/tts/ITTSCallback;
    invoke-static {v1, v2}, Lcom/google/tts/TTS;->access$8(Lcom/google/tts/TTS;Lcom/google/tts/ITTSCallback;)V

    .line 192
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #getter for: Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;
    invoke-static {v1}, Lcom/google/tts/TTS;->access$1(Lcom/google/tts/TTS;)Lcom/google/tts/ITTS;

    move-result-object v1

    iget-object v2, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #getter for: Lcom/google/tts/TTS;->ittscallback:Lcom/google/tts/ITTSCallback;
    invoke-static {v2}, Lcom/google/tts/TTS;->access$9(Lcom/google/tts/TTS;)Lcom/google/tts/ITTSCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/tts/ITTS;->registerCallback(Lcom/google/tts/ITTSCallback;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_6e} :catch_4e

    .line 198
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    const/4 v2, 0x1

    #setter for: Lcom/google/tts/TTS;->started:Z
    invoke-static {v1, v2}, Lcom/google/tts/TTS;->access$11(Lcom/google/tts/TTS;Z)V

    .line 211
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #getter for: Lcom/google/tts/TTS;->cb:Lcom/google/tts/TTS$InitListener;
    invoke-static {v1}, Lcom/google/tts/TTS;->access$12(Lcom/google/tts/TTS;)Lcom/google/tts/TTS$InitListener;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 212
    iget-object v1, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #getter for: Lcom/google/tts/TTS;->cb:Lcom/google/tts/TTS$InitListener;
    invoke-static {v1}, Lcom/google/tts/TTS;->access$12(Lcom/google/tts/TTS;)Lcom/google/tts/TTS$InitListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #getter for: Lcom/google/tts/TTS;->version:I
    invoke-static {v2}, Lcom/google/tts/TTS;->access$3(Lcom/google/tts/TTS;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/tts/TTS$InitListener;->onInit(I)V

    goto :goto_3b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #setter for: Lcom/google/tts/TTS;->itts:Lcom/google/tts/ITTS;
    invoke-static {v0, v1}, Lcom/google/tts/TTS;->access$0(Lcom/google/tts/TTS;Lcom/google/tts/ITTS;)V

    .line 218
    iget-object v0, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    #setter for: Lcom/google/tts/TTS;->cb:Lcom/google/tts/TTS$InitListener;
    invoke-static {v0, v1}, Lcom/google/tts/TTS;->access$13(Lcom/google/tts/TTS;Lcom/google/tts/TTS$InitListener;)V

    .line 219
    iget-object v0, p0, Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;

    const/4 v1, 0x0

    #setter for: Lcom/google/tts/TTS;->started:Z
    invoke-static {v0, v1}, Lcom/google/tts/TTS;->access$11(Lcom/google/tts/TTS;Z)V

    .line 220
    return-void
.end method
