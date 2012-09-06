.class Lcom/google/android/maps/driveabout/app/V;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/maps/driveabout/app/U;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/U;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 955
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/V;->b:Lcom/google/android/maps/driveabout/app/U;

    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/app/V;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/V;->b:Lcom/google/android/maps/driveabout/app/U;

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/V;->a:Z

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/U;->a(Lcom/google/android/maps/driveabout/app/U;Z)V

    .line 959
    return-void
.end method
