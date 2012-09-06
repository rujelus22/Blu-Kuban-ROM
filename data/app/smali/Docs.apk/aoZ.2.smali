.class LaoZ;
.super Ljava/lang/Object;
.source "InjectorShell.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laqm;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaoZ;->a:Ljava/util/List;

    .line 72
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaoZ;->b:Ljava/util/List;

    return-void
.end method
