.class Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread$1;
.super Ljava/lang/Object;
.source "PackSwitcherLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->startHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;)V
    .registers 2
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread$1;->this$1:Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread$1;->this$1:Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/w/installer/util/Util;->startHomeScreen(Landroid/content/Context;)V

    .line 521
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread$1;->this$1:Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;

    iget-object v0, v0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;
    invoke-static {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/w/installer/SprintIdHome;->finish()V

    .line 522
    return-void
.end method
