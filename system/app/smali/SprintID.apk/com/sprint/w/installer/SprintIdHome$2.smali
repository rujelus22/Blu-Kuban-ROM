.class Lcom/sprint/w/installer/SprintIdHome$2;
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
    .line 85
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdHome$2;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x5

    .line 88
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$2;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #getter for: Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/w/installer/SprintIdHome;->access$300(Lcom/sprint/w/installer/SprintIdHome;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/w/installer/util/Util;->getUniquePackCount(Landroid/content/Context;)I

    move-result v0

    .line 89
    .local v0, size:I
    const/4 v1, 0x6

    if-lt v0, v1, :cond_15

    .line 90
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$2;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/SprintIdHome;->showDialog(I)V

    .line 96
    :goto_14
    return-void

    .line 91
    :cond_15
    if-ne v0, v2, :cond_1d

    .line 92
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$2;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/SprintIdHome;->showDialog(I)V

    goto :goto_14

    .line 94
    :cond_1d
    iget-object v1, p0, Lcom/sprint/w/installer/SprintIdHome$2;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    iget-object v2, p0, Lcom/sprint/w/installer/SprintIdHome$2;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #getter for: Lcom/sprint/w/installer/SprintIdHome;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/sprint/w/installer/SprintIdHome;->access$300(Lcom/sprint/w/installer/SprintIdHome;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/SprintIdHome;->goGetNew(Landroid/content/Context;)V

    goto :goto_14
.end method
