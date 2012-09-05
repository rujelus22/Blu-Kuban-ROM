.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$3;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 261
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$3;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->setKeyboardVisible(Z)V
    invoke-static {v0, p2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;Z)V

    .line 265
    return-void
.end method
