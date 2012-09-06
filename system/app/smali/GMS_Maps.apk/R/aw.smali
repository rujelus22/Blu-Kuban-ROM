.class Lr/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/at;


# instance fields
.field final synthetic a:Lr/as;

.field private b:I


# direct methods
.method public constructor <init>(Lr/as;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lr/aw;->a:Lr/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p2, p0, Lr/aw;->b:I

    .line 242
    return-void
.end method


# virtual methods
.method public a(Lr/t;)V
    .registers 4
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lr/aw;->a:Lr/as;

    invoke-static {v0}, Lr/as;->a(Lr/as;)Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    iget v1, p0, Lr/aw;->b:I

    invoke-interface {p1, v0, v1}, Lr/t;->a(Lcom/google/android/maps/driveabout/vector/dg;I)V

    .line 247
    return-void
.end method
