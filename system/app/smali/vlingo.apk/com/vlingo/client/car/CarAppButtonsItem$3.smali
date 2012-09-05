.class Lcom/vlingo/client/car/CarAppButtonsItem$3;
.super Ljava/lang/Object;
.source "CarAppButtonsItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarAppButtonsItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarAppButtonsItem;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarAppButtonsItem;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vlingo/client/car/CarAppButtonsItem$3;->this$0:Lcom/vlingo/client/car/CarAppButtonsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 72
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 74
    new-instance v0, Lcom/vlingo/client/car/nav/NavController;

    iget-object v1, p0, Lcom/vlingo/client/car/CarAppButtonsItem$3;->this$0:Lcom/vlingo/client/car/CarAppButtonsItem;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarAppButtonsItem;->getCarActivityDelegate()Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vlingo/client/car/nav/NavController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 75
    .local v0, controller:Lcom/vlingo/client/car/nav/NavController;
    invoke-virtual {v0}, Lcom/vlingo/client/car/nav/NavController;->showNavHome()V

    .line 76
    return-void
.end method
