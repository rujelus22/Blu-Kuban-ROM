.class LE/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LE/a;


# direct methods
.method constructor <init>(LE/a;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, LE/b;->a:LE/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, LE/b;->a:LE/a;

    invoke-static {v0}, LE/a;->a(LE/a;)V

    .line 63
    return-void
.end method
