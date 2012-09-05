.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$8;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 429
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->searchEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_11

    .line 434
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->enableEditField()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)V

    .line 436
    :cond_11
    const/4 v0, 0x0

    return v0
.end method
