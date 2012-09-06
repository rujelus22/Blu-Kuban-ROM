.class public LC/k;
.super LC/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(LC/T;)V
    .registers 3
    .parameter

    .prologue
    .line 27
    const-string v0, "integrated_location_provider"

    invoke-direct {p0, v0, p1}, LC/b;-><init>(Ljava/lang/String;LC/T;)V

    .line 28
    return-void
.end method
