.class Lcom/cooliris/media/HudLayer$36;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;->buildDeleteOptions(Landroid/content/Context;)V
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
    .line 1164
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$36;->this$0:Lcom/cooliris/media/HudLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$36;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mFullscreenMenu:Lcom/cooliris/media/MenuBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cooliris/media/MenuBar;->mTouchActive:Z

    .line 1167
    return-void
.end method
