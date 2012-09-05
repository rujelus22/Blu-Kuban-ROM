.class Lcom/vlingo/client/settings/DebugSettings$1$1;
.super Ljava/lang/Object;
.source "DebugSettings.java"

# interfaces
.implements Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/DebugSettings$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field final synthetic this$1:Lcom/vlingo/client/settings/DebugSettings$1;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/DebugSettings$1;)V
    .registers 5
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/vlingo/client/settings/DebugSettings$1$1;->this$1:Lcom/vlingo/client/settings/DebugSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/vlingo/client/settings/DebugSettings$1$1;->this$1:Lcom/vlingo/client/settings/DebugSettings$1;

    iget-object v0, v0, Lcom/vlingo/client/settings/DebugSettings$1;->this$0:Lcom/vlingo/client/settings/DebugSettings;

    const-string v1, "TTS Caching"

    const-string v2, "Starting..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/settings/DebugSettings$1$1;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public onCachingCancelled()V
    .registers 1

    .prologue
    .line 140
    return-void
.end method

.method public onCachingFinished(ZLjava/lang/String;)V
    .registers 4
    .parameter "success"
    .parameter "error"

    .prologue
    .line 132
    if-eqz p1, :cond_8

    .line 133
    iget-object v0, p0, Lcom/vlingo/client/settings/DebugSettings$1$1;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 138
    :goto_7
    return-void

    .line 136
    :cond_8
    iget-object v0, p0, Lcom/vlingo/client/settings/DebugSettings$1$1;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method public onCachingStarted()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vlingo/client/settings/DebugSettings$1$1;->dialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 130
    return-void
.end method

.method public onCachingUpdated(F)V
    .registers 4
    .parameter "percentage"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vlingo/client/settings/DebugSettings$1$1;->dialog:Landroid/app/ProgressDialog;

    float-to-int v1, p1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 127
    return-void
.end method
