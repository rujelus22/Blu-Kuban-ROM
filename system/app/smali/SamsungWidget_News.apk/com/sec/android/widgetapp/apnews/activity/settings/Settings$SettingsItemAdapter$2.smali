.class Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

.field final synthetic val$mCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$myPosition:I

.field final synthetic val$parentsubview:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;->this$1:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    iput-object p2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;->val$parentsubview:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;->val$mCheckBox:Landroid/widget/CheckBox;

    iput p4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;->val$myPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;->val$parentsubview:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2$1;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method
