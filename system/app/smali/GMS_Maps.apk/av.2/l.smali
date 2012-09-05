.class public abstract Lav/l;
.super Ljava/lang/Object;

# interfaces
.implements Lav/c;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lav/l;->a:Z

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lav/l;->a:Z

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lav/l;->a:Z

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lav/l;->a:Z

    return v0
.end method
