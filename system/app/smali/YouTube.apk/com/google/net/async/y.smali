.class final Lcom/google/net/async/y;
.super Lcom/google/net/async/ac;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/net/async/ac;-><init>(C)V

    .line 1
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Throwable;)V
    .registers 4
    .parameter

    .prologue
    .line 71
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Critical EventDispatcher causing System.exit(1)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 73
    return-void
.end method
