.class Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$2;
.super Ljava/lang/Object;
.source "MenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;

.field final synthetic val$refreshVal:I


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;Landroid/widget/CheckBox;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$2;->val$chkbox:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$2;->val$refreshVal:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 258
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$2;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 260
    sput-boolean v2, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->chkboxFlag:Z

    .line 263
    :cond_b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$2;->val$refreshVal:I

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->setAutorefreshSetting(Landroid/content/Context;I)Z

    .line 264
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    .line 265
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->init()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;->access$000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSettings;)V

    .line 266
    return-void
.end method
