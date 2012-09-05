.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$7;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->setKeyboardVisible(Z)V
    invoke-static {v0, p2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;Z)V

    .line 432
    return-void
.end method
