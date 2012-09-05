.class Lcom/sprint/w/installer/SwitchIDThread$1;
.super Ljava/lang/Object;
.source "SwitchIDThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/SwitchIDThread;->startHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/SwitchIDThread;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/SwitchIDThread;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sprint/w/installer/SwitchIDThread$1;->this$0:Lcom/sprint/w/installer/SwitchIDThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread$1;->this$0:Lcom/sprint/w/installer/SwitchIDThread;

    iget-object v0, v0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sprint/w/installer/util/Util;->startHomeScreen(Landroid/content/Context;)V

    .line 225
    iget-object v0, p0, Lcom/sprint/w/installer/SwitchIDThread$1;->this$0:Lcom/sprint/w/installer/SwitchIDThread;

    iget-object v0, v0, Lcom/sprint/w/installer/SwitchIDThread;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 226
    return-void
.end method
