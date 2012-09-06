.class public Li/af;
.super Li/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Vibrator;

.field private final b:[J


# direct methods
.method public constructor <init>(Landroid/os/Vibrator;[J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Li/a;-><init>()V

    .line 26
    iput-object p1, p0, Li/af;->a:Landroid/os/Vibrator;

    .line 27
    iput-object p2, p0, Li/af;->b:[J

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method public a(Li/b;)V
    .registers 5
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Li/af;->a:Landroid/os/Vibrator;

    iget-object v1, p0, Li/af;->b:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 33
    if-eqz p1, :cond_d

    .line 34
    invoke-interface {p1, p0}, Li/b;->a(Li/a;)V

    .line 36
    :cond_d
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
