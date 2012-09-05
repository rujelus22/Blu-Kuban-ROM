.class public abstract LU/b;
.super LU/a;

# interfaces
.implements LU/i;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const-string v0, "HttpWorks"

    invoke-direct {p0, v0}, LU/a;-><init>(Ljava/lang/String;)V

    return-void
.end method
