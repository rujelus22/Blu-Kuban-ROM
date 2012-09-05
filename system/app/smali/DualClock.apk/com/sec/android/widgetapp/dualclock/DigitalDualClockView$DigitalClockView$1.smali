.class Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView$1;
.super Ljava/lang/Object;
.source "DigitalDualClockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;)V
    .registers 2
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView$1;->this$1:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 876
    const/4 v0, 0x0

    .line 878
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView$1;->this$1:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    #getter for: Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->mRegion:I
    invoke-static {v1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->access$100(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;)I

    move-result v1

    if-ne v1, v3, :cond_3b

    .line 879
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->INTENT_URI2:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 881
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "secondzone"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView$1;->this$1:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    #getter for: Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->iv_add:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->access$200(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 888
    :goto_25
    const-string v1, "where"

    const-string v2, "menu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    const-string v1, "city"

    const-string v2, "London"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView$1;->this$1:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->startActivity(Landroid/content/Intent;)V

    .line 892
    return-void

    .line 884
    :cond_3b
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->INTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 886
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "homezone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_25
.end method
