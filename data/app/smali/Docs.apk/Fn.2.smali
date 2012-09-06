.class LFn;
.super Ljava/lang/Object;
.source "JSVMTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LFl;


# direct methods
.method constructor <init>(LFl;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, LFn;->a:LFl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, LFn;->a:LFl;

    iget-object v0, v0, LFl;->a:LFk;

    invoke-static {v0}, LFk;->a(LFk;)V

    .line 153
    return-void
.end method
