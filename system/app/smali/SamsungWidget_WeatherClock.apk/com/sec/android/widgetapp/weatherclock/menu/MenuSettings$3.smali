.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$3;
.super Ljava/lang/Object;
.source "MenuSettings.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v0

    const v1, 0x7f0c0013

    if-ne v0, v1, :cond_c

    .line 240
    packed-switch p2, :pswitch_data_1c

    .line 255
    :cond_c
    :goto_c
    return-void

    .line 243
    :pswitch_d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->access$002(I)I

    goto :goto_c

    .line 247
    :pswitch_12
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->access$002(I)I

    goto :goto_c

    .line 251
    :pswitch_17
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->access$002(I)I

    goto :goto_c

    .line 240
    :pswitch_data_1c
    .packed-switch 0x7f0c0014
        :pswitch_d
        :pswitch_12
        :pswitch_17
    .end packed-switch
.end method
