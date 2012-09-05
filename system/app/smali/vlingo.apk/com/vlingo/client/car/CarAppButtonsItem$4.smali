.class Lcom/vlingo/client/car/CarAppButtonsItem$4;
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
    .line 82
    iput-object p1, p0, Lcom/vlingo/client/car/CarAppButtonsItem$4;->this$0:Lcom/vlingo/client/car/CarAppButtonsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 84
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 85
    iget-object v0, p0, Lcom/vlingo/client/car/CarAppButtonsItem$4;->this$0:Lcom/vlingo/client/car/CarAppButtonsItem;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarAppButtonsItem;->getCarActivityDelegate()Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/car/safereader/SafeReaderController;->startSafeReaderHomeTask(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 86
    return-void
.end method
