.class Lcom/google/android/maps/driveabout/app/dT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/T;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 2
    .parameter

    .prologue
    .line 933
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dT;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 3
    .parameter

    .prologue
    .line 936
    if-eqz p1, :cond_f

    .line 937
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dT;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;)Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls/q;->c(Lcom/google/android/maps/driveabout/vector/d;)V

    .line 939
    :cond_f
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 2
    .parameter

    .prologue
    .line 943
    return-void
.end method
