.class Lo/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/M;


# direct methods
.method constructor <init>(Lo/M;)V
    .registers 2

    iput-object p1, p0, Lo/N;->a:Lo/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lo/N;->a:Lo/M;

    iget-object v0, v0, Lo/M;->b:Lo/L;

    iget-object v1, p0, Lo/N;->a:Lo/M;

    iget-object v1, v1, Lo/M;->a:Lo/b;

    invoke-virtual {v0, v1}, Lo/L;->b(Lo/b;)V

    return-void
.end method
