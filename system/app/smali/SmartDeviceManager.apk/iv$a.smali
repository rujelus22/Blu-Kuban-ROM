.class final Liv$a;
.super Liv;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field final c:Lix;

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Liv;Ljava/lang/Object;Lix;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Liv;-><init>(Liv;Ljava/lang/Object;)V

    .line 79
    iput-object p3, p0, Liv$a;->c:Lix;

    .line 80
    iput-object p4, p0, Liv$a;->d:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Liv$a;->c:Lix;

    iget-object v1, p0, Liv$a;->d:Ljava/lang/String;

    iget-object v2, p0, Liv$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lix;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    return-void
.end method
