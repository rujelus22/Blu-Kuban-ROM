.class Lcom/google/android/maps/driveabout/app/ce;
.super Lag/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lag/a;

.field final synthetic b:Lag/g;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/cd;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cd;Lag/a;Lag/g;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ce;->c:Lcom/google/android/maps/driveabout/app/cd;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ce;->a:Lag/a;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/ce;->b:Lag/g;

    invoke-direct {p0}, Lag/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ce;->a:Lag/a;

    invoke-interface {v0}, Lag/a;->c()V

    .line 186
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ce;->b:Lag/g;

    if-eqz v0, :cond_e

    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ce;->b:Lag/g;

    invoke-virtual {v0, p1}, Lag/g;->a(Lag/c;)V

    .line 189
    :cond_e
    return-void
.end method
