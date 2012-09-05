.class Lcom/sprint/w/installer/PackInstaller$3;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$3;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$3;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$3;->this$0:Lcom/sprint/w/installer/PackInstaller;

    #getter for: Lcom/sprint/w/installer/PackInstaller;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;
    invoke-static {v1}, Lcom/sprint/w/installer/PackInstaller;->access$200(Lcom/sprint/w/installer/PackInstaller;)Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->getService()Lcom/sprint/id/ISprintIDService;

    move-result-object v1

    #setter for: Lcom/sprint/w/installer/PackInstaller;->mIDService:Lcom/sprint/id/ISprintIDService;
    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackInstaller;->access$102(Lcom/sprint/w/installer/PackInstaller;Lcom/sprint/id/ISprintIDService;)Lcom/sprint/id/ISprintIDService;

    .line 279
    return-void
.end method
