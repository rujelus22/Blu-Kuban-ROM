.class public Lcom/google/googlenav/ui/wizard/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/v;

.field private final b:Lcom/google/googlenav/h;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Lcom/google/googlenav/ui/wizard/R;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/R;ZZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/Q;->a:Lcom/google/googlenav/ui/v;

    .line 84
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/Q;->b:Lcom/google/googlenav/h;

    .line 85
    iput-boolean p4, p0, Lcom/google/googlenav/ui/wizard/Q;->c:Z

    .line 86
    iput-boolean p5, p0, Lcom/google/googlenav/ui/wizard/Q;->d:Z

    .line 87
    iput-boolean p6, p0, Lcom/google/googlenav/ui/wizard/Q;->e:Z

    .line 88
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/Q;->f:Lcom/google/googlenav/ui/wizard/R;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/Q;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Q;->a:Lcom/google/googlenav/ui/v;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/Q;)Z
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/Q;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/Q;)Z
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/Q;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/Q;)Z
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/Q;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/Q;)Lcom/google/googlenav/h;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Q;->b:Lcom/google/googlenav/h;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/Q;)Lcom/google/googlenav/ui/wizard/R;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/Q;->f:Lcom/google/googlenav/ui/wizard/R;

    return-object v0
.end method
