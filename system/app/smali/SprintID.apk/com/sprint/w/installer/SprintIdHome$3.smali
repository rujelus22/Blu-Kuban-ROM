.class Lcom/sprint/w/installer/SprintIdHome$3;
.super Ljava/lang/Object;
.source "SprintIdHome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/SprintIdHome;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/SprintIdHome;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/SprintIdHome;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdHome$3;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$3;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #getter for: Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/w/installer/SprintIdHome;->access$300(Lcom/sprint/w/installer/SprintIdHome;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$3;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sprint/w/installer/SprintIdHome;->startActivityForResult(Landroid/content/Intent;I)V

    .line 103
    return-void
.end method
