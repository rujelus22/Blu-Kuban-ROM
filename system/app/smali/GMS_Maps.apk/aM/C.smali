.class LaM/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/b;


# direct methods
.method constructor <init>(LaM/b;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, LaM/c;->a:LaM/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, LaM/c;->a:LaM/b;

    iget-object v0, v0, LaM/b;->f:LaM/g;

    invoke-interface {v0}, LaM/g;->a()V

    .line 128
    return-void
.end method
