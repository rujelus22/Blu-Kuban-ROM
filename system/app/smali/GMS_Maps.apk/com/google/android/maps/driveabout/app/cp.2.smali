.class public Lcom/google/android/maps/driveabout/app/cp;
.super Ljava/lang/Object;

# interfaces
.implements Law/e;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cp;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Law/a;Law/f;)Law/d;
    .registers 7

    new-instance v0, Lcom/google/android/maps/driveabout/app/cn;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cp;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/maps/driveabout/app/cq;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/maps/driveabout/app/cq;-><init>(Lcom/google/android/maps/driveabout/app/cp;Law/a;Law/f;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/cn;-><init>(Landroid/content/Context;Law/f;Lcom/google/android/maps/driveabout/app/co;)V

    return-object v0
.end method
