.class Lcom/cooliris/media/HudLayer$29;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;->buildMoreOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/HudLayer;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 895
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$29;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$29;->this$0:Lcom/cooliris/media/HudLayer;

    #calls: Lcom/cooliris/media/HudLayer;->setRenameFile()V
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$1600(Lcom/cooliris/media/HudLayer;)V

    .line 898
    return-void
.end method
