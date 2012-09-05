.class Lcom/vlingo/client/car/SamsungCarAppButtonsItem$4;
.super Ljava/lang/Object;
.source "SamsungCarAppButtonsItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$4;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$4;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    #calls: Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->stopMusic()V
    invoke-static {v0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->access$000(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V

    .line 97
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 99
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$4;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    iget-object v0, v0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->toggleDrivingMode(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 100
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$4;->this$0:Lcom/vlingo/client/car/SamsungCarAppButtonsItem;

    #calls: Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->updateSafeReaderToggleButton()V
    invoke-static {v0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->access$100(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V

    .line 101
    return-void
.end method
