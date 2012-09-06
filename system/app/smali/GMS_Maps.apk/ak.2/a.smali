.class public Lak/a;
.super Lak/i;
.source "SourceFile"


# static fields
.field public static final a:Lak/a;

.field public static final b:Lcom/google/android/maps/driveabout/vector/cT;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lak/a;

    invoke-direct {v0}, Lak/a;-><init>()V

    sput-object v0, Lak/a;->a:Lak/a;

    .line 26
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cR;->d:Lcom/google/android/maps/driveabout/vector/cT;

    sput-object v0, Lak/a;->b:Lcom/google/android/maps/driveabout/vector/cT;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lak/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    const-string v0, "David D."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/v;)V
    .registers 4
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lak/i;->a(Lcom/google/googlenav/ui/v;)V

    .line 64
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getBaseAndroidView()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v1

    instance-of v1, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;

    if-eqz v1, :cond_1c

    .line 66
    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getBaseAndroidView()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->l()V

    .line 68
    :cond_1c
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/v;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lak/i;->a(Lcom/google/googlenav/ui/v;Z)V

    .line 51
    if-nez p2, :cond_26

    .line 52
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getBaseAndroidView()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v1

    instance-of v1, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;

    if-eqz v1, :cond_26

    .line 54
    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getBaseAndroidView()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    const/4 v1, 0x2

    const v2, 0x3e4ccccd

    const/4 v3, 0x0

    sget-object v4, Lak/a;->b:Lcom/google/android/maps/driveabout/vector/cT;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(IFFLcom/google/android/maps/driveabout/vector/cT;)V

    .line 59
    :cond_26
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0x5c

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    const/16 v0, 0x5b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 45
    const/16 v0, 0x21

    return v0
.end method
