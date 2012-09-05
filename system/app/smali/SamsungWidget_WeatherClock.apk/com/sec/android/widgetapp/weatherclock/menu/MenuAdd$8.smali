.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$8;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 435
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 438
    if-eqz p1, :cond_14

    .line 439
    instance-of v1, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 440
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 442
    .local v0, searchEdit:Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_14

    .line 444
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->enableEditField()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;->access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;)V

    .line 448
    .end local v0           #searchEdit:Landroid/widget/AutoCompleteTextView;
    :cond_14
    return-void
.end method
