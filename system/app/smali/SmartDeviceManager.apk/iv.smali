.class abstract Liv;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liv$b;,
        Liv$a;,
        Liv$c;
    }
.end annotation


# instance fields
.field public final a:Liv;

.field public final b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Liv;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Liv;->a:Liv;

    .line 22
    iput-object p2, p0, Liv;->b:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation
.end method
