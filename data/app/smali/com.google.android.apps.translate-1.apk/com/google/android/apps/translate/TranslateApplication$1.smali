.class Lcom/google/android/apps/translate/TranslateApplication$1;
.super Ljava/lang/Object;
.source "TranslateApplication.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/TranslateApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/TranslateApplication;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/TranslateApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateApplication$1;->this$0:Lcom/google/android/apps/translate/TranslateApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 36
    const-string v0, "key_supported_voice_input_langs"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateApplication$1;->this$0:Lcom/google/android/apps/translate/TranslateApplication;

    #calls: Lcom/google/android/apps/translate/TranslateApplication;->reloadSupportedVoiceInputLanguages()V
    invoke-static {v0}, Lcom/google/android/apps/translate/TranslateApplication;->access$000(Lcom/google/android/apps/translate/TranslateApplication;)V

    .line 39
    :cond_d
    return-void
.end method
