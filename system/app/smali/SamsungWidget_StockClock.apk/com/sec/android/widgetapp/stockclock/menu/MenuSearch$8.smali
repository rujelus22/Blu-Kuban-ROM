.class Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$8;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->regEventSearchButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V
    .registers 2
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 559
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_11

    .line 561
    const/16 v1, 0x42

    if-ne p2, v1, :cond_11

    .line 563
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->fireSearch()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    .line 567
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
