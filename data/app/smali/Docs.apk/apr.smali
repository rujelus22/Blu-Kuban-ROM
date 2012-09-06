.class Lapr;
.super Ljava/lang/Object;
.source "ProcessedBindingData.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/internal/CreationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lapr;->a:Ljava/util/List;

    .line 32
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lapr;->b:Ljava/util/List;

    return-void
.end method
