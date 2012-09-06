.class Lcom/google/android/apps/translate/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/SettingsActivity;->setupPreferenceListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/android/apps/translate/SettingsActivity$5;->this$0:Lcom/google/android/apps/translate/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/apps/translate/SettingsActivity$5;->this$0:Lcom/google/android/apps/translate/SettingsActivity;

    #calls: Lcom/google/android/apps/translate/SettingsActivity;->openAboutDialog()V
    invoke-static {v0}, Lcom/google/android/apps/translate/SettingsActivity;->access$300(Lcom/google/android/apps/translate/SettingsActivity;)V

    .line 287
    const/4 v0, 0x1

    return v0
.end method
