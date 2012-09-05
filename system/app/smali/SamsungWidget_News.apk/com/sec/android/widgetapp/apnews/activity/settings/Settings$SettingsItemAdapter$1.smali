.class Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;
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

.field final synthetic val$parentview:Landroid/widget/LinearLayout;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;Landroid/widget/LinearLayout;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->this$1:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    iput-object p2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->val$parentview:Landroid/widget/LinearLayout;

    iput p3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;->val$parentview:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1$1;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method
