.class Lcom/cooliris/media/GridInputProcessor$1;
.super Ljava/lang/Thread;
.source "GridInputProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridInputProcessor;->onKeyDown(ILandroid/view/KeyEvent;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GridInputProcessor;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GridInputProcessor;)V
    .registers 2
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/cooliris/media/GridInputProcessor$1;->this$0:Lcom/cooliris/media/GridInputProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 437
    const-wide/16 v0, 0x12c

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 441
    :goto_5
    return-void

    .line 439
    :catch_6
    move-exception v0

    goto :goto_5
.end method
