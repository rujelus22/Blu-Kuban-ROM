.class final Laiu;
.super LakI;
.source "ImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LakI",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient b:Laiv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laiv",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;Laiv;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Laiv",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, LakI;-><init>([Ljava/lang/Object;II)V

    .line 38
    iput-object p2, p0, Laiu;->b:Laiv;

    .line 39
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Laiu;->b:Laiv;

    invoke-virtual {v0, p1}, Laiv;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
