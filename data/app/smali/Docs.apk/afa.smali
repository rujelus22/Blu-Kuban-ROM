.class public final Lafa;
.super LadL;
.source "Discussion.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation runtime Laes;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 440
    invoke-direct {p0}, LadL;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lafe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lafa;->a:Ljava/util/List;

    return-object v0
.end method
