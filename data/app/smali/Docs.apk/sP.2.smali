.class final LsP;
.super Ljava/lang/Object;
.source "SortKind.java"

# interfaces
.implements LsD;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/apps/docs/RoboFragmentActivity;J)LsB;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 22
    monitor-enter p0

    :try_start_1
    new-instance v0, LsI;

    invoke-direct {v0, p1}, LsI;-><init>(Lcom/google/android/apps/docs/RoboFragmentActivity;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
