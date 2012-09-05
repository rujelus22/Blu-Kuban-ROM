.class final Liv$c;
.super Liv;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "c"
.end annotation


# instance fields
.field final c:Liy;


# direct methods
.method public constructor <init>(Liv;Ljava/lang/Object;Liy;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Liv;-><init>(Liv;Ljava/lang/Object;)V

    .line 51
    iput-object p3, p0, Liv$c;->c:Liy;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Liv$c;->c:Liy;

    iget-object v1, p0, Liv$c;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Liy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method
