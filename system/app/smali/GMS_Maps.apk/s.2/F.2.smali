.class Ls/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ls/E;


# direct methods
.method constructor <init>(Ls/E;)V
    .registers 2

    iput-object p1, p0, Ls/F;->a:Ls/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Ls/F;->a:Ls/E;

    invoke-virtual {v0}, Ls/E;->c()V

    return-void
.end method
