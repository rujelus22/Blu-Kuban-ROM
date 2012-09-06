.class Lorg/simpleframework/xml/core/Revision;
.super Ljava/lang/Object;


# instance fields
.field private equal:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    if-eqz p2, :cond_b

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    :cond_8
    :goto_8
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    return v0

    :cond_b
    if-eqz p1, :cond_8

    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    goto :goto_8
.end method

.method public getDefault()D
    .registers 3

    const-wide/high16 v0, 0x3ff0

    return-wide v0
.end method

.method public isEqual()Z
    .registers 2

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    return v0
.end method
