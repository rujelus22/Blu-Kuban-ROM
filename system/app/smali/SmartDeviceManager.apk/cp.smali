.class public final Lcp;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private device:Lco;

.field private features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDevice()Lco;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcp;->device:Lco;

    return-object v0
.end method

.method public final getFeatures()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcp;->features:Ljava/util/Map;

    return-object v0
.end method

.method public final setDevice(Lco;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcp;->device:Lco;

    .line 24
    return-void
.end method

.method public final setFeatures(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcp;->features:Ljava/util/Map;

    .line 32
    return-void
.end method
