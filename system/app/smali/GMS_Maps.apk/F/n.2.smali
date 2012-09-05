.class public LF/n;
.super LF/b;


# direct methods
.method public constructor <init>(LF/T;)V
    .registers 3

    const-string v0, "integrated_location_provider"

    invoke-direct {p0, v0, p1}, LF/b;-><init>(Ljava/lang/String;LF/T;)V

    return-void
.end method
