.class Lp/v;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lp/u;


# direct methods
.method constructor <init>(Lp/u;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lp/v;->a:Lp/u;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lp/v;->a:Lp/u;

    invoke-static {v0, p1}, Lp/u;->a(Lp/u;Landroid/os/Message;)V

    .line 121
    return-void
.end method
