.class public LX/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX/d;


# instance fields
.field private final a:LX/d;


# direct methods
.method public constructor <init>(LX/d;)V
    .registers 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, LX/a;->a:LX/d;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, LX/a;->a:LX/d;

    invoke-interface {v0, p1, p2}, LX/d;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 26
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 27
    return-object v0
.end method
