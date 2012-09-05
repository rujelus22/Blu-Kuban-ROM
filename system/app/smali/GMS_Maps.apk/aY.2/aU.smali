.class LaY/aU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaY/aT;


# direct methods
.method constructor <init>(LaY/aT;)V
    .registers 2

    iput-object p1, p0, LaY/aU;->a:LaY/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, LaY/aU;->a:LaY/aT;

    invoke-virtual {v0}, LaY/aT;->J()V

    return-void
.end method
