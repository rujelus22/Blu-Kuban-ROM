.class Lcom/samsung/dmp/layout/DMPVideoActivity$3;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;->initializeUIForLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$3;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControlsHidden:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$4100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 844
    const/4 v0, 0x1

    .line 845
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
