.class Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$4;
.super Ljava/lang/Object;
.source "MusicSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 170
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$4;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 173
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visualization clicked!!! value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_32

    const/high16 v1, 0x80

    :goto_27
    aput v1, v2, v3

    .line 177
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 179
    .local v0, corePlayer:Lcom/sec/android/app/music/ICorePlayerService;
    if-eqz v0, :cond_30

    .line 180
    :try_start_2d
    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSMode()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_35

    .line 184
    :cond_30
    :goto_30
    const/4 v1, 0x1

    return v1

    .line 175
    .end local v0           #corePlayer:Lcom/sec/android/app/music/ICorePlayerService;
    :cond_32
    const/high16 v1, 0x100

    goto :goto_27

    .line 182
    .restart local v0       #corePlayer:Lcom/sec/android/app/music/ICorePlayerService;
    :catch_35
    move-exception v1

    goto :goto_30
.end method
