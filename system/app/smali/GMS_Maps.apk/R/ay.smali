.class Lr/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/at;


# instance fields
.field final synthetic a:Lr/as;

.field private b:Ln/am;

.field private c:I


# direct methods
.method public constructor <init>(Lr/as;Ln/am;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lr/ay;->a:Lr/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lr/ay;->b:Ln/am;

    .line 215
    iput p3, p0, Lr/ay;->c:I

    .line 216
    return-void
.end method


# virtual methods
.method public a(Lr/t;)V
    .registers 5
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lr/ay;->a:Lr/as;

    invoke-static {v0}, Lr/as;->a(Lr/as;)Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    iget-object v1, p0, Lr/ay;->b:Ln/am;

    iget v2, p0, Lr/ay;->c:I

    invoke-interface {p1, v0, v1, v2}, Lr/t;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;I)V

    .line 221
    return-void
.end method
