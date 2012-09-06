.class public Lcom/google/googlenav/ui/e;
.super Lcom/google/googlenav/ui/ag;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/googlenav/ui/ag;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/e;->a:Z

    .line 52
    iput-boolean p1, p0, Lcom/google/googlenav/ui/e;->a:Z

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/e;)Z
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/googlenav/ui/e;->a:Z

    return v0
.end method


# virtual methods
.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/google/googlenav/ui/e;->a:Z

    .line 60
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/googlenav/ui/e;->a:Z

    return v0
.end method
