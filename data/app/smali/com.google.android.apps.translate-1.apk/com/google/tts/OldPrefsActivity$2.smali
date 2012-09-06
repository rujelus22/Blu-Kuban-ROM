.class Lcom/google/tts/OldPrefsActivity$2;
.super Ljava/lang/Object;
.source "OldPrefsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/OldPrefsActivity;->loadEngines()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tts/OldPrefsActivity;


# direct methods
.method constructor <init>(Lcom/google/tts/OldPrefsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/tts/OldPrefsActivity$2;->this$0:Lcom/google/tts/OldPrefsActivity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, chosenEngine:Ljava/lang/String;
    const-string v2, "com.svox.pico"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 76
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v2, "com.svox.pico"

    const-string v3, "com.svox.pico.CheckVoiceData"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v2, p0, Lcom/google/tts/OldPrefsActivity$2;->this$0:Lcom/google/tts/OldPrefsActivity;

    const/16 v3, 0x2a

    invoke-virtual {v2, v1, v3}, Lcom/google/tts/OldPrefsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    .end local v1           #intent:Landroid/content/Intent;
    :cond_24
    const/4 v2, 0x1

    return v2
.end method
