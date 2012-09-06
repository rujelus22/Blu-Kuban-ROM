.class Lcom/google/tts/TextToSpeechSettings$1;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/TextToSpeechSettings;->addEngineSpecificSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tts/TextToSpeechSettings;

.field private final synthetic val$pluginPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/tts/TextToSpeechSettings;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/tts/TextToSpeechSettings$1;->this$0:Lcom/google/tts/TextToSpeechSettings;

    iput-object p2, p0, Lcom/google/tts/TextToSpeechSettings$1;->val$pluginPackageName:Ljava/lang/String;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preference"

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/tts/TextToSpeechSettings$1;->val$pluginPackageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/tts/TextToSpeechSettings$1;->val$pluginPackageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".EngineSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/google/tts/TextToSpeechSettings$1;->this$0:Lcom/google/tts/TextToSpeechSettings;

    invoke-virtual {v1, v0}, Lcom/google/tts/TextToSpeechSettings;->startActivity(Landroid/content/Intent;)V

    .line 226
    const/4 v1, 0x1

    return v1
.end method
