.class Ljackpal/androidterm/TermViewFlipper$1;
.super Ljava/lang/Object;
.source "TermViewFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/TermViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/TermViewFlipper;


# direct methods
.method constructor <init>(Ljackpal/androidterm/TermViewFlipper;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Ljackpal/androidterm/TermViewFlipper$1;->this$0:Ljackpal/androidterm/TermViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 61
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper$1;->this$0:Ljackpal/androidterm/TermViewFlipper;

    #calls: Ljackpal/androidterm/TermViewFlipper;->adjustChildSize()V
    invoke-static {v0}, Ljackpal/androidterm/TermViewFlipper;->access$000(Ljackpal/androidterm/TermViewFlipper;)V

    .line 62
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper$1;->this$0:Ljackpal/androidterm/TermViewFlipper;

    #getter for: Ljackpal/androidterm/TermViewFlipper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Ljackpal/androidterm/TermViewFlipper;->access$100(Ljackpal/androidterm/TermViewFlipper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method
