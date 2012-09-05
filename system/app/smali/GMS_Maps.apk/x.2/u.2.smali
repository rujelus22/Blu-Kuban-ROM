.class Lx/u;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lam/b;

.field final c:I

.field final d:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lam/b;IJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/u;->a:Ljava/lang/String;

    iput-object p2, p0, Lx/u;->b:Lam/b;

    iput p3, p0, Lx/u;->c:I

    iput-wide p4, p0, Lx/u;->d:J

    return-void
.end method
