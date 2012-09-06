.class Lcom/google/android/maps/driveabout/app/eq;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-class v0, Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/maps/driveabout/app/eq;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eq;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    .line 74
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    .line 80
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->g()Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eq;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-nez v1, :cond_1a

    .line 84
    sget-boolean v1, Lcom/google/android/maps/driveabout/app/eq;->a:Z

    if-nez v1, :cond_18

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_18
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eq;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    .line 87
    :cond_1a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eq;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    if-ne v0, v1, :cond_21

    .line 92
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 94
    :cond_21
    return-void
.end method
