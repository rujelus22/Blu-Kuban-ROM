.class Lcom/lifevibes/trimapp/Trim$2;
.super Ljava/lang/Object;
.source "Trim.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/Trim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$2;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3
    .parameter "focusChange"

    .prologue
    .line 314
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 315
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$2;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/Trim;->doPauseAction()Z

    .line 317
    :cond_8
    return-void
.end method
