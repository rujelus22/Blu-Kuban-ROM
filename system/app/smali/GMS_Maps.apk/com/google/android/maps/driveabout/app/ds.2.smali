.class Lcom/google/android/maps/driveabout/app/dS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/f;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 2
    .parameter

    .prologue
    .line 926
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dS;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/e;Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 929
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dS;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;)Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Ls/q;->b(Lcom/google/android/maps/driveabout/vector/d;)V

    .line 930
    return-void
.end method
