.class Lcom/google/android/maps/driveabout/app/dG;
.super Ljava/lang/Object;

# interfaces
.implements Lx/aw;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dG;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/dD;Lcom/google/android/maps/driveabout/app/dE;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dG;-><init>(Lcom/google/android/maps/driveabout/app/dD;)V

    return-void
.end method


# virtual methods
.method public a(Lt/af;ILt/ae;)V
    .registers 8

    if-nez p3, :cond_b

    const/4 v0, 0x1

    :goto_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dG;->a:Lcom/google/android/maps/driveabout/app/dD;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;IILjava/lang/Object;)V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_3
.end method
