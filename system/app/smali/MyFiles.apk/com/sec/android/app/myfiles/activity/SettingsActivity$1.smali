.class Lcom/sec/android/app/myfiles/activity/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/SettingsActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/activity/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity$1;->this$0:Lcom/sec/android/app/myfiles/activity/SettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/SettingsActivity$1;->this$0:Lcom/sec/android/app/myfiles/activity/SettingsActivity;

    #setter for: Lcom/sec/android/app/myfiles/activity/SettingsActivity;->mbNeedRefresh:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/activity/SettingsActivity;->access$002(Lcom/sec/android/app/myfiles/activity/SettingsActivity;Z)Z

    .line 123
    return v1
.end method
