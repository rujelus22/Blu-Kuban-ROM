.class Lcom/google/android/apps/googlevoice/SettingsActivity$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/SettingsActivity;->addPreferenceListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$7;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$7;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    #calls: Lcom/google/android/apps/googlevoice/SettingsActivity;->toggleDoNotDisturb()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->access$600(Lcom/google/android/apps/googlevoice/SettingsActivity;)V

    .line 396
    const/4 v0, 0x0

    return v0
.end method
