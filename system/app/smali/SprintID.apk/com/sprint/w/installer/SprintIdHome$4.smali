.class Lcom/sprint/w/installer/SprintIdHome$4;
.super Ljava/lang/Object;
.source "SprintIdHome.java"

# interfaces
.implements Lcom/sprint/w/installer/DownloadService$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/SprintIdHome;
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
    .line 132
    iput-object p1, p0, Lcom/sprint/w/installer/SprintIdHome$4;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome$4;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    invoke-virtual {v0}, Lcom/sprint/w/installer/SprintIdHome;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 136
    iget-object v0, p0, Lcom/sprint/w/installer/SprintIdHome$4;->this$0:Lcom/sprint/w/installer/SprintIdHome;

    #getter for: Lcom/sprint/w/installer/SprintIdHome;->mPackSwitcherLoader:Lcom/sprint/w/installer/PackSwitcherLoader;
    invoke-static {v0}, Lcom/sprint/w/installer/SprintIdHome;->access$200(Lcom/sprint/w/installer/SprintIdHome;)Lcom/sprint/w/installer/PackSwitcherLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackSwitcherLoader;->refresh()V

    .line 138
    :cond_11
    return-void
.end method
