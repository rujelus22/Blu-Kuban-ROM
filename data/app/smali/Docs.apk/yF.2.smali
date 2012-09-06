.class LyF;
.super Ljava/lang/Object;
.source "TrafficTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LyE;


# direct methods
.method constructor <init>(LyE;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, LyF;->a:LyE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, LyF;->a:LyE;

    invoke-static {v0}, LyE;->a(LyE;)V

    .line 89
    return-void
.end method
