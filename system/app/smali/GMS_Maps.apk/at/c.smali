.class public abstract Lat/c;
.super Ljava/lang/Object;

# interfaces
.implements Lat/d;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/c;->a:Z

    return-void
.end method


# virtual methods
.method public X()V
    .registers 2

    iget-boolean v0, p0, Lat/c;->a:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/c;->a:Z

    invoke-virtual {p0}, Lat/c;->b()V

    :cond_a
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lat/c;->a:Z

    return v0
.end method

.method public abstract b()V
.end method
