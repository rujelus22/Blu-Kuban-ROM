.class public abstract Lbb/B;
.super Ljava/lang/Object;


# static fields
.field private static a:Lbb/B;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lbb/B;)V
    .registers 1

    sput-object p0, Lbb/B;->a:Lbb/B;

    return-void
.end method

.method public static l()Lbb/B;
    .registers 1

    sget-object v0, Lbb/B;->a:Lbb/B;

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/content/res/Configuration;)Z
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()Lcom/google/android/maps/rideabout/view/h;
.end method

.method public abstract h()Lcom/google/android/maps/rideabout/view/i;
.end method

.method public abstract i()Z
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method
