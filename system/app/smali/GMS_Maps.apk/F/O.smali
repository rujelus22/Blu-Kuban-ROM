.class LF/O;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LF/N;


# direct methods
.method constructor <init>(LF/N;)V
    .registers 2

    iput-object p1, p0, LF/O;->a:LF/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, LF/O;->a:LF/N;

    const/4 v1, 0x1

    iput v1, v0, LF/N;->a:I

    iget-object v0, p0, LF/O;->a:LF/N;

    const-string v1, "network"

    const-string v2, "network"

    iget-object v3, p0, LF/O;->a:LF/N;

    iget v3, v3, LF/N;->a:I

    invoke-virtual {v0, v1, v2, v3}, LF/N;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
