.class final Lcom/google/android/maps/driveabout/vector/cz;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/google/android/maps/driveabout/vector/cr;
    .registers 2

    .prologue
    .line 118
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cr;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cz;->a()Lcom/google/android/maps/driveabout/vector/cr;

    move-result-object v0

    return-object v0
.end method
