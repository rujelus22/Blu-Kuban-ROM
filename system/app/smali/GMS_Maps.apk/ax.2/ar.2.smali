.class public Lax/ar;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Lam/b;


# direct methods
.method public constructor <init>(ZLam/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lax/ar;->a:Z

    iput-object p2, p0, Lax/ar;->b:Lam/b;

    return-void
.end method
