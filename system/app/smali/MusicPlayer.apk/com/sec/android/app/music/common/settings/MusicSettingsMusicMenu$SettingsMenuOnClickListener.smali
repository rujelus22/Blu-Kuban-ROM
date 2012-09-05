.class Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;
.super Ljava/lang/Object;
.source "MusicSettingsMusicMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsMenuOnClickListener"
.end annotation


# instance fields
.field private mMenuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;)V
    .registers 4
    .parameter
    .parameter "menuItem"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mMenuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 343
    iput-object p2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mMenuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 344
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 349
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mMenuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    iget-boolean v0, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mIsChecked:Z

    .line 351
    .local v0, hasChecked:Z
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mMenuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    iget-object v4, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1c

    move v1, v2

    :goto_d
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->mMenuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    if-nez v0, :cond_1e

    :goto_14
    iput-boolean v2, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mIsChecked:Z

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;

    #calls: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->setDisplayByValue()V
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->access$300(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;)V

    .line 355
    return-void

    :cond_1c
    move v1, v3

    .line 351
    goto :goto_d

    :cond_1e
    move v2, v3

    .line 352
    goto :goto_14
.end method
