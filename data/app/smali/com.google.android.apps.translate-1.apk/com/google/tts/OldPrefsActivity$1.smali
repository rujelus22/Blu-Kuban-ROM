.class Lcom/google/tts/OldPrefsActivity$1;
.super Ljava/lang/Object;
.source "OldPrefsActivity.java"

# interfaces
.implements Lcom/google/tts/TTS$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tts/OldPrefsActivity;
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
    iput-object p1, p0, Lcom/google/tts/OldPrefsActivity$1;->this$0:Lcom/google/tts/OldPrefsActivity;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/google/tts/OldPrefsActivity$1;)Lcom/google/tts/OldPrefsActivity;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/tts/OldPrefsActivity$1;->this$0:Lcom/google/tts/OldPrefsActivity;

    return-object v0
.end method


# virtual methods
.method public onInit(I)V
    .registers 5
    .parameter "version"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/google/tts/OldPrefsActivity$1;->this$0:Lcom/google/tts/OldPrefsActivity;

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Lcom/google/tts/OldPrefsActivity;->addPreferencesFromResource(I)V

    .line 38
    iget-object v1, p0, Lcom/google/tts/OldPrefsActivity$1;->this$0:Lcom/google/tts/OldPrefsActivity;

    #calls: Lcom/google/tts/OldPrefsActivity;->loadEngines()V
    invoke-static {v1}, Lcom/google/tts/OldPrefsActivity;->access$0(Lcom/google/tts/OldPrefsActivity;)V

    .line 39
    iget-object v1, p0, Lcom/google/tts/OldPrefsActivity$1;->this$0:Lcom/google/tts/OldPrefsActivity;

    #calls: Lcom/google/tts/OldPrefsActivity;->loadHellos()V
    invoke-static {v1}, Lcom/google/tts/OldPrefsActivity;->access$1(Lcom/google/tts/OldPrefsActivity;)V

    .line 40
    iget-object v1, p0, Lcom/google/tts/OldPrefsActivity$1;->this$0:Lcom/google/tts/OldPrefsActivity;

    const-string v2, "preview"

    invoke-virtual {v1, v2}, Lcom/google/tts/OldPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 41
    .local v0, previewPref:Landroid/preference/Preference;
    new-instance v1, Lcom/google/tts/OldPrefsActivity$1$1;

    invoke-direct {v1, p0}, Lcom/google/tts/OldPrefsActivity$1$1;-><init>(Lcom/google/tts/OldPrefsActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 47
    return-void
.end method
