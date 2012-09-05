.class public Lo/Z;
.super Lo/a;


# instance fields
.field private final a:Landroid/os/Vibrator;

.field private final b:[J


# direct methods
.method public constructor <init>(Landroid/os/Vibrator;[J)V
    .registers 3

    invoke-direct {p0}, Lo/a;-><init>()V

    iput-object p1, p0, Lo/Z;->a:Landroid/os/Vibrator;

    iput-object p2, p0, Lo/Z;->b:[J

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lo/b;)V
    .registers 5

    iget-object v0, p0, Lo/Z;->a:Landroid/os/Vibrator;

    iget-object v1, p0, Lo/Z;->b:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    if-eqz p1, :cond_d

    invoke-interface {p1, p0}, Lo/b;->a(Lo/a;)V

    :cond_d
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
