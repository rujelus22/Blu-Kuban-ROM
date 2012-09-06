.class Lcom/google/android/maps/driveabout/vector/cB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/dd;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/cy;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cy;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cB;->a:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 274
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->a:Lcom/google/android/maps/driveabout/vector/cy;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/cy;)Ly/c;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 275
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cB;->a:Lcom/google/android/maps/driveabout/vector/cy;

    monitor-enter v1

    .line 276
    :try_start_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cB;->a:Lcom/google/android/maps/driveabout/vector/cy;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/cy;Z)Z

    .line 277
    monitor-exit v1

    .line 279
    :cond_13
    return v3

    .line 277
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method
