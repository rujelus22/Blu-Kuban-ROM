.class Lau/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/eg;


# instance fields
.field final synthetic a:Lau/a;


# direct methods
.method constructor <init>(Lau/a;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lau/d;->a:Lau/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 174
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v0

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    return v0
.end method
