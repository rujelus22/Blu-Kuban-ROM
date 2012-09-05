.class Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1$2;
.super Ljava/lang/Object;
.source "DevModeHandlerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1$2;->this$1:Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1$2;->this$1:Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;

    iget-object v0, v0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->showDialog(I)V

    .line 73
    return-void
.end method
