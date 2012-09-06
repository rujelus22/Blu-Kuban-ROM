.class Lr/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/at;


# instance fields
.field final synthetic a:Lr/as;

.field private b:Ln/am;


# direct methods
.method public constructor <init>(Lr/as;Ln/am;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lr/az;->a:Lr/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p2, p0, Lr/az;->b:Ln/am;

    .line 229
    return-void
.end method


# virtual methods
.method public a(Lr/t;)V
    .registers 4
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lr/az;->a:Lr/as;

    invoke-static {v0}, Lr/as;->a(Lr/as;)Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    iget-object v1, p0, Lr/az;->b:Ln/am;

    invoke-interface {p1, v0, v1}, Lr/t;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)V

    .line 234
    return-void
.end method
