.class Lcom/google/android/maps/driveabout/app/bx;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bw;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bw;)V
    .registers 2
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bx;->a:Lcom/google/android/maps/driveabout/app/bw;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bx;->a:Lcom/google/android/maps/driveabout/app/bw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bw;->i()V

    .line 506
    return-void
.end method
