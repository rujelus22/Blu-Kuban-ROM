.class Lr/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/at;


# instance fields
.field final synthetic a:Lr/as;


# direct methods
.method private constructor <init>(Lr/as;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lr/av;->a:Lr/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lr/as;Lr/ar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lr/av;-><init>(Lr/as;)V

    return-void
.end method


# virtual methods
.method public a(Lr/t;)V
    .registers 3
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lr/av;->a:Lr/as;

    invoke-static {v0}, Lr/as;->a(Lr/as;)Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    invoke-interface {p1, v0}, Lr/t;->b(Lcom/google/android/maps/driveabout/vector/dg;)V

    .line 261
    return-void
.end method
