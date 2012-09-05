.class Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
.super Ljava/lang/Object;
.source "MusicSettingsMusicMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicMenuItem"
.end annotation


# instance fields
.field public mCheckBox:Landroid/widget/CheckBox;

.field public mIsChecked:Z

.field public mListType:I

.field public mMenuLayout:Landroid/widget/LinearLayout;

.field public mStringID:I

.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;)V
    .registers 4
    .parameter
    .parameter "menuLayout"
    .parameter "checkBox"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mMenuLayout:Landroid/widget/LinearLayout;

    .line 52
    iput-object p3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 53
    return-void
.end method


# virtual methods
.method public setMenuItemValue(IIZ)V
    .registers 4
    .parameter "listType"
    .parameter "stringID"
    .parameter "isChecked"

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mListType:I

    .line 57
    iput p2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mStringID:I

    .line 58
    iput-boolean p3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mIsChecked:Z

    .line 59
    return-void
.end method
