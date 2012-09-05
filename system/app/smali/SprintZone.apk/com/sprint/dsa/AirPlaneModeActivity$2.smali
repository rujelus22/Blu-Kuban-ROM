.class Lcom/sprint/dsa/AirPlaneModeActivity$2;
.super Ljava/lang/Object;
.source "AirPlaneModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/AirPlaneModeActivity;->createAirPlaneDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/AirPlaneModeActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/AirPlaneModeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/AirPlaneModeActivity$2;->this$0:Lcom/sprint/dsa/AirPlaneModeActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sprint/dsa/AirPlaneModeActivity$2;->this$0:Lcom/sprint/dsa/AirPlaneModeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/AirPlaneModeActivity;->setResult(I)V

    .line 65
    iget-object v0, p0, Lcom/sprint/dsa/AirPlaneModeActivity$2;->this$0:Lcom/sprint/dsa/AirPlaneModeActivity;

    invoke-virtual {v0}, Lcom/sprint/dsa/AirPlaneModeActivity;->finish()V

    .line 67
    return-void
.end method
