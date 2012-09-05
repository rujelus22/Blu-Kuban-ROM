.class LaM/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/g;


# direct methods
.method constructor <init>(LaM/g;)V
    .registers 2

    iput-object p1, p0, LaM/h;->a:LaM/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, LaM/h;->a:LaM/g;

    invoke-static {v0}, LaM/g;->a(LaM/g;)V

    return-void
.end method
