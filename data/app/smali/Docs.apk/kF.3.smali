.class public LkF;
.super Ljava/lang/Object;
.source "ManifestImpl.java"

# interfaces
.implements LkE;


# instance fields
.field private final a:J

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/Map;
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

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;J)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, LkF;->a:Ljava/lang/String;

    .line 22
    iput-object p1, p0, LkF;->a:Ljava/util/Set;

    .line 23
    iput-object p2, p0, LkF;->b:Ljava/util/Set;

    .line 24
    iput-object p3, p0, LkF;->a:Ljava/util/Map;

    .line 25
    iput-wide p5, p0, LkF;->a:J

    .line 26
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 50
    iget-wide v0, p0, LkF;->a:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, LkF;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Map;
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
    .line 40
    iget-object v0, p0, LkF;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, LkF;->a:Ljava/util/Set;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, LkF;->b:Ljava/util/Set;

    return-object v0
.end method
