.class final Lcom/google/android/maps/driveabout/vector/bd;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/google/android/maps/driveabout/vector/bc;
    .registers 3

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bc;-><init>(Lcom/google/android/maps/driveabout/vector/bd;)V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bd;->a()Lcom/google/android/maps/driveabout/vector/bc;

    move-result-object v0

    return-object v0
.end method
