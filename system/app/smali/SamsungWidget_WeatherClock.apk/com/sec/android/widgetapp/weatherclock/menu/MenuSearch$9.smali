.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$9;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V
    .registers 2
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 444
    if-eqz p3, :cond_19

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_12

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_19

    .line 448
    :cond_12
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->getSearchData()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$900(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 449
    const/4 v0, 0x1

    .line 452
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
