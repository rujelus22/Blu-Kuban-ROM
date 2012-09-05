.class Lcom/sec/android/widgetapp/dualclock/WCCities$2;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$2;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$2;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    #calls: Lcom/sec/android/widgetapp/dualclock/WCCities;->findLocation()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$400(Lcom/sec/android/widgetapp/dualclock/WCCities;)V

    .line 192
    return-void
.end method
