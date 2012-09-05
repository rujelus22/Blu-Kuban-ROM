.class Lcom/sprint/dsa/PowerConfigActivity$1;
.super Ljava/lang/Object;
.source "PowerConfigActivity.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/PowerConfigActivity;->onLowPowerMode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PowerConfigActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PowerConfigActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PowerConfigActivity$1;->this$0:Lcom/sprint/dsa/PowerConfigActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApply(Lcom/sprint/dsa/diagnostics/PowerConfig;)V
    .registers 3
    .parameter "powerConfig"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity$1;->this$0:Lcom/sprint/dsa/PowerConfigActivity;

    invoke-virtual {v0}, Lcom/sprint/dsa/PowerConfigActivity;->applyLowPowerMode()V

    .line 171
    return-void
.end method
