.class Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$5;
.super Ljava/lang/Object;
.source "MenuDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->setButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;)V
    .registers 2
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete$5;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDelete;->finish()V

    .line 510
    return-void
.end method
