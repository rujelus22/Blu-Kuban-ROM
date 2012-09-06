.class LzZ;
.super Ljava/lang/Object;
.source "ImageCache.java"


# instance fields
.field a:I

.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LAa;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic a:LzW;

.field a:Z

.field b:Z


# direct methods
.method private constructor <init>(LzW;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object p1, p0, LzZ;->a:LzW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, LzZ;->a:Z

    .line 47
    iput-boolean v0, p0, LzZ;->b:Z

    .line 48
    iput v0, p0, LzZ;->a:I

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LzZ;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(LzW;LzX;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, LzZ;-><init>(LzW;)V

    return-void
.end method
