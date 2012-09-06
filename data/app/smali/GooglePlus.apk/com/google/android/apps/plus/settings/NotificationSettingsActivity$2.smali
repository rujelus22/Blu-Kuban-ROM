.class Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$2;
.super Ljava/lang/Object;
.source "NotificationSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->setupPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    .line 178
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v0, :cond_c

    move v0, v1

    :goto_8
    #calls: Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->updatedEnabledStates(Z)V
    invoke-static {v2, v0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->access$400(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;Z)V

    .line 179
    return v1

    .line 178
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method
