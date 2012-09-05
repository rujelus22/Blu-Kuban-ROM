.class Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$parentsubview:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;Landroid/widget/LinearLayout;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$3;->this$1:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    iput-object p2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$3;->val$parentsubview:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 246
    .local v0, action:I
    packed-switch v0, :pswitch_data_1c

    move v1, v2

    .line 256
    :goto_a
    return v1

    .line 248
    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$3;->val$parentsubview:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_a

    .line 251
    :pswitch_11
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$3;->val$parentsubview:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 252
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$3;->val$parentsubview:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_a

    .line 246
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method
