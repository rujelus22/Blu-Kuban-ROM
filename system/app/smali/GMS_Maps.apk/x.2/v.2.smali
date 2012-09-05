.class public Lx/v;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lam/b;

.field public final b:Lx/a;


# direct methods
.method constructor <init>(Lam/b;Lx/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    iput-object v0, p0, Lx/v;->a:Lam/b;

    iput-object p2, p0, Lx/v;->b:Lx/a;

    return-void
.end method
