.class public final Lbi;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field private mId:Ljava/lang/Integer;

.field private mResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lbi;->mId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getResources()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lbi;->mResources:Ljava/util/Map;

    return-object v0
.end method

.method public final setId(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lbi;->mId:Ljava/lang/Integer;

    .line 21
    return-void
.end method

.method public final setResources(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lbi;->mResources:Ljava/util/Map;

    .line 29
    return-void
.end method
