.class public final LaqQ;
.super Ljava/lang/Object;
.source "StaticInjectionRequest.java"

# interfaces
.implements Laqm;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "source"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LaqQ;->a:Ljava/lang/Object;

    .line 42
    const-string v0, "type"

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, LaqQ;->a:Ljava/lang/Class;

    .line 43
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, LaqQ;->a:Ljava/lang/Object;

    return-object v0
.end method
