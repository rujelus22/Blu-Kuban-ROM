.class LK/aI;
.super Ljava/lang/Object;

# interfaces
.implements LK/aK;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/aI;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(LK/am;)LK/aK;
    .registers 2

    return-object p0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public clear()V
    .registers 1

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, LK/aI;->a:Ljava/lang/Object;

    return-object v0
.end method
