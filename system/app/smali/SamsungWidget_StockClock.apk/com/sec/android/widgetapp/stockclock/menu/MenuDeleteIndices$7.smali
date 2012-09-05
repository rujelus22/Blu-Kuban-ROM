.class Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$7;
.super Ljava/lang/Object;
.source "MenuDeleteIndices.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->setButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;)V
    .registers 2
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$7;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices$7;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuDeleteIndices;->finish()V

    .line 611
    return-void
.end method
