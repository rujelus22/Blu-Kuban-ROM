.class Lcom/google/android/maps/driveabout/app/cH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cG;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cG;)V
    .registers 2
    .parameter

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cH;->a:Lcom/google/android/maps/driveabout/app/cG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cH;->a:Lcom/google/android/maps/driveabout/app/cG;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/cG;->a(Lcom/google/android/maps/driveabout/app/cG;Z)V

    .line 1646
    return-void
.end method
