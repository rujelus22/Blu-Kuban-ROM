.class public abstract Lmm;
.super Lfb;
.source "a"

# interfaces
.implements Lhi;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lfb;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lez;Lhs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation
.end method

.method public final b(Lez;Lhs;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Lmm;->a(Lez;Lhs;)V

    .line 121
    return-void
.end method
