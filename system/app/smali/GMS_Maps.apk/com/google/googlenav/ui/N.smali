.class Lcom/google/googlenav/ui/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/google/googlenav/ui/n;->a:Ljava/lang/String;

    .line 351
    iput-object p2, p0, Lcom/google/googlenav/ui/n;->b:Ljava/util/List;

    .line 352
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lcom/google/googlenav/ui/n;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 355
    new-instance v0, Lcom/google/googlenav/ui/n;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/n;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
