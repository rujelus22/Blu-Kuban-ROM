.class Lcom/sprint/w/installer/SprintIdHome$11$1;
.super Ljava/lang/Object;
.source "SprintIdHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/SprintIdHome$11;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/SprintIdHome$11;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/SprintIdHome$11;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdHome$11$1;->this$1:Lcom/sprint/w/installer/SprintIdHome$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome$11$1;->this$1:Lcom/sprint/w/installer/SprintIdHome$11;

    iget-object v0, v0, Lcom/sprint/w/installer/SprintIdHome$11;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/SprintIdHome;->showDialog(I)V

    .line 340
    return-void
.end method
