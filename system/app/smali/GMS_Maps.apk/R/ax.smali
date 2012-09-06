.class Lr/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/at;


# instance fields
.field final synthetic a:Lr/as;

.field private b:Ln/al;

.field private c:I


# direct methods
.method public constructor <init>(Lr/as;Ln/al;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lr/ax;->a:Lr/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lr/ax;->b:Ln/al;

    .line 200
    iput p3, p0, Lr/ax;->c:I

    .line 201
    return-void
.end method


# virtual methods
.method public a(Lr/t;)V
    .registers 5
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lr/ax;->a:Lr/as;

    invoke-static {v0}, Lr/as;->a(Lr/as;)Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    iget-object v1, p0, Lr/ax;->b:Ln/al;

    iget v2, p0, Lr/ax;->c:I

    invoke-interface {p1, v0, v1, v2}, Lr/t;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/al;I)V

    .line 206
    return-void
.end method
