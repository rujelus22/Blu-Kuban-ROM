.class Lcom/google/android/maps/driveabout/app/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/Y;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/Y;)V
    .registers 2
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/Z;->a:Lcom/google/android/maps/driveabout/app/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Z;->a:Lcom/google/android/maps/driveabout/app/Y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/Y;->a(Lm/b;)V

    .line 596
    return-void
.end method
