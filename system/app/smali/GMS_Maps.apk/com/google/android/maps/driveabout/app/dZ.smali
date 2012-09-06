.class Lcom/google/android/maps/driveabout/app/dz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dw;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dw;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dz;->a:Lcom/google/android/maps/driveabout/app/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dz;->a:Lcom/google/android/maps/driveabout/app/dw;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dw;->b(Lcom/google/android/maps/driveabout/app/dw;)V

    .line 227
    return-void
.end method
