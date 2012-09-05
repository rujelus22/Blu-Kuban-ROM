.class Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$8;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->regEventSearchButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

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

    .line 588
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_11

    .line 590
    const/16 v1, 0x42

    if-ne p2, v1, :cond_11

    .line 592
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$8;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->fireSearch()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V

    .line 596
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
