.class LaV/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:LaV/a;


# direct methods
.method constructor <init>(LaV/a;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, LaV/b;->a:LaV/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    .line 74
    iget-object v0, p0, LaV/b;->a:LaV/a;

    invoke-static {v0}, LaV/a;->a(LaV/a;)Lcom/google/googlenav/wallpaper/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/wallpaper/i;->a()V

    .line 76
    :cond_d
    return-void
.end method
