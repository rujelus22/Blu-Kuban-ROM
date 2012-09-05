.class Lcom/sec/android/widgetapp/dualclock/WCCities$3;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities;->initControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

.field final synthetic val$txt_search:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/WCCities;Landroid/widget/AutoCompleteTextView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$3;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iput-object p2, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$3;->val$txt_search:Landroid/widget/AutoCompleteTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 279
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$3;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/dualclock/WCCities;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 281
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$3;->val$txt_search:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 283
    return-void
.end method
