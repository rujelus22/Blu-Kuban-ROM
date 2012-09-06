.class LFm;
.super Ljava/lang/Object;
.source "JSVMTimer.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic a:LFl;


# direct methods
.method constructor <init>(LFl;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, LFm;->a:LFl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, LFm;->a:LFl;

    iget-object v0, v0, LFl;->a:LFk;

    invoke-static {v0}, LFk;->a(LFk;)V

    .line 145
    const/4 v0, 0x0

    return v0
.end method
