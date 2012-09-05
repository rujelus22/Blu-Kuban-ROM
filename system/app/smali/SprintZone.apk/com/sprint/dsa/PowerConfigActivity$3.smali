.class Lcom/sprint/dsa/PowerConfigActivity$3;
.super Ljava/lang/Object;
.source "PowerConfigActivity.java"

# interfaces
.implements Lcom/sprint/dsa/diagnostics/PowerModeDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/PowerConfigActivity;->onRestorePowerMode(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/sprint/dsa/PowerConfigActivity$3;->this$0:Lcom/sprint/dsa/PowerConfigActivity;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApply(Lcom/sprint/dsa/diagnostics/PowerConfig;)V
    .registers 3
    .parameter "powerConfig"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sprint/dsa/PowerConfigActivity$3;->this$0:Lcom/sprint/dsa/PowerConfigActivity;

    invoke-virtual {v0}, Lcom/sprint/dsa/PowerConfigActivity;->restorePowerMode()V

    .line 230
    return-void
.end method
