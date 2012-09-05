.class LaY/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaY/b;


# direct methods
.method constructor <init>(LaY/b;)V
    .registers 2

    iput-object p1, p0, LaY/c;->a:LaY/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, LaY/c;->a:LaY/b;

    iget-object v0, v0, LaY/b;->f:LaY/g;

    invoke-interface {v0}, LaY/g;->a()V

    return-void
.end method
