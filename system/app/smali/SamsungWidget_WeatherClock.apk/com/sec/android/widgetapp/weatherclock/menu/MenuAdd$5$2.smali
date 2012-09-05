.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$2;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$2;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$2;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd$5$2;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 369
    return-void
.end method
