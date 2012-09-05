.class public abstract LaB/h;
.super Ljava/lang/Object;

# interfaces
.implements LaB/c;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaB/h;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/D;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, LaB/h;->a:Z

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/D;Z)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, LaB/h;->a:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, LaB/h;->a:Z

    return v0
.end method
