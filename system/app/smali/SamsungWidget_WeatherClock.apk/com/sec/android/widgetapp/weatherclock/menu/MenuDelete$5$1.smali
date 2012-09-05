.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5$1;
.super Ljava/lang/Object;
.source "MenuDelete.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;)V
    .registers 2
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuDelete;

    const v1, 0x7f090019

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 459
    return-void
.end method
