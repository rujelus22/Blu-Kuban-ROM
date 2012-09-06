.class public final Lafc;
.super LadL;
.source "DiscussionFeed.java"


# instance fields
.field private a:Ladc;

.field private a:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field

.field private a:Ljava/util/List;
    .annotation runtime Laes;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LaeW;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
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
            "LaeW;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lafc;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ladc;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lafc;->a:Ladc;

    .line 170
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lafc;->a:Ljava/lang/String;

    return-object v0
.end method
