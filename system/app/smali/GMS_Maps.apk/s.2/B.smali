.class Ls/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ls/a;


# direct methods
.method constructor <init>(Ls/a;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Ls/b;->a:Ls/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 87
    invoke-static {}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 89
    const-string v1, "0"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;I)V

    .line 91
    return-void
.end method
