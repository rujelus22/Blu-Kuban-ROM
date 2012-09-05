.class public Lam/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Lam/e;


# direct methods
.method public constructor <init>(ILam/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lam/a;->a:I

    iput-object p2, p0, Lam/a;->b:Lam/e;

    return-void
.end method
