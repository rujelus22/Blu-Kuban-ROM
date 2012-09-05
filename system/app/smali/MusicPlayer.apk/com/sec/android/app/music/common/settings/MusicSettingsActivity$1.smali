.class Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$1;
.super Ljava/lang/Object;
.source "MusicSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 133
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$000(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const-string v1, "setting_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    return v3
.end method
