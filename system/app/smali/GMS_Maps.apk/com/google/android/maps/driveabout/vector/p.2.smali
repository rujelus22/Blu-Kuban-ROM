.class final Lcom/google/android/maps/driveabout/vector/P;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[Ln/Q;
    .registers 4

    .prologue
    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Ln/Q;

    const/4 v1, 0x0

    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/P;->a()[Ln/Q;

    move-result-object v0

    return-object v0
.end method
