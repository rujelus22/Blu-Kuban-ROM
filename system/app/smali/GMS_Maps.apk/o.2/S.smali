.class Lo/s;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lo/r;


# direct methods
.method constructor <init>(Lo/r;)V
    .registers 2
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lo/s;->a:Lo/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 407
    iget-object v0, p0, Lo/s;->a:Lo/r;

    invoke-static {v0, p1}, Lo/r;->a(Lo/r;Landroid/os/Message;)V

    .line 408
    return-void
.end method
