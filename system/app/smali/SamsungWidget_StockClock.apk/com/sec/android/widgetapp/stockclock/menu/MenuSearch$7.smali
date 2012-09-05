.class Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$7;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 548
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$7;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$7;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #calls: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->fireSearch()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$600(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V

    .line 552
    return-void
.end method
