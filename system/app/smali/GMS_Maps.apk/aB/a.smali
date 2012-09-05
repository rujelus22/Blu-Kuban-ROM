.class public LaB/a;
.super LaB/h;


# static fields
.field public static final a:LaB/a;

.field public static final b:Lcom/google/android/maps/driveabout/vector/cu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaB/a;

    invoke-direct {v0}, LaB/a;-><init>()V

    sput-object v0, LaB/a;->a:LaB/a;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cs;->c:Lcom/google/android/maps/driveabout/vector/cu;

    sput-object v0, LaB/a;->b:Lcom/google/android/maps/driveabout/vector/cu;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LaB/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "David D."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/D;)V
    .registers 4

    invoke-super {p0, p1}, LaB/h;->a(Lcom/google/googlenav/ui/D;)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->h()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v1

    instance-of v1, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->h()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->j()V

    :cond_1c
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/D;Z)V
    .registers 8

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, LaB/h;->a(Lcom/google/googlenav/ui/D;Z)V

    if-nez p2, :cond_26

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->h()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v1

    instance-of v1, v1, Lcom/google/googlenav/ui/android/AndroidVectorView;

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->h()Lcom/google/googlenav/ui/android/BaseAndroidView;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    const/4 v1, 0x2

    const v2, 0x3e4ccccd

    const/4 v3, 0x0

    sget-object v4, LaB/a;->b:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(IFFLcom/google/android/maps/driveabout/vector/cu;)V

    :cond_26
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x59

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x58

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x21

    return v0
.end method
