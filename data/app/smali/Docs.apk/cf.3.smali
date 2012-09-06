.class Lcf;
.super LcL;
.source "ApplicationModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LcL",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Landroid/app/Activity;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 49
    const-class v0, Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;

    const-class v1, Lcom/google/android/apps/docs/app/HomeScreenActivity;

    invoke-direct {p0, p1, v0, v1}, LcL;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    return-void
.end method
