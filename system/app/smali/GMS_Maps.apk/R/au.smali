.class Lr/au;
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
    .line 250
    iput-object p1, p0, Lr/au;->a:Lr/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lr/as;Lr/ar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lr/au;-><init>(Lr/as;)V

    return-void
.end method


# virtual methods
.method public a(Lr/t;)V
    .registers 3
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lr/au;->a:Lr/as;

    invoke-static {v0}, Lr/as;->a(Lr/as;)Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    invoke-interface {p1, v0}, Lr/t;->a(Lcom/google/android/maps/driveabout/vector/dg;)V

    .line 254
    return-void
.end method
