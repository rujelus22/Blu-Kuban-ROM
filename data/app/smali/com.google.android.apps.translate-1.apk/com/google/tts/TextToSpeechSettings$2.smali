.class Lcom/google/tts/TextToSpeechSettings$2;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/TextToSpeechSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tts/TextToSpeechSettings;

.field private final synthetic val$chkPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/google/tts/TextToSpeechSettings;Landroid/preference/CheckBoxPreference;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/tts/TextToSpeechSettings$2;->this$0:Lcom/google/tts/TextToSpeechSettings;

    iput-object p2, p0, Lcom/google/tts/TextToSpeechSettings$2;->val$chkPref:Landroid/preference/CheckBoxPreference;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings$2;->val$chkPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 627
    iget-object v0, p0, Lcom/google/tts/TextToSpeechSettings$2;->this$0:Lcom/google/tts/TextToSpeechSettings;

    #calls: Lcom/google/tts/TextToSpeechSettings;->loadEngines()V
    invoke-static {v0}, Lcom/google/tts/TextToSpeechSettings;->access$0(Lcom/google/tts/TextToSpeechSettings;)V

    .line 628
    return-void
.end method
